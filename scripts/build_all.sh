#!/usr/bin/env bash
# ============================================================================
#  Build song song tat ca cac phien ban firmware dong ho (10 cau hinh dong co)
#
#  Moi env chay 1 tien trinh `pio run -e <env>` rieng -> chay song song nhieu
#  env cung luc (nhanh hon nhieu so voi `pio run` chay tuan tu).
#
#  PlatformIO chay song song tren cung 1 du an thi thi thoang co the loi vi
#  tranh chap trang thai chung -> script tu BUILD LAI TUAN TU cac env loi.
#
#  Dung:
#     scripts/build_all.sh                 # song song = so core CPU
#     scripts/build_all.sh 8               # song song 8 tien trinh
#     scripts/build_all.sh 4 7.4BG         # 4 song song, dat ten file la 7.4BG
#
#  Ket qua: file hex gom ten env nam trong thu muc  hexout/
# ============================================================================
set -u

# ve thu muc goc du an (script nam trong scripts/)
cd "$(dirname "$0")/.." || exit 1

# Danh sach env: lay tu default_envs trong platformio.ini
ENVS=$(sed -n 's/^default_envs *= *//p' platformio.ini | tr ',' ' ')
[ -z "$ENVS" ] && ENVS="TT1ST TT2ST TT1DC TT2DC DR2ST DR3ST DR4ST DR2DC DR3DC DR4DC"

JOBS="${1:-$(nproc)}"

# Nhan version cho ten file: tham so 2, neu khong co thi lay tu platformio.ini
if [ "${2:-}" != "" ]; then
  VER="$2"
else
  VER=$(sed -n "s/^version *= *'\"\(.*\)\"'.*/\1/p" platformio.ini | sed 's/^_*//; s/_*$//')
  [ -z "$VER" ] && VER="build"
fi

PIO="$(command -v pio || echo pio)"
OUT="hexout"
mkdir -p "$OUT"
rm -f "$OUT"/rc_* "$OUT"/build_*.log

echo "==> Build cac env: $ENVS"
echo "==> Song song   : $JOBS tien trinh"
echo "==> Version      : $VER"
echo

build_one() {
  local e="$1"
  "$PIO" run -e "$e" > "$OUT/build_$e.log" 2>&1
  echo "$?" > "$OUT/rc_$e"
}

# Thu thap hex cho cac env da build; dat FAILED = danh sach env chua co hex
collect() {
  FAILED=""
  local e rc hex
  for e in $ENVS; do
    rc=$(cat "$OUT/rc_$e" 2>/dev/null || echo 1)
    hex=$(find .pio -path "*/$e/firmware.hex" 2>/dev/null | head -1)
    if [ "$rc" = "0" ] && [ -n "$hex" ]; then
      cp "$hex" "$OUT/DHCC_${VER}_${e}.hex"
    else
      FAILED="$FAILED $e"
    fi
  done
}

t0=$(date +%s)

# ---- Pass 1: build song song ----
for e in $ENVS; do
  while [ "$(jobs -rp | wc -l)" -ge "$JOBS" ]; do wait -n 2>/dev/null || wait; done
  build_one "$e" &
  echo "  khoi dong $e (pid $!)"
done
wait

# ---- Pass 2: build lai TUAN TU cac env loi (chong tranh chap khi song song) ----
collect
if [ -n "${FAILED// /}" ]; then
  echo
  echo "==> Build lai tuan tu cac env loi:${FAILED}"
  for e in $FAILED; do
    echo "   build lai $e ..."
    build_one "$e"
  done
  collect
fi

t1=$(date +%s)

echo
echo "==> Ket qua (tong $((t1 - t0))s):"
fail=0
for e in $ENVS; do
  if [ -f "$OUT/DHCC_${VER}_${e}.hex" ] && [ "$(cat "$OUT/rc_$e" 2>/dev/null)" = "0" ]; then
    printf "   [OK]   %-6s -> %s (%s)\n" "$e" "$OUT/DHCC_${VER}_${e}.hex" \
           "$(du -h "$OUT/DHCC_${VER}_${e}.hex" | cut -f1)"
  else
    printf "   [FAIL] %-6s  (xem %s)\n" "$e" "$OUT/build_$e.log"
    fail=1
  fi
done

echo
if [ "$fail" = "0" ]; then
  echo "==> TAT CA THANH CONG. File hex nam trong: $OUT/"
else
  echo "==> CO ENV BUILD LOI - xem log trong $OUT/"
fi
exit "$fail"
