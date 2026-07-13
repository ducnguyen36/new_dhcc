# WALKTHROUGH TOÀN BỘ — THANG MÁY GIA ĐÌNH DÙNG BIẾN TẦN

**Firmware:** `_THANGMAY_3.0A__` · **Branch:** `thang_bien_tan` · **MCU:** STC15F2K60S2 (bo điều khiển đồng hồ cũ)

Tài liệu này mô tả **toàn bộ hệ thống** từ phần cứng, đấu nối, nguyên lý, cấu hình,
lắp đặt – căn chỉnh, đến vận hành và xử lý sự cố. Phần thông số biến tần chi tiết
cho từng hãng xem thêm **`docs/BIEN_TAN.md`**.

---

## MỤC LỤC

1. [Tổng quan hệ thống](#1-tổng-quan-hệ-thống)
2. [Vật tư cần chuẩn bị](#2-vật-tư-cần-chuẩn-bị)
3. [Sơ đồ chân & đấu nối](#3-sơ-đồ-chân--đấu-nối)
4. [Nguyên lý hoạt động](#4-nguyên-lý-hoạt-động)
5. [Máy trạng thái firmware](#5-máy-trạng-thái-firmware)
6. [Cấu hình firmware](#6-cấu-hình-firmware)
7. [Cài đặt biến tần](#7-cài-đặt-biến-tần)
8. [Build & nạp firmware](#8-build--nạp-firmware)
9. [Quy trình lắp đặt & căn chỉnh](#9-quy-trình-lắp-đặt--căn-chỉnh)
10. [Checklist nghiệm thu](#10-checklist-nghiệm-thu)
11. [Hướng dẫn sử dụng hàng ngày](#11-hướng-dẫn-sử-dụng-hàng-ngày)
12. [Màn hình LCD & ý nghĩa](#12-màn-hình-lcd--ý-nghĩa)
13. [Xử lý sự cố](#13-xử-lý-sự-cố)
14. [An toàn & giới hạn](#14-an-toàn--giới-hạn)

---

## 1. Tổng quan hệ thống

```
                        ┌─────────────────────┐
   Bàn phím ma trận ───►│                     │───► Relay LÊN ────► FWD ┐
   (7 dây, trong buồng) │   BO ĐIỀU KHIỂN     │───► Relay XUỐNG ──► REV │ BIẾN TẦN ──► MOTOR
   Nút gọi 2 dây ──────►│   (STC15 + LCD)     │───► Relay TỐC ĐỘ ─► SP  ┘  3 PHA      KÉO
                        │                     │
   CT đáy (cam1) ──────►│  - đếm tầng         │───► Relay MỞ CỬA ──┐ MOTOR
   CB tầng (cam2) ─────►│  - 2 cấp tốc độ     │───► Relay ĐÓNG CỬA ┘ CỬA CABIN
   CB giảm tốc lên ────►│  - cửa tự động      │
   CB giảm tốc xuống ──►│  - loa thông báo    │───► Loa (MP3 + amply)
   Chuỗi cửa tầng ─────►│  - SMS báo lỗi      │───► SMS (SIM A7680C)
   CT cửa mở/đóng ─────►│                     │
                        └─────────────────────┘
```

Kiến trúc: bo điều khiển ra lệnh **mức tín hiệu khô (relay)**; toàn bộ động lực
(tăng/giảm tốc, moment, phanh) do **biến tần** đảm nhiệm. Bo đếm vấu tầng để biết
vị trí, chọn thời điểm giảm tốc và dừng.

---

## 2. Vật tư cần chuẩn bị

| # | Hạng mục | Số lượng | Ghi chú |
|---|---|---|---|
| 1 | Bo điều khiển đồng hồ (STC15 + LCD 16x2) | 1 | Tận dụng bo cũ |
| 2 | Biến tần 3 pha phù hợp công suất motor | 1 | Mitsubishi/LS/Delta/INVT/Yaskawa… |
| 3 | Công tắc hành trình **đáy** | 1 | Tại tầng trệt |
| 4 | Công tắc/cảm biến **tầng** + vấu | SO_TANG−1 | Mỗi tầng trừ trệt |
| 5 | Công tắc/cảm biến **giảm tốc** + vấu | 2×(SO_TANG−1)* | Dưới + trên mỗi tầng đích |
| 6 | Keypad màng ma trận 3×4 | 1 | 7 dây |
| 7 | Nút gọi tầng (ngoài buồng) | theo tầng | Song song phím cùng tầng của ma trận (§3.3) |
| 8 | Motor cửa cabin + 2 công tắc mở-hết/đóng-hết | 1 bộ | Nếu dùng cửa tự động |
| 9 | Tiếp điểm khóa liên động cửa tầng | theo tầng | Đấu nối tiếp thành chuỗi |
| 10 | Module DFPlayer + thẻ nhớ + amply/loa | 1 bộ | Tùy chọn (thông báo) |
| 11 | Module SIM A7680C + SIM | 1 | Tùy chọn (SMS báo lỗi) |
| 12 | Contactor phanh (điều khiển từ relay biến tần) | 1 | Xem BIEN_TAN.md §5 |

\* Cảm biến giảm tốc: 2 **ngõ vào** (lên/xuống), các công tắc cùng chiều đấu song song.
Tất cả cảm biến hành trình phải **cùng kiểu NO hoặc NC** — quyết định bản firmware
`THANG_NO` / `THANG_NC`.

---

## 3. Sơ đồ chân & đấu nối

### 3.1 Bảng chân đầy đủ

| Nhóm | Tín hiệu | Chân | Ghi chú |
|---|---|---|---|
| **Vị trí** | Công tắc ĐÁY | P3.6 (cam 1) | Mốc chuẩn tầng trệt |
| | Cảm biến TẦNG | P3.7 (cam 2) | Vấu mỗi tầng, **trừ trệt** |
| | Giảm tốc chiều LÊN | P3.2 | Vấu **dưới** mỗi tầng |
| | Giảm tốc chiều XUỐNG | P1.0 | Vấu **trên** mỗi tầng |
| **Cửa** | Chuỗi cửa tầng | P3.3 | Nối tiếp, kín = GND |
| | CT cửa cabin MỞ hết | P1.1 | Tác động = GND |
| | CT cửa cabin ĐÓNG hết | P1.3 | Tác động = GND |
| **Phím** | Ma trận cột C0..C2 | P2.4, P2.5, P2.6 | Xuất quét |
| | Ma trận hàng R0..R3 | P1.4, P1.5, P1.6, P1.7 | Đọc, kéo lên nội |
| | Nút gọi tại các tầng | (ma trận) | Song song phím cùng tầng — xem §3.3 |
| | Nút phụ LÊN (tùy chọn) | P3.5 | Nhích 1 tầng / dừng khẩn khi đang xuống |
| | Nút phụ XUỐNG (tùy chọn) | P3.4 | Nhích 1 tầng / dừng khẩn khi đang lên / về chuẩn |
| **Ra biến tần** | Relay LÊN | P2.1 | → FWD |
| | Relay XUỐNG | P2.2 | → REV |
| | Relay TỐC ĐỘ CAO | P2.3 | → đầu vào đa cấp tốc độ |
| **Ra cửa** | Relay MỞ cửa | P2.7 | → motor cửa chiều mở |
| | Relay ĐÓNG cửa | P4.4 | → motor cửa chiều đóng |
| **Loa** | UART2 MP3 | P4.6 / P4.7 | Cổng MP3 có sẵn |
| | BUSY MP3 | P1.2 | 1 = đang phát |
| | Relay amply | P4.2 | Tự bật khi phát |
| **SIM** | UART1 A7680C | P3.0 / P3.1 | Cổng SIM có sẵn |
| | Nguồn SIM | P2.0 | Bo tự bật |

Mọi định nghĩa chân nằm trong `src/true.h`.

### 3.2 Bố trí vấu dọc hố thang (ví dụ 3 tầng)

```
   TẦNG 2 ─────▓── vấu TẦNG (cam 2)
            ───▽── vấu GIẢM TỐC LÊN (P3.2)   ← cách sàn ~0.8–1m (xem §9)
            ...
            ───△── vấu GIẢM TỐC XUỐNG (P1.0) ← cách sàn tầng 1 ~0.8–1m
   TẦNG 1 ─────▓── vấu TẦNG (cam 2)
            ───▽── vấu GIẢM TỐC LÊN
            ...
            ───△── vấu GIẢM TỐC XUỐNG (trên trệt)
   TRỆT  ──────█── CÔNG TẮC ĐÁY (cam 1) — KHÔNG đặt vấu tầng ở trệt!
```

- Các vấu giảm tốc chiều LÊN đấu **song song** nhau về P3.2; chiều XUỐNG song song về P1.0.
- Cabin mang cần gạt/cảm biến; vấu gắn trên rail tại từng vị trí.

### 3.3 Bàn phím ma trận (trong buồng) + nút gọi tầng

```
            C0=P2.4   C1=P2.5   C2=P2.6
R0=P1.4      TRỆT      TẦNG 1    TẦNG 2
R1=P1.5      TẦNG 3    TẦNG 4    TẦNG 5
R2=P1.6      TẦNG 6    TẦNG 7    TẦNG 8
R3=P1.7      MỞ CỬA    ĐÓNG CỬA  (dự phòng)
```

Keypad màng 3×4 thông dụng đấu thẳng: 3 dây cột + 4 dây hàng. Chỉ hiện dùng
số phím tầng = `SO_TANG`; phím tầng ≥ `SO_TANG` bị bỏ qua.

**Nút gọi tại các tầng: đấu SONG SONG với phím cùng tầng của ma trận** (nối vào
đúng **giao điểm hàng–cột** đó tại bo). Bo không phân biệt phím buồng hay nút
gọi — bấm nút gọi tầng k, thang chạy về đúng tầng k; đang đậu tại k thì mở cửa.
**Không tốn thêm ngõ vào nào.**

Ví dụ nhà 6 tầng: toàn bộ 6 nút gọi chỉ cần **5 sợi dây trục** dọc hố
(R0, R1, C0, C1, C2), mỗi tầng câu nút vào đúng cặp:

```
Trục 5 dây: ── R0 ── R1 ── C0 ── C1 ── C2 ──
Tầng 5: nút bắc giữa R1–C2      Tầng 2: nút bắc giữa R0–C2
Tầng 4: nút bắc giữa R1–C1      Tầng 1: nút bắc giữa R0–C1
Tầng 3: nút bắc giữa R1–C0      Trệt : nút bắc giữa R0–C0
```

Lưu ý đi dây: **cáp riêng, tránh xa cáp động lực biến tần** (nhiễu PWM);
bộ lọc 30 ms của firmware chặn xung nhiễu ngắn. Hai người bấm 2 nút cùng lúc:
nút quét thấy trước được nhận, nút kia bỏ qua (vô hại). Muốn chống tuyệt đối
trường hợp 3 phím đè cùng lúc gây nhận nhầm (ghost), thêm 1 diode nối tiếp
mỗi nút — với thang gia đình thường không cần.

### 3.4 Đấu vào biến tần

Xem chi tiết + thông số từng hãng ở `docs/BIEN_TAN.md`. Tóm tắt:

```
Relay LÊN  (C, NO) ──── FWD ─┐
Relay XUỐNG(C, NO) ──── REV ─┤ COM chung
Relay TỐC ĐỘ CAO:            │
   C  ──── COM               │
   NO ──── đầu vào TỐC ĐỘ CAO (vd RH)
   NC ──── đầu vào TỐC ĐỘ DÒ  (vd RM — nếu biến tần cần)
Phanh cơ: relay output của BIẾN TẦN (tín hiệu RUN) → contactor phanh
```

> **Lớp an toàn cứng:** đấu chuỗi tiếp điểm cửa **nối tiếp** trên dây FWD/REV
> (ngoài ngõ vào P3.3), và 2 công tắc hành trình cứng trên-cùng/dưới-cùng cắt
> thẳng lệnh chạy — không phụ thuộc firmware.

---

## 4. Nguyên lý hoạt động

### 4.1 Đếm tầng bằng 2 ngõ cam

- **Cam 1 (đáy)** = mốc tuyệt đối: chạm là biết chắc đang ở tầng trệt (đồng bộ lại bộ đếm).
- **Cam 2 (vấu tầng)**: mỗi lần cabin đi qua một vấu, bộ đếm cộng/trừ theo chiều
  đang chạy. Firmware còn phân biệt "đang đậu **tại** tầng" (đứng trên vấu) và
  "đang **giữa** hai tầng".
- Sau mất điện, nếu không đậu ở trệt → vị trí chưa tin được → yêu cầu **về chuẩn**
  (bấm GỌI XUỐNG, thang bò chậm về trệt).

### 4.2 Hành trình chạy chuẩn (ví dụ trệt → tầng 2)

| Bước | Sự kiện | Bo làm gì | Biến tần |
|---|---|---|---|
| 1 | Bấm phím `2` | Đóng cửa (nếu đang mở) → đóng Relay LÊN + TỐC ĐỘ CAO | Tăng tốc theo ramp ACC |
| 2 | Qua vấu giảm tốc dưới tầng 1 | Không phải đích → **bỏ qua** | Giữ tốc độ cao |
| 3 | Qua vấu tầng 1 | Đếm: đang ở tầng 1→2 | Giữ tốc độ cao |
| 4 | Chạm vấu giảm tốc dưới tầng 2 | Đích! → **cắt TỐC ĐỘ CAO** | Giảm theo DEC về tốc độ dò |
| 5 | Chạm vấu tầng 2 | **Cắt Relay LÊN** → loa "đã đến tầng 2" → mở cửa | Ramp về 0, phanh đóng |
| 6 | Cửa mở chờ 6 giây | Tự đóng cửa → sẵn sàng | — |

Mỗi bước 2–5 đều reset đồng hồ giám sát: nếu quá `THOI_GIAN_CHAY_TOI_DA` (60 s)
không có sự kiện mới → dừng + báo `!QUA THOI GIAN` + SMS.

### 4.3 Cửa cabin + cửa tầng

- **Chuỗi cửa tầng** (khóa liên động nối tiếp, P3.3): hở là *không cho chạy*;
  hở giữa hành trình là *dừng ngay*.
- **Cửa cabin tự động**: đến tầng tự mở → chờ 6 s → tự đóng. Đang đóng gặp
  phím MỞ CỬA → mở lại nhường người. Đóng 10 s không tới công tắc đóng-hết
  (kẹt) → mở ra thử lại, quá 3 lần → `!LOI CUA CABIN` + SMS.
- Thang **chỉ được phép chạy** khi: cửa cabin **đóng hết** (công tắc P1.3) **và**
  chuỗi cửa tầng **kín** (P3.3).

### 4.4 Thông báo & báo lỗi

- **Loa** (DFPlayer, thẻ nhớ thư mục `/MP3`): `0001.mp3` "thang đang đi lên",
  `0002.mp3` "đang đi xuống", `0011.mp3` "đã đến tầng trệt", `0012.mp3` "tầng 1"…
  (bài = 11 + số tầng). Amply chỉ được cấp nguồn trong lúc phát.
- **SMS** (A7680C, gửi 1 lần/sự cố, chỉ khi thang đã dừng hẳn):
  - `LOI THANG MAY: chay qua thoi gian chua toi tang, thang dang dung gan tang x`
  - `LOI THANG MAY: cong tac day va cam bien tang cung tac dong, kiem tra day`
  - `LOI THANG MAY: dem tang vuot gioi han, can bam GOI XUONG cho thang ve tang tret`
  - `LOI THANG MAY: cua cabin dong/mo khong duoc, kiem tra motor cua`

---

## 5. Máy trạng thái firmware

Vòng quét chính **10 ms**: đọc ngõ vào (chống dội 30 ms) → máy trạng thái CHẠY →
máy trạng thái CỬA → loa/SMS → LCD. Watchdog phần cứng luôn hoạt động.

### 5.1 Trạng thái CHẠY

```
                 phím tầng k / gọi ±1  (cửa đóng hết + chuỗi kín + hết khóa 1s)
        ┌───────────────────────────────────────────────┐
        ▼                                               │
   ┌─────────┐    vấu GT đích: cắt TỐC ĐỘ CAO     ┌──────────┐
   │ DANG_LEN│ ───────────────────────────────►   │  (bò dò) │
   └─────────┘                                    └────┬─────┘
        │  gọi XUỐNG (dừng khẩn) / chuỗi cửa hở        │ vấu tầng đích
        │  / lỗi / quá 60s                             ▼
        └───────────────────────────────►  ┌──────────────────┐
                                           │ DUNG (+mở cửa,    │
   DANG_XUONG đối xứng; VỀ CHUẨN =         │  loa, khóa 1s)    │
   DANG_XUONG tốc độ dò, dừng ở đáy        └──────────────────┘
```

- Đang chạy: **gọi cùng chiều** = nới đích thêm 1 tầng; **gọi ngược chiều** = dừng
  khẩn cấp; phím tầng/MỞ CỬA bị bỏ qua.
- `loi_dem` (đếm vượt tầng trên cùng) → coi vị trí không tin được → bắt về chuẩn.

### 5.2 Trạng thái CỬA (khi thang đứng yên)

```
 CUA_DONG_HET ──phím MỞ/đến tầng──► CUA_DANG_MO ──mở hết/10s──► CUA_MO_CHO
      ▲                                                            │ 6s /
      │ công tắc đóng-hết                                          │ phím ĐÓNG /
      └────────────── CUA_DANG_DONG ◄──────────────────────────────┘ có lệnh tầng
                        │      ▲
             phím MỞ ───┘      └── kẹt (10s) → mở lại, 3 lần → !LOI CUA CABIN
```

---

## 6. Cấu hình firmware (`src/main.h`)

| Define | Mặc định | Ý nghĩa |
|---|---|---|
| `SO_TANG` | 6 | Tổng số tầng (2–9), trệt = 0 |
| `THOI_GIAN_CHAY_TOI_DA` | 60 | Giây cho **mỗi đoạn** giữa 2 sự kiện cảm biến |
| `KHOA_SAU_KHI_DUNG` | 100 | ×10 ms — khóa 1 s sau khi dừng |
| `SO_LAN_CHONG_DOI` | 3 | ×10 ms — lọc dội 30 ms |
| `CO_TIEP_DIEM_CUA` | 1 | Chuỗi cửa tầng P3.3 |
| `CT_THUONG_MO` | theo env | NO/NC — **không sửa tay**, chọn env build |
| `CO_GIAM_TOC` | 1 | 0 = chưa lắp vấu giảm tốc (dừng kém êm hơn) |
| `CO_CUA_TU_DONG` | 1 | 0 = cửa tay, chỉ giám sát chuỗi cửa |
| `THOI_GIAN_CUA_CHAY` | 100 | ×100 ms — quá 10 s coi như kẹt cửa |
| `THOI_GIAN_CHO_CUA` | 60 | ×100 ms — cửa mở chờ 6 s |
| `SO_LAN_THU_DONG_CUA` | 3 | Số lần thử đóng lại trước khi báo lỗi |
| `CO_MP3` | 1 | Loa thông báo |
| `TRACK_DI_LEN/XUONG/TOI_TANG` | 1/2/11 | Số bài trên thẻ nhớ |
| `CO_SIM_A7680C` | 1 | SMS báo lỗi |
| `SDT_BAO_LOI` | "0949847098" | **NHỚ SỬA** số nhận tin |

---

## 7. Cài đặt biến tần

Đọc **`docs/BIEN_TAN.md`** — tóm tắt các giá trị khởi điểm:

| Thông số | Giá trị đề nghị |
|---|---|
| Tốc độ CAO | 50 Hz (hoặc theo thiết kế) |
| Tốc độ DÒ tầng | 8–12 Hz |
| Thời gian ACC | 2–3.5 s |
| Thời gian DEC | 2–3.5 s |
| Lệnh chạy | 2 dây FWD/REV từ relay bo |
| Phanh | Relay RUN của biến tần → contactor phanh |

---

## 8. Build & nạp firmware

```bash
git fetch origin && git checkout thang_bien_tan
# Sửa src/main.h: SO_TANG, SDT_BAO_LOI, CO_* theo thiết bị thực
pio run                        # build cả 2 bản
pio run -e THANG_NO -t upload  # nạp bản thường mở (hoặc THANG_NC)
```

File hex: `.pio/build/THANG_NO/THANGMAY_3.0A__THANG_NO.hex` (và `_NC`).
Xác định NO/NC: để cabin giữa tầng, đo thông mạch cảm biến — thông = NC, không = NO.

---

## 9. Quy trình lắp đặt & căn chỉnh

**Bước 1 — Test bo trên bàn** (chưa đấu biến tần/motor): chạy checklist §10 mục 1–8
bằng cách kích tay các ngõ vào, nghe relay.

**Bước 2 — Cài biến tần**: đấu 3 relay theo §3.4, cài thông số §7, chạy thử motor
**không tải** bằng cách kích FWD/REV trực tiếp trên biến tần trước.

**Bước 3 — Lắp cảm biến & vấu**:
1. Vấu tầng: đặt sao cho khi cảm biến **vừa chạm mép vấu** thì sàn cabin ngang
   sàn tầng *sau khi trôi thêm quãng dừng* (thử và dịch dần).
2. Vấu giảm tốc: khoảng cách `S ≈ V_cao × T_DEC ÷ 2 + 0.2–0.3 m`.
   Thang 0.5 m/s, DEC 2.5 s → ~0.9 m trước sàn.
3. Chạy thử từng tầng cả 2 chiều, chỉnh: còn nhanh khi chạm vấu tầng → dời vấu
   giảm tốc xa hơn; bò quá lâu → dời gần lại.

**Bước 4 — Cửa**: chỉnh hành trình motor cửa, kiểm 2 công tắc mở-hết/đóng-hết,
thử kẹt cửa (chặn tay) xem mở lại + báo lỗi đúng.

**Bước 5 — Chạy nghiệm thu** toàn bộ §10, sau đó chạy **không tải 20–30 chu kỳ**
liên tục rồi mới chở người.

---

## 10. Checklist nghiệm thu

> Viết cho bản `THANG_NO` ("kích" = nối GND). Bản `THANG_NC` làm ngược lại
> (chưa đấu gì sẽ báo `!LOI CONG TAC HT` — là fail-safe đúng).

1. ☐ Cấp nguồn: LCD hiện version, mọi relay im lặng.
2. ☐ Chưa nối chuỗi cửa (P3.3 hở) → `CUA TANG DANG MO`, mọi lệnh bị chặn.
   Nối P3.3→GND → hết.
3. ☐ Không kích gì → `CHUA RO VI TRI`; chỉ GỌI XUỐNG có tác dụng → relay XUỐNG
   đóng, relay TỐC ĐỘ CAO **không** đóng (về chuẩn = bò chậm), ` DANG VE T.TRET `.
4. ☐ Kích công tắc đáy → dừng, `O TANG TRET`, loa "đã đến tầng trệt", cửa tự mở
   → chờ 6 s → tự đóng.
5. ☐ Kích giữ công tắc cửa-đóng-hết, bấm phím `2` → relay LÊN + TỐC ĐỘ CAO đóng,
   `LEN DEN TANG 2`, loa "đang đi lên".
6. ☐ Nhả đáy; kích-nhả vấu GT lên (P3.2) lần 1 → TỐC ĐỘ CAO **vẫn đóng** (tầng 1
   không phải đích); kích-nhả vấu tầng (P3.7) lần 1 → vẫn chạy.
7. ☐ Kích-nhả vấu GT lên lần 2 → **TỐC ĐỘ CAO nhả** (đích tầng 2); kích vấu tầng
   lần 2 → relay LÊN nhả, `O TANG 2`, loa + mở cửa.
8. ☐ Đang "chạy": GỌI ngược chiều → dừng khẩn; hở chuỗi cửa → dừng; để quá 60 s
   không kích gì → `!QUA THOI GIAN` + **SMS về đúng số**.
9. ☐ Kẹt cửa: chặn công tắc đóng-hết → sau 10 s cửa mở lại; lần 3 →
   `!LOI CUA CABIN` + SMS.
10. ☐ Kích đồng thời đáy + vấu tầng → `!LOI CONG TAC HT` + SMS, không cho chạy.
11. ☐ Phím MỞ CỬA/ĐÓNG CỬA hoạt động đúng; bấm số tầng đang đậu → chỉ mở cửa.
12. ☐ Nút gọi từng tầng: bấm ở mỗi tầng → thang về đúng tầng đó; khi mất mốc,
    phím TRỆT/nút gọi trệt kích hoạt về chuẩn.
13. ☐ Lắp thật: chạy đủ các cặp tầng 2 chiều, kiểm tra dừng ngang sàn, cập bến êm.

---

## 11. Hướng dẫn sử dụng hàng ngày

**Trong buồng:** bấm **số tầng** muốn đến — hết. Cửa tự đóng rồi thang chạy, đến
nơi loa thông báo và cửa tự mở. `MỞ CỬA` để giữ/mở cửa, `ĐÓNG CỬA` để đi ngay.

**Ngoài buồng:** bấm **nút gọi của tầng mình** — thang chạy thẳng về tầng đó
(đang đậu đúng tầng thì cửa mở). Thang đang chạy thì lệnh gọi bị bỏ qua,
chờ thang dừng rồi bấm lại.

**Dừng khẩn cấp khi đang chạy:** bấm nút phụ **ngược chiều** đang chạy
(P3.4/P3.5 — nên lắp ít nhất trong buồng).

**Sau mất điện:** nếu màn hình báo `CHUA RO VI TRI` → bấm **phím TRỆT** (trong
buồng hoặc nút gọi trệt) hoặc nút phụ XUỐNG, chờ thang bò về trệt là dùng
bình thường.

**Khi nhận SMS báo lỗi:** đọc mục §13 theo nội dung tin.

---

## 12. Màn hình LCD & ý nghĩa

| Hiển thị | Ý nghĩa | Cách xử lý |
|---|---|---|
| `O TANG TRET` / `O TANG x` | Đậu tại tầng | — |
| `LEN DEN TANG x` / `XUONG DEN TANG x` / `XUONG DEN T.TRET` | Đang chạy | — |
| `DANG VE T.TRET` | Đang về chuẩn (bò chậm) | Chờ tới trệt |
| `DANG MO CUA` / `CUA DANG MO` / `DANG DONG CUA` | Chu trình cửa | — |
| `CUA TANG DANG MO` | Chuỗi cửa tầng hở | Đóng hết cửa tầng |
| `GIUA HAI TANG` | Dừng khẩn giữa tầng | Bấm tầng muốn đến |
| `CHUA RO VI TRI` | Mất mốc sau mất điện | Bấm GỌI XUỐNG |
| `!LOI CONG TAC HT` | Đáy + vấu tầng cùng tác động | Kiểm tra đấu dây 2 cảm biến |
| `!LOI DEM TANG` | Đếm vượt giới hạn | Bấm GỌI XUỐNG về chuẩn; kiểm tra vấu |
| `!QUA THOI GIAN` | 60 s không tới cảm biến | Kiểm tra cơ khí/cảm biến, bấm nút thử lại |
| `!LOI CUA CABIN` | Cửa kẹt sau 3 lần thử | Kiểm tra motor/ray cửa, bấm MỞ CỬA để xóa lỗi |

---

## 13. Xử lý sự cố

| Hiện tượng | Nguyên nhân thường gặp | Xử lý |
|---|---|---|
| Bấm phím tầng không ăn | Cửa chưa đóng hết / chuỗi cửa hở / đang khóa 1 s / chưa rõ vị trí | Nhìn LCD; đóng cửa; về chuẩn |
| Không giảm tốc trước tầng | Vấu GT sai chiều (lên/xuống lắp ngược ngõ vào) / hỏng cảm biến | Kiểm tra P3.2 = chiều lên, P1.0 = chiều xuống |
| Giảm tốc ngay giữa đường | Vấu GT của tầng giữa bị tính là đích → kiểm tra bộ đếm (vấu tầng dội) | Kiểm tra cảm biến tầng, khe hở vấu |
| Dừng lệch sàn | Vị trí vấu tầng / tốc độ dò cao quá | Dịch vấu; hạ tần số dò |
| Giật khi khởi động | ACC quá ngắn / phanh nhả trễ | Tăng ACC; chỉnh phanh theo relay RUN biến tần |
| `!LOI DEM TANG` lặp lại | Cảm biến tầng dội/nhiễu | Đi dây xa dây động lực, thêm tụ lọc, vấu dứt khoát |
| Không có SMS | SIM hết tiền / chưa bám mạng / sai số | Kiểm tra SIM; chờ 30 s sau cấp nguồn |
| Loa im | Sai tên file/thư mục, thiếu bài | `/MP3/0001.mp3`…; bài đến tầng = 11+tầng |
| Cửa mở rồi đóng ngay | `THOI_GIAN_CHO_CUA` quá ngắn | Tăng giá trị, build lại |
| Biến tần báo lỗi quá dòng khi dừng | DEC quá ngắn | Tăng DEC hoặc thêm điện trở xả |

---

## 14. An toàn & giới hạn

**Bắt buộc (phần cứng, ngoài firmware):**
1. Chuỗi cửa cắt cứng nối tiếp dây FWD/REV (lớp 2 sau ngõ vào P3.3).
2. Công tắc hành trình cứng trên-cùng/dưới-cùng cắt thẳng lệnh chạy.
3. Không đấu contactor cắt giữa biến tần và motor.
4. Phanh cơ điều khiển bằng relay của biến tần, không bằng relay bo.

**Giới hạn thiết kế:**
- Bo không đo tốc độ thực (không encoder) — dựa hoàn toàn vào vấu + biến tần.
- Không xếp hàng nhiều lệnh gọi đồng thời: đang chạy thì lệnh gọi/chọn tầng bị
  bỏ qua, phải chờ thang dừng (thang gia đình, 1 lệnh 1 lần).
- SMS chỉ gửi báo lỗi, không nhận lệnh điều khiển từ xa (cố ý — an toàn).
- Đây là thang **gia đình tự lắp** — không thay thế tiêu chuẩn thang máy thương mại
  (TCVN 6395/6396); các cơ cấu an toàn cơ khí (governor, phanh an toàn, giảm chấn)
  nằm ngoài phạm vi bộ điều khiển này.
