// build_hex - Cong cu GUI build song song firmware dong ho (STC15 / PlatformIO)
//
// Bam doi build_hex.exe -> mo trinh duyet voi giao dien: bam BUILD de build
// tat ca env SONG SONG (co thanh tien do tung env), tu build lai env loi, gom
// firmware.hex ra thu muc hexout\.
//
// Yeu cau: da cai PlatformIO (lenh `pio`). Dat exe trong thu muc du an (cho co
// platformio.ini) hoac keo tha thu muc du an len exe.
package main

import (
	"encoding/json"
	"fmt"
	"net"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"runtime"
	"sort"
	"strconv"
	"strings"
	"sync"
	"time"
)

type envState struct {
	Name   string `json:"name"`
	Status string `json:"status"` // idle|building|ok|fail
	Secs   int    `json:"secs"`
}

type app struct {
	projectDir string
	pio        string
	version    string
	envs       []string

	mu       sync.Mutex
	states   map[string]*envState
	building bool
	summary  string
	subs     map[chan string]bool
}

func main() {
	jobsDefault := runtime.NumCPU()
	projectDir := ""
	for _, a := range os.Args[1:] {
		if st, err := os.Stat(a); err == nil && st.IsDir() {
			projectDir = a
		}
	}
	if projectDir == "" {
		projectDir = findProjectDir()
	}
	if projectDir == "" {
		fmt.Println("LOI: khong tim thay platformio.ini. Dat exe vao thu muc du an hoac keo tha thu muc len exe.")
		fmt.Print("\nNhan Enter de thoat...")
		fmt.Scanln()
		return
	}

	a := &app{
		projectDir: projectDir,
		pio:        findPio(),
		version:    readVersion(filepath.Join(projectDir, "platformio.ini")),
		envs:       readEnvs(filepath.Join(projectDir, "platformio.ini")),
		states:     map[string]*envState{},
		subs:       map[chan string]bool{},
	}
	for _, e := range a.envs {
		a.states[e] = &envState{Name: e, Status: "idle"}
	}

	mux := http.NewServeMux()
	mux.HandleFunc("/", a.handleIndex)
	mux.HandleFunc("/api/info", a.handleInfo)
	mux.HandleFunc("/api/build", a.handleBuild)
	mux.HandleFunc("/api/events", a.handleEvents)
	mux.HandleFunc("/api/open", a.handleOpen)

	ln, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		fmt.Println("LOI mo cong:", err)
		return
	}
	url := fmt.Sprintf("http://%s/?jobs=%d", ln.Addr().String(), jobsDefault)

	fmt.Println("========================================================")
	fmt.Println("  BUILD FIRMWARE - GIAO DIEN WEB")
	fmt.Println("========================================================")
	fmt.Println("  Du an :", projectDir)
	fmt.Println("  pio   :", a.pio)
	fmt.Println("  Mo trinh duyet tai:", url)
	fmt.Println("  (Neu khong tu mo, hay copy dia chi tren vao trinh duyet)")
	fmt.Println("========================================================")

	go openBrowser(url)
	http.Serve(ln, mux)
}

// ---------------- HTTP handlers ----------------

func (a *app) handleIndex(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/html; charset=utf-8")
	w.Write([]byte(indexHTML))
}

func (a *app) handleInfo(w http.ResponseWriter, r *http.Request) {
	a.mu.Lock()
	defer a.mu.Unlock()
	var sts []envState
	for _, e := range a.envs {
		sts = append(sts, *a.states[e])
	}
	writeJSON(w, map[string]any{
		"project":  a.projectDir,
		"pio":      a.pio,
		"version":  a.version,
		"envs":     sts,
		"building": a.building,
		"pioOk":    a.pio != "",
		"cores":    runtime.NumCPU(),
	})
}

func (a *app) handleBuild(w http.ResponseWriter, r *http.Request) {
	jobs, _ := strconv.Atoi(r.URL.Query().Get("jobs"))
	if jobs <= 0 {
		jobs = runtime.NumCPU()
	}
	a.mu.Lock()
	if a.building {
		a.mu.Unlock()
		http.Error(w, "dang build", http.StatusConflict)
		return
	}
	if a.pio == "" {
		a.mu.Unlock()
		http.Error(w, "khong tim thay pio", http.StatusBadRequest)
		return
	}
	a.building = true
	a.summary = ""
	for _, e := range a.envs {
		a.states[e].Status = "idle"
		a.states[e].Secs = 0
	}
	a.mu.Unlock()
	go a.runBuild(jobs)
	w.WriteHeader(http.StatusAccepted)
}

func (a *app) handleEvents(w http.ResponseWriter, r *http.Request) {
	fl, ok := w.(http.Flusher)
	if !ok {
		http.Error(w, "no flush", 500)
		return
	}
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")

	ch := make(chan string, 64)
	a.mu.Lock()
	a.subs[ch] = true
	// snapshot cho client vua ket noi
	var sts []envState
	for _, e := range a.envs {
		sts = append(sts, *a.states[e])
	}
	snap, _ := json.Marshal(map[string]any{"t": "snapshot", "envs": sts, "building": a.building, "summary": a.summary})
	a.mu.Unlock()
	fmt.Fprintf(w, "data: %s\n\n", snap)
	fl.Flush()

	defer func() {
		a.mu.Lock()
		delete(a.subs, ch)
		a.mu.Unlock()
	}()
	for {
		select {
		case <-r.Context().Done():
			return
		case msg := <-ch:
			fmt.Fprintf(w, "data: %s\n\n", msg)
			fl.Flush()
		}
	}
}

func (a *app) handleOpen(w http.ResponseWriter, r *http.Request) {
	openPath(filepath.Join(a.projectDir, "hexout"))
	w.WriteHeader(200)
}

// ---------------- Build logic ----------------

func (a *app) runBuild(jobs int) {
	start := time.Now()
	sem := make(chan struct{}, jobs)
	var wg sync.WaitGroup
	for _, e := range a.envs {
		e := e
		wg.Add(1)
		sem <- struct{}{}
		a.setStatus(e, "building", 0)
		go func() {
			defer wg.Done()
			defer func() { <-sem }()
			t := time.Now()
			ok := a.buildOne(e)
			a.setStatus(e, boolStatus(ok), int(time.Since(t).Seconds()))
		}()
	}
	wg.Wait()

	// build lai tuan tu cac env loi
	for _, e := range a.envs {
		if a.getStatus(e) != "ok" {
			a.setStatus(e, "building", 0)
			t := time.Now()
			ok := a.buildOne(e)
			a.setStatus(e, boolStatus(ok), int(time.Since(t).Seconds()))
		}
	}

	// gom hex
	nOK := 0
	outDir := filepath.Join(a.projectDir, "hexout")
	os.MkdirAll(outDir, 0o755)
	for _, e := range a.envs {
		if a.getStatus(e) == "ok" {
			if hex := findHex(a.projectDir, e); hex != "" {
				_ = copyFile(hex, filepath.Join(outDir, fmt.Sprintf("DHCC_%s_%s.hex", a.version, e)))
				nOK++
			}
		}
	}
	summary := fmt.Sprintf("Xong %d/%d env trong %s. Hex trong: %s", nOK, len(a.envs), time.Since(start).Round(time.Second), outDir)
	a.mu.Lock()
	a.building = false
	a.summary = summary
	a.mu.Unlock()
	msg, _ := json.Marshal(map[string]any{"t": "finished", "ok": nOK, "total": len(a.envs), "summary": summary})
	a.broadcast(string(msg))
}

func (a *app) buildOne(env string) bool {
	outDir := filepath.Join(a.projectDir, "hexout")
	os.MkdirAll(outDir, 0o755)
	lf, _ := os.Create(filepath.Join(outDir, "build_"+env+".log"))
	cmd := exec.Command(a.pio, "run", "-e", env)
	cmd.Dir = a.projectDir
	cmd.Env = append(os.Environ(), "PLATFORMIO_NO_ANSI=true")
	if lf != nil {
		cmd.Stdout = lf
		cmd.Stderr = lf
		defer lf.Close()
	}
	return cmd.Run() == nil
}

func (a *app) setStatus(env, status string, secs int) {
	a.mu.Lock()
	s := a.states[env]
	s.Status = status
	if secs > 0 {
		s.Secs = secs
	}
	a.mu.Unlock()
	msg, _ := json.Marshal(map[string]any{"t": "env", "name": env, "status": status, "secs": secs})
	a.broadcast(string(msg))
}

func (a *app) getStatus(env string) string {
	a.mu.Lock()
	defer a.mu.Unlock()
	return a.states[env].Status
}

func (a *app) broadcast(msg string) {
	a.mu.Lock()
	defer a.mu.Unlock()
	for ch := range a.subs {
		select {
		case ch <- msg:
		default:
		}
	}
}

// ---------------- helpers ----------------

func boolStatus(ok bool) string {
	if ok {
		return "ok"
	}
	return "fail"
}

func writeJSON(w http.ResponseWriter, v any) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(v)
}

func findHex(dir, env string) string {
	root := filepath.Join(dir, ".pio", "build")
	var found string
	filepath.WalkDir(root, func(p string, d os.DirEntry, err error) error {
		if err != nil || found != "" {
			return nil
		}
		if !d.IsDir() && d.Name() == "firmware.hex" && filepath.Base(filepath.Dir(p)) == env {
			found = p
		}
		return nil
	})
	return found
}

func findProjectDir() string {
	var cands []string
	if wd, err := os.Getwd(); err == nil {
		cands = append(cands, wd)
	}
	if exe, err := os.Executable(); err == nil {
		cands = append(cands, filepath.Dir(exe))
	}
	for _, base := range cands {
		d := base
		for i := 0; i < 4; i++ {
			if fileExists(filepath.Join(d, "platformio.ini")) {
				return d
			}
			parent := filepath.Dir(d)
			if parent == d {
				break
			}
			d = parent
		}
	}
	return ""
}

func findPio() string {
	for _, n := range []string{"pio", "platformio"} {
		if p, err := exec.LookPath(n); err == nil {
			return p
		}
	}
	home, _ := os.UserHomeDir()
	for _, g := range []string{
		filepath.Join(home, ".platformio", "penv", "Scripts", "pio.exe"),
		filepath.Join(home, ".platformio", "penv", "bin", "pio"),
	} {
		if fileExists(g) {
			return g
		}
	}
	return ""
}

func readEnvs(ini string) []string {
	txt, err := os.ReadFile(ini)
	if err != nil {
		return nil
	}
	re := regexp.MustCompile(`(?m)^\s*default_envs\s*=\s*(.+)$`)
	if m := re.FindStringSubmatch(string(txt)); len(m) == 2 {
		var out []string
		for _, e := range strings.Split(m[1], ",") {
			if e = strings.TrimSpace(e); e != "" {
				out = append(out, e)
			}
		}
		if len(out) > 0 {
			return out
		}
	}
	reEnv := regexp.MustCompile(`(?m)^\s*\[env:([^\]]+)\]`)
	var out []string
	for _, mm := range reEnv.FindAllStringSubmatch(string(txt), -1) {
		if mm[1] != "TEST" {
			out = append(out, mm[1])
		}
	}
	sort.Strings(out)
	return out
}

func readVersion(ini string) string {
	txt, err := os.ReadFile(ini)
	if err != nil {
		return "build"
	}
	re := regexp.MustCompile(`(?m)^\s*version\s*=\s*'?"?([^"']+)"?'?`)
	if m := re.FindStringSubmatch(string(txt)); len(m) == 2 {
		return strings.Trim(m[1], "_")
	}
	return "build"
}

func copyFile(src, dst string) error {
	in, err := os.ReadFile(src)
	if err != nil {
		return err
	}
	return os.WriteFile(dst, in, 0o644)
}

func fileExists(p string) bool {
	st, err := os.Stat(p)
	return err == nil && !st.IsDir()
}

func openBrowser(url string) {
	time.Sleep(400 * time.Millisecond)
	switch runtime.GOOS {
	case "windows":
		exec.Command("cmd", "/c", "start", "", url).Start()
	case "darwin":
		exec.Command("open", url).Start()
	default:
		exec.Command("xdg-open", url).Start()
	}
}

func openPath(p string) {
	switch runtime.GOOS {
	case "windows":
		exec.Command("explorer", p).Start()
	case "darwin":
		exec.Command("open", p).Start()
	default:
		exec.Command("xdg-open", p).Start()
	}
}

const indexHTML = `<!doctype html><html lang="vi"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Build Firmware Dong Ho</title>
<style>
:root{--bg:#0f1720;--card:#17222e;--mut:#8aa0b3;--ok:#2ecc71;--fail:#e74c3c;--run:#f39c12;--acc:#3aa0ff}
*{box-sizing:border-box}body{margin:0;font:15px/1.5 system-ui,Segoe UI,Arial;background:var(--bg);color:#e7eef5}
.wrap{max-width:760px;margin:0 auto;padding:22px}
h1{font-size:20px;margin:0 0 4px}.sub{color:var(--mut);font-size:13px;margin-bottom:16px;word-break:break-all}
.bar{display:flex;gap:10px;align-items:center;flex-wrap:wrap;margin:14px 0}
button{background:var(--acc);color:#031018;border:0;border-radius:8px;padding:10px 18px;font-weight:700;cursor:pointer}
button:disabled{opacity:.5;cursor:default}button.ghost{background:#24333f;color:#cfe0ee}
select{background:#24333f;color:#cfe0ee;border:0;border-radius:8px;padding:9px}
.grid{display:grid;gap:8px}
.row{display:grid;grid-template-columns:70px 1fr 74px;gap:10px;align-items:center;background:var(--card);border-radius:9px;padding:9px 12px}
.name{font-weight:700}.track{height:8px;background:#0c141c;border-radius:6px;overflow:hidden}
.fill{height:100%;width:0;transition:width .3s;background:var(--acc)}
.badge{justify-self:end;font-size:12px;font-weight:700;padding:3px 8px;border-radius:20px;background:#24333f;color:var(--mut)}
.b-building{background:rgba(243,156,18,.15);color:var(--run)}.b-ok{background:rgba(46,204,113,.15);color:var(--ok)}
.b-fail{background:rgba(231,76,60,.15);color:var(--fail)}
.msg{margin-top:14px;padding:11px 14px;border-radius:9px;background:#12303f;color:#bfe0f2;display:none}
.warn{background:#3a2020;color:#ffb4b4}
.prog{color:var(--mut);font-size:13px;margin-left:auto}
</style></head><body><div class="wrap">
<h1>Build Firmware Dong Ho</h1>
<div class="sub" id="sub">...</div>
<div class="bar">
  <button id="go">▶ BUILD SONG SONG</button>
  <label style="color:var(--mut)">Song song
    <select id="jobs"></select>
  </label>
  <button class="ghost" id="openbtn">📁 Mo thu muc hex</button>
  <span class="prog" id="prog"></span>
</div>
<div class="grid" id="grid"></div>
<div class="msg" id="msg"></div>
</div><script>
let ENVS=[],building=false;
const $=s=>document.querySelector(s);
function badge(st){const m={idle:'cho',building:'dang build',ok:'OK',fail:'LOI'};return m[st]||st}
function render(){
  const g=$('#grid');g.innerHTML='';
  ENVS.forEach(e=>{
    const row=document.createElement('div');row.className='row';row.id='r-'+e.name;
    const pct=e.status==='ok'?100:e.status==='building'?60:e.status==='fail'?100:0;
    const col=e.status==='fail'?'var(--fail)':e.status==='ok'?'var(--ok)':'var(--acc)';
    row.innerHTML='<div class="name">'+e.name+'</div>'+
      '<div class="track"><div class="fill" style="width:'+pct+'%;background:'+col+'"></div></div>'+
      '<div class="badge b-'+e.status+'">'+badge(e.status)+'</div>';
    g.appendChild(row);
  });
  updateProg();
}
function updateRow(name,status,secs){
  const e=ENVS.find(x=>x.name===name);if(!e)return;e.status=status;if(secs)e.secs=secs;
  const row=$('#r-'+name);if(!row)return;
  const pct=status==='ok'?100:status==='building'?60:status==='fail'?100:0;
  const col=status==='fail'?'var(--fail)':status==='ok'?'var(--ok)':'var(--acc)';
  row.querySelector('.fill').style.width=pct+'%';row.querySelector('.fill').style.background=col;
  const b=row.querySelector('.badge');b.className='badge b-'+status;b.textContent=badge(status)+(secs?' '+secs+'s':'');
  updateProg();
}
function updateProg(){
  const done=ENVS.filter(e=>e.status==='ok').length;
  const fail=ENVS.filter(e=>e.status==='fail').length;
  $('#prog').textContent=building?('Dang build... '+done+'/'+ENVS.length+' xong'):(done||fail?done+'/'+ENVS.length+' OK':'');
}
function setBuilding(b){building=b;$('#go').disabled=b;$('#go').textContent=b?'⏳ DANG BUILD...':'▶ BUILD SONG SONG';}
function showMsg(t,warn){const m=$('#msg');m.textContent=t;m.className='msg'+(warn?' warn':'');m.style.display='block';}
fetch('/api/info').then(r=>r.json()).then(d=>{
  ENVS=d.envs;
  $('#sub').textContent='Du an: '+d.project+'  |  Version: '+d.version+'  |  '+d.cores+' core';
  const js=$('#jobs');for(let i=1;i<=Math.max(8,d.cores);i++){const o=document.createElement('option');o.value=i;o.textContent=i;if(i===d.cores)o.selected=true;js.appendChild(o);}
  render();
  if(!d.pioOk)showMsg('Khong tim thay pio tren may. Hay cai PlatformIO hoac them pio vao PATH.',true);
});
$('#go').onclick=()=>{
  setBuilding(true);ENVS.forEach(e=>updateRow(e.name,'idle'));$('#msg').style.display='none';
  fetch('/api/build?jobs='+$('#jobs').value,{method:'POST'}).then(r=>{if(r.status===409)showMsg('Dang build roi.',true);});
};
$('#openbtn').onclick=()=>fetch('/api/open',{method:'POST'});
const es=new EventSource('/api/events');
es.onmessage=ev=>{const d=JSON.parse(ev.data);
  if(d.t==='snapshot'){if(d.envs)ENVS=d.envs;render();setBuilding(d.building);if(d.summary)showMsg(d.summary);}
  else if(d.t==='env'){setBuilding(true);updateRow(d.name,d.status,d.secs);}
  else if(d.t==='finished'){setBuilding(false);showMsg(d.summary,d.ok!==d.total);}
};
</script></body></html>`
