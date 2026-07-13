# WALKTHROUGH TOÀN BỘ — THANG MÁY GIA ĐÌNH DÙNG BIẾN TẦN

**Firmware:** `_THANGMAY_3.1B__` · **Branch:** `thang_bien_tan` · **MCU:** STC15F2K60S2 (bo điều khiển đồng hồ cũ)

Tài liệu tổng hợp **toàn bộ hệ thống**: phần cứng, đấu nối, nguyên lý, cấu hình,
lắp đặt – căn chỉnh, vận hành và xử lý sự cố. Thông số biến tần chi tiết từng
hãng: **`docs/BIEN_TAN.md`**.

**Tính năng đầy đủ của firmware 3.1B:**

| Nhóm | Tính năng |
|---|---|
| Chuyển động | Điều khiển biến tần 3 pha **2 cấp tốc độ**: tăng tốc êm theo ramp khi rời tầng, giảm về tốc độ dò trước tầng đích, dừng chính xác tại vấu tầng |
| Vị trí | Đếm tầng bằng 2 ngõ cam (đáy + vấu tầng) — tối đa 9 tầng; tự **về chuẩn** sau mất điện |
| Điều phối | **Xếp hàng nhiều lệnh gọi (collective)**: ưu tiên 1 = hướng đang chạy, ưu tiên 2 = tầng gần nhất; nhận lệnh cả khi đang chạy; lệnh muộn tự dời lượt sau |
| Gọi tầng | Bàn phím ma trận 3×4 trong buồng; **nút gọi mỗi tầng đấu song song phím cùng tầng** — không tốn thêm ngõ vào |
| Báo chọn | **LED sáng cho từng tầng trong hàng đợi** (74HC595), phục vụ xong tự tắt |
| Cửa | Cửa cabin **tự động** (mở/đóng, chống kẹt, thử lại 3 lần) + giám sát **chuỗi cửa tầng** |
| Thông báo | Loa MP3: "đang đi lên/xuống", "đã đến tầng…" |
| Báo lỗi | SMS qua **SIM A7680C** về số cài sẵn, mỗi sự cố 1 tin |
| An toàn | Dừng khẩn cấp, giới hạn 60s/đoạn, khóa đảo chiều 1s, watchdog, fail-safe chuỗi cửa |

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
 Phím buồng (ma trận 7 dây) ─┐
 Nút gọi 6 tầng (song song  ─┤►┌─────────────────────┐
   phím cùng tầng, 5 dây)    │ │                     │──► Relay LÊN ────► FWD ┐
                             │ │   BO ĐIỀU KHIỂN     │──► Relay XUỐNG ──► REV │ BIẾN TẦN → MOTOR
 CT đáy (cam1) ─────────────►│ │   (STC15 + LCD)     │──► Relay TỐC ĐỘ ─► SP  ┘  3 PHA     KÉO
 CB tầng (cam2) ────────────►│ │                     │
 CB giảm tốc lên ───────────►│ │  - đếm tầng         │──► Relay MỞ CỬA ──┐ MOTOR
 CB giảm tốc xuống ─────────►│ │  - hàng đợi lệnh    │──► Relay ĐÓNG CỬA ┘ CỬA CABIN
 Chuỗi cửa tầng ────────────►│ │  - 2 cấp tốc độ     │
 CT cửa mở/đóng hết ────────►│ │  - cửa tự động      │──► 74HC595 ──► LED tầng đang chọn
 Nút phụ lên/xuống ─────────►└─│  - loa + SMS        │──► Loa (MP3 + amply)
                               └─────────────────────┘──► SMS (SIM A7680C)
```

Bo điều khiển chỉ ra lệnh bằng **tiếp điểm relay khô**; toàn bộ động lực
(tăng/giảm tốc, moment, phanh) do **biến tần** đảm nhiệm. Bo đếm vấu tầng để
biết vị trí, quản lý hàng đợi lệnh gọi, chọn thời điểm giảm tốc và dừng.

---

## 2. Vật tư cần chuẩn bị

| # | Hạng mục | Số lượng | Ghi chú |
|---|---|---|---|
| 1 | Bo điều khiển đồng hồ (STC15 + LCD 16x2) | 1 | Tận dụng bo cũ |
| 2 | Biến tần 3 pha phù hợp công suất motor | 1 | Mitsubishi/LS/Delta/INVT/Yaskawa… |
| 3 | Công tắc hành trình **đáy** | 1 | Tại tầng trệt |
| 4 | Công tắc/cảm biến **tầng** + vấu | SO_TANG−1 | Mỗi tầng trừ trệt |
| 5 | Công tắc/cảm biến **giảm tốc** + vấu | 2 bộ/tầng đích | 2 ngõ vào: chiều lên + chiều xuống |
| 6 | Keypad màng ma trận 3×4 | 1 | 7 dây, trong buồng |
| 7 | Nút gọi tầng | theo tầng | Song song phím cùng tầng của ma trận (§3.3) |
| 8 | IC **74HC595** + LED + điện trở 470Ω | 1 (+LED) | Đèn báo tầng đang chọn (§3.5) |
| 9 | Motor cửa cabin + 2 CT mở-hết/đóng-hết | 1 bộ | Nếu dùng cửa tự động |
| 10 | Tiếp điểm khóa liên động cửa tầng | theo tầng | Đấu nối tiếp thành chuỗi |
| 11 | Module DFPlayer + thẻ nhớ + amply/loa | 1 bộ | Tùy chọn (thông báo) |
| 12 | Module SIM A7680C + SIM | 1 | Tùy chọn (SMS báo lỗi) |
| 13 | Contactor phanh (điều khiển từ relay biến tần) | 1 | Xem BIEN_TAN.md §5 |

Tất cả cảm biến hành trình (đáy, tầng, 2 giảm tốc) phải **cùng kiểu NO hoặc NC**
— quyết định bản firmware `THANG_NO` / `THANG_NC`. Nên dùng **NC** (đứt dây tự lộ).

---

## 3. Sơ đồ chân & đấu nối

### 3.1 Bảng chân đầy đủ

| Nhóm | Tín hiệu | Chân | Ghi chú |
|---|---|---|---|
| **Vị trí** | Công tắc ĐÁY | P3.6 (cam 1) | Mốc chuẩn tầng trệt |
| | Cảm biến TẦNG | P3.7 (cam 2) | Vấu mỗi tầng, **trừ trệt** |
| | Giảm tốc chiều LÊN | P3.2 | Vấu **dưới** mỗi tầng |
| | Giảm tốc chiều XUỐNG | P1.0 | Vấu **trên** mỗi tầng |
| **Cửa** | Chuỗi cửa tầng | P3.3 | Nối tiếp, kín = GND; hở = cấm chạy |
| | CT cửa cabin MỞ hết | P1.1 | Tác động = GND |
| | CT cửa cabin ĐÓNG hết | P1.3 | Tác động = GND |
| **Phím** | Ma trận cột C0..C2 | P2.4, P2.5, P2.6 | Xuất quét |
| | Ma trận hàng R0..R3 | P1.4, P1.5, P1.6, P1.7 | Đọc, kéo lên nội |
| | Nút gọi tại các tầng | (ma trận) | Song song phím cùng tầng — §3.3 |
| | Nút phụ LÊN (tùy chọn) | P3.5 | Nhích 1 tầng / **dừng khẩn khi đang xuống** |
| | Nút phụ XUỐNG (tùy chọn) | P3.4 | Nhích 1 tầng / **dừng khẩn khi đang lên** / về chuẩn |
| **Ra biến tần** | Relay LÊN | P2.1 | → FWD |
| | Relay XUỐNG | P2.2 | → REV |
| | Relay TỐC ĐỘ CAO | P2.3 | → đầu vào đa cấp tốc độ (C–NO–NC, §3.4) |
| **Ra cửa** | Relay MỞ cửa | P2.7 | → motor cửa chiều mở |
| | Relay ĐÓNG cửa | P4.4 | → motor cửa chiều đóng |
| **LED tầng** | Data 74HC595 (DS, ch.14) | P4.1 | §3.5 |
| | Clock 74HC595 (SHCP, ch.11) | P4.3 | |
| | Latch 74HC595 (STCP, ch.12) | P4.5 | Q0..Q7 → LED tầng 0..7 |
| **Loa** | UART2 MP3 | P4.6 / P4.7 | Cổng MP3 có sẵn |
| | BUSY MP3 | P1.2 | 1 = đang phát |
| | Relay amply | P4.2 | Tự bật khi phát |
| **SIM** | UART1 A7680C | P3.0 / P3.1 | Cổng SIM có sẵn |
| | Nguồn SIM | P2.0 | Bo tự bật |

Mọi định nghĩa chân nằm trong `src/true.h` — đổi chân chỉ sửa một chỗ.

### 3.2 Bố trí vấu dọc hố thang (ví dụ 3 tầng đầu)

```
   TẦNG 2 ─────▓── vấu TẦNG (cam 2)
            ───▽── vấu GIẢM TỐC LÊN (P3.2)   ← cách sàn ~0.8–1 m (§9)
            ...
            ───△── vấu GIẢM TỐC XUỐNG (P1.0) ← cách sàn tầng 1 ~0.8–1 m
   TẦNG 1 ─────▓── vấu TẦNG (cam 2)
            ───▽── vấu GIẢM TỐC LÊN
            ...
            ───△── vấu GIẢM TỐC XUỐNG (trên trệt)
   TRỆT  ──────█── CÔNG TẮC ĐÁY (cam 1) — KHÔNG đặt vấu tầng ở trệt!
```

- Các vấu giảm tốc chiều LÊN đấu **song song** về P3.2; chiều XUỐNG song song về P1.0.
- **Giữ 2 ngõ vào giảm tốc riêng** (không gộp 1 dây): mỗi chiều chỉ nghe đúng cảm
  biến của chiều đó — "có xung = giảm tốc", không phụ thuộc đếm xung; nếu gộp,
  sót 1 xung là thang cập tầng ở tốc độ cao (nguy hiểm âm thầm).

### 3.3 Bàn phím ma trận + nút gọi tầng (không tốn thêm ngõ vào)

```
            C0=P2.4   C1=P2.5   C2=P2.6
R0=P1.4      TRỆT      TẦNG 1    TẦNG 2
R1=P1.5      TẦNG 3    TẦNG 4    TẦNG 5
R2=P1.6      TẦNG 6    TẦNG 7    TẦNG 8   (chỉ dùng khi SO_TANG > 6)
R3=P1.7      MỞ CỬA    ĐÓNG CỬA  (dự phòng)
```

- Keypad màng 3×4 bán sẵn: đấu 3 cột + 4 hàng = **7 dây** (qua cáp theo cabin).
- **Nút gọi tại mỗi tầng đấu SONG SONG với phím cùng tầng** — nối vào đúng
  **giao điểm hàng–cột** đó tại bo. Bo không phân biệt phím buồng hay nút gọi:
  bấm gọi tầng k → thang chạy về tầng k; đang đậu tại k → mở cửa.
- Nhà 6 tầng: cả 6 nút gọi chỉ cần **5 sợi dây trục** dọc hố (R0, R1, C0–C2):

```
Trục 5 dây: ── R0 ── R1 ── C0 ── C1 ── C2 ──
Tầng 5: nút bắc R1–C2      Tầng 2: nút bắc R0–C2
Tầng 4: nút bắc R1–C1      Tầng 1: nút bắc R0–C1
Tầng 3: nút bắc R1–C0      Trệt : nút bắc R0–C0
```

- **Đi cáp riêng, tránh xa cáp động lực biến tần** (nhiễu PWM). Bộ lọc 30 ms
  của firmware chặn xung nhiễu ngắn. 2 nút bấm cùng lúc: nút quét trước được
  nhận (vô hại). Muốn triệt để ghost khi 3 phím đè đồng thời: thêm 1 diode
  nối tiếp mỗi nút (gia đình thường không cần).

### 3.4 Đấu vào biến tần

Chi tiết + thông số từng hãng: `docs/BIEN_TAN.md`. Tóm tắt:

```
Relay LÊN  (C, NO) ──── FWD ─┐
Relay XUỐNG(C, NO) ──── REV ─┤ COM chung
Relay TỐC ĐỘ CAO:            │
   C  ──── COM               │
   NO ──── đầu vào TỐC ĐỘ CAO (vd RH)
   NC ──── đầu vào TỐC ĐỘ DÒ  (vd RM — nếu biến tần cần mỗi cấp 1 chân)
Phanh cơ: relay output của BIẾN TẦN (tín hiệu RUN) → contactor phanh
```

> **Lớp an toàn cứng:** chuỗi tiếp điểm cửa đấu **nối tiếp** trên dây FWD/REV
> (ngoài ngõ vào P3.3), + 2 công tắc hành trình cứng trên-cùng/dưới-cùng cắt
> thẳng lệnh chạy — không phụ thuộc firmware.

### 3.5 LED báo tầng đang chọn (74HC595)

```
Bo STC15                 74HC595
P4.1 ──── DS   (14)      Q0 ──[470Ω]── LED trệt ── GND
P4.3 ──── SHCP (11)      Q1 ──[470Ω]── LED tầng 1 ...
P4.5 ──── STCP (12)      ...
5V   ──── VCC(16) + MR̅(10)   Q5 ──[470Ω]── LED tầng 5
GND  ──── GND(8) + OE̅(13)
```

- Tầng nào trong hàng đợi → LED sáng; phục vụ xong → tắt; dừng khẩn/lỗi
  (xóa hàng đợi) → tắt hết.
- LED nút buồng và đèn nút gọi tầng đấu **song song cùng ngõ Q** (dòng lớn thì
  qua transistor).
- Trên 8 tầng: nối tầng con 595 thứ hai (Q7' → DS con sau) — firmware gửi sẵn
  16 bit, không phải sửa code. Không dùng: `CO_LED_TANG 0`.

### 3.6 Loa MP3 & SIM

- **DFPlayer** cắm cổng MP3 có sẵn. Thẻ nhớ thư mục **`/MP3`**:
  `0001.mp3` "thang đang đi lên", `0002.mp3` "đang đi xuống",
  `0011.mp3` "đã đến tầng trệt", `0012.mp3` "tầng 1"… (bài = 11 + số tầng,
  làm đủ tới `0011+SO_TANG-1`). Amply (P4.2) chỉ bật khi phát.
- **A7680C** cắm cổng SIM có sẵn, SIM còn tiền. Số nhận tin: `SDT_BAO_LOI`
  trong `src/main.h`. Module cần ~20–30 s sau cấp điện mới bám mạng.

---

## 4. Nguyên lý hoạt động

### 4.1 Đếm tầng bằng 2 ngõ cam

- **Cam 1 (đáy)** = mốc tuyệt đối: chạm là biết chắc tầng trệt, đồng bộ lại bộ đếm.
- **Cam 2 (vấu tầng)**: mỗi vấu đi qua, bộ đếm cộng/trừ theo chiều chạy; firmware
  phân biệt "đậu **tại** tầng" (trên vấu) và "**giữa** hai tầng".
- Sau mất điện không đậu ở trệt → vị trí chưa tin được → **về chuẩn**: bấm
  phím TRỆT (hoặc nút phụ XUỐNG), thang bò chậm về đáy lấy mốc.

### 4.2 Hàng đợi lệnh gọi (collective)

- Mỗi tầng là 1 bit trong thanh ghi hàng đợi. Bấm phím buồng/nút gọi = đăng ký —
  **kể cả khi thang đang chạy**. LED tầng đó sáng.
- **Thứ tự phục vụ:** (1) hết mọi lệnh **phía trước theo chiều đang chạy**, ghé
  tầng **gần nhất trước**; (2) hết lệnh phía trước mới quay đầu chiều còn lại.
- Đích được tính lại mỗi vòng quét 10 ms → lệnh mới chen giữa đường vẫn được
  ghé đúng thứ tự **nếu còn kịp giảm tốc**.
- **Lệnh muộn** (cabin đã vượt vấu giảm tốc của tầng đó): không thể dừng êm →
  chạy qua, bit giữ nguyên, **tự quay lại phục vụ lượt sau** — như thang máy thật.
- Đến tầng: xóa bit (LED tắt), mở cửa, loa thông báo; cửa đóng xong **tự chạy
  tiếp** lệnh kế. Hàng đợi còn lệnh thì cửa **đóng sớm** không chờ hết 6 s.
- **Dừng khẩn cấp / lỗi / đứt chuỗi cửa → xóa toàn bộ hàng đợi** (mọi LED tắt),
  người dùng chọn lại — thang không tự chạy tiếp kế hoạch cũ sau bất thường.

### 4.3 Hành trình chạy chuẩn (ví dụ trệt → tầng 2, có ghé tầng 1)

| Bước | Sự kiện | Bo làm gì | Biến tần |
|---|---|---|---|
| 1 | Ở trệt bấm `1` và `2` | LED 1+2 sáng; đóng cửa; Relay LÊN + TỐC ĐỘ CAO | Tăng tốc ramp ACC |
| 2 | Chạm vấu giảm tốc dưới tầng 1 | Tầng 1 là đích gần nhất → **cắt TỐC ĐỘ CAO** | Giảm về tốc độ dò |
| 3 | Chạm vấu tầng 1 | Cắt RUN → dừng; LED 1 tắt; loa "đã đến tầng 1"; mở cửa | Ramp về 0, phanh đóng |
| 4 | Cửa đóng (sớm vì còn lệnh) | Relay LÊN + TỐC ĐỘ CAO (đích = tầng 2) | Tăng tốc |
| 5 | Vấu giảm tốc dưới tầng 2 | Đích → cắt TỐC ĐỘ CAO | Giảm về dò |
| 6 | Vấu tầng 2 | Dừng; LED 2 tắt; loa; mở cửa → chờ 6 s → tự đóng | Dừng |

Mỗi sự kiện cảm biến đều reset đồng hồ giám sát: quá `THOI_GIAN_CHAY_TOI_DA`
(60 s) không có sự kiện mới → dừng + `!QUA THOI GIAN` + SMS.

### 4.4 Cửa cabin + cửa tầng

- **Chuỗi cửa tầng** (P3.3, khóa liên động nối tiếp): hở = không cho chạy; hở
  giữa hành trình = dừng ngay + xóa hàng đợi. Đứt dây = coi như hở (fail-safe).
- **Cửa cabin tự động**: đến tầng tự mở → chờ 6 s → tự đóng (đóng sớm nếu còn
  lệnh). Đang đóng bấm MỞ CỬA → mở lại nhường người. Kẹt (10 s không tới công
  tắc đóng-hết) → mở ra thử lại, quá 3 lần → `!LOI CUA CABIN` + SMS.
- Thang **chỉ chạy khi**: cửa cabin **đóng hết** (P1.3) **và** chuỗi cửa tầng
  **kín** (P3.3).

### 4.5 Thông báo & báo lỗi

- **Loa**: phát khi bắt đầu chạy lên/xuống và khi đến tầng.
- **SMS** (1 tin/sự cố, chỉ gửi khi thang đã dừng hẳn):
  - `LOI THANG MAY: chay qua thoi gian chua toi tang, thang dang dung gan tang x`
  - `LOI THANG MAY: cong tac day va cam bien tang cung tac dong, kiem tra day`
  - `LOI THANG MAY: dem tang vuot gioi han, can bam GOI XUONG cho thang ve tang tret`
  - `LOI THANG MAY: cua cabin dong/mo khong duoc, kiem tra motor cua`

---

## 5. Máy trạng thái firmware

Vòng quét chính **10 ms**: đọc ngõ vào (chống dội 30 ms) → đăng ký lệnh gọi →
máy trạng thái CHẠY → máy trạng thái CỬA → LED tầng → loa/SMS → LCD.
Watchdog phần cứng luôn chạy. Không dùng ngắt — mọi thứ tuần tự, dễ kiểm chứng.

### 5.1 Trạng thái CHẠY

```
              hàng đợi có lệnh (cửa đóng hết + chuỗi kín + hết khóa 1s)
              bộ điều phối: ưu tiên hướng cũ → tầng gần nhất trong hướng
        ┌───────────────────────────────────────────────┐
        ▼                                               │
   ┌─────────┐   vấu GT của tầng đích: cắt TỐC ĐỘ CAO   │
   │ DANG_LEN│ ─────────────────────────────► (bò dò) ──┤ vấu tầng đích:
   └─────────┘   (vấu GT tầng khác: bỏ qua,             │ dừng, xóa bit, LED tắt,
        │         lệnh muộn dời lượt sau)               ▼ loa, MỞ CỬA
        │  nút phụ ngược chiều / chuỗi cửa hở    ┌──────────────────┐
        │  / lỗi / quá 60s                       │ DUNG + chu trình  │→ còn lệnh:
        └──────────────► XÓA HÀNG ĐỢI ─────────► │ cửa + khóa 1s     │  chạy tiếp
                                                 └──────────────────┘
   DANG_XUONG đối xứng. VỀ CHUẨN = DANG_XUONG tốc độ dò, bỏ qua đếm, dừng ở đáy.
```

- Đang chạy: phím tầng **vẫn nhận** (vào hàng đợi); đích cập nhật liên tục =
  lệnh gần nhất phía trước còn kịp giảm tốc.
- `loi_dem` (đếm vượt tầng trên cùng) → vị trí không tin được → bắt về chuẩn.

### 5.2 Trạng thái CỬA (khi thang đứng yên)

```
 CUA_DONG_HET ──phím MỞ/đến tầng──► CUA_DANG_MO ──mở hết/10s──► CUA_MO_CHO
      ▲                                                            │ 6s / phím ĐÓNG /
      │ công tắc đóng-hết                                          │ hàng đợi còn lệnh
      └────────────── CUA_DANG_DONG ◄──────────────────────────────┘
                        │      ▲
             phím MỞ ───┘      └── kẹt (10s) → mở lại, 3 lần → !LOI CUA CABIN + SMS
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
| `CT_THUONG_MO` | theo env | NO/NC — chọn bằng env build, không sửa tay |
| `CO_GIAM_TOC` | 1 | 0 = chưa lắp vấu giảm tốc (dừng kém êm) |
| `CO_CUA_TU_DONG` | 1 | 0 = cửa tay, chỉ giám sát chuỗi cửa |
| `THOI_GIAN_CUA_CHAY` | 100 | ×100 ms — quá 10 s coi như kẹt cửa |
| `THOI_GIAN_CHO_CUA` | 60 | ×100 ms — cửa mở chờ 6 s |
| `SO_LAN_THU_DONG_CUA` | 3 | Số lần thử đóng trước khi báo lỗi |
| `CO_MP3` | 1 | Loa thông báo |
| `TRACK_DI_LEN/XUONG/TOI_TANG` | 1/2/11 | Số bài trên thẻ nhớ |
| `CO_SIM_A7680C` | 1 | SMS báo lỗi |
| `SDT_BAO_LOI` | "0949847098" | **NHỚ SỬA** số nhận tin |
| `CO_LED_TANG` | 1 | LED báo tầng đang chọn qua 74HC595 |

---

## 7. Cài đặt biến tần

Đọc **`docs/BIEN_TAN.md`** (Mitsubishi D700, LS iG5A, Delta VFD-M, INVT GD20,
Yaskawa V1000). Giá trị khởi điểm:

| Thông số | Giá trị đề nghị |
|---|---|
| Tốc độ CAO | 50 Hz (hoặc theo thiết kế) |
| Tốc độ DÒ tầng | 8–12 Hz |
| Thời gian ACC / DEC | 2–3.5 s |
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

File hex: `.pio/build/THANG_NO/THANGMAY_3.1B__THANG_NO.hex` (và `_NC`).
Xác định NO/NC: để cabin **giữa tầng**, đo thông mạch cảm biến — thông = NC
(nạp bản `THANG_NC`), không thông = NO (bản `THANG_NO`). Chip STC nạp lúc
**vừa cấp nguồn** (PlatformIO upload hoặc STC-ISP).

---

## 9. Quy trình lắp đặt & căn chỉnh

**Bước 1 — Test bo trên bàn** (chưa đấu biến tần/motor): chạy checklist §10
mục 1–14 bằng cách kích tay ngõ vào, nghe relay, nhìn LED/LCD.

**Bước 2 — Cài biến tần**: đấu 3 relay theo §3.4, cài thông số §7, thử motor
**không tải** bằng cách kích FWD/REV trực tiếp trên biến tần trước.

**Bước 3 — Lắp cảm biến & vấu**:
1. Vấu tầng: cảm biến **vừa chạm mép vấu** thì sàn cabin ngang sàn tầng *sau
   khi trôi thêm quãng dừng* (thử và dịch dần).
2. Vấu giảm tốc: khoảng cách `S ≈ V_cao × T_DEC ÷ 2 + 0.2–0.3 m`.
   Thang 0.5 m/s, DEC 2.5 s → ~0.9 m trước sàn.
3. Chạy thử từng tầng cả 2 chiều: còn nhanh khi chạm vấu tầng → dời vấu giảm
   tốc xa hơn hoặc giảm DEC; bò quá lâu → dời gần lại.

**Bước 4 — Cửa**: chỉnh hành trình motor cửa, kiểm 2 công tắc mở/đóng-hết,
thử kẹt (chặn tay) xem mở lại + báo lỗi đúng.

**Bước 5 — Nghiệm thu** toàn bộ §10, chạy **không tải 20–30 chu kỳ** liên tục
(dùng tính năng xếp hàng bấm nhiều tầng cho thang tự chạy vòng) rồi mới chở người.

---

## 10. Checklist nghiệm thu

> Viết cho bản `THANG_NO` ("kích" = nối GND). Bản `THANG_NC` làm ngược lại —
> chưa đấu gì sẽ báo `!LOI CONG TAC HT`: đó là fail-safe đúng.

1. ☐ Cấp nguồn: LCD hiện version, mọi relay im, mọi LED tắt.
2. ☐ Chưa nối chuỗi cửa (P3.3 hở) → `CUA TANG DANG MO`, mọi lệnh bị chặn.
   Nối P3.3→GND → hết.
3. ☐ Không kích gì → `CHUA RO VI TRI`; bấm phím TRỆT → relay XUỐNG đóng,
   TỐC ĐỘ CAO **không** đóng (về chuẩn bò chậm), ` DANG VE T.TRET `.
4. ☐ Kích công tắc đáy → dừng, `O TANG TRET`, loa "đã đến tầng trệt", cửa tự
   mở → chờ 6 s → tự đóng.
5. ☐ Kích giữ CT cửa-đóng-hết, bấm `2` → LED 2 sáng, relay LÊN + TỐC ĐỘ CAO
   đóng, `LEN DEN TANG 2`, loa "đang đi lên".
6. ☐ Nhả đáy; kích-nhả vấu GT lên lần 1 → TỐC ĐỘ CAO **vẫn đóng** (tầng 1
   không phải đích); kích-nhả vấu tầng lần 1 → vẫn chạy.
7. ☐ Kích-nhả vấu GT lên lần 2 → **TỐC ĐỘ CAO nhả**; kích vấu tầng lần 2 →
   relay LÊN nhả, `O TANG 2`, LED 2 tắt, loa + mở cửa.
8. ☐ Xếp hàng: ở "trệt" bấm `1` rồi `3` → LED 1+3 sáng; thang "ghé tầng 1"
   (LED 1 tắt, mở cửa), cửa đóng sớm, tự chạy tiếp "tầng 3".
9. ☐ Đang "chạy" bấm thêm phím tầng phía trước → được ghé nếu chưa qua vấu GT;
   bấm sau khi đã qua vấu GT → thang chạy qua, LED giữ sáng, quay lại lượt sau.
10. ☐ Đang "chạy": nút phụ ngược chiều → dừng ngay + **mọi LED tắt** (hàng đợi
    xóa); hở chuỗi cửa → dừng + xóa; quá 60 s → `!QUA THOI GIAN` + **SMS**.
11. ☐ Kẹt cửa: chặn CT đóng-hết → 10 s mở lại; lần 3 → `!LOI CUA CABIN` + SMS.
12. ☐ Kích đồng thời đáy + vấu tầng → `!LOI CONG TAC HT` + SMS, không cho chạy.
13. ☐ MỞ/ĐÓNG CỬA hoạt động đúng; bấm số tầng đang đậu → chỉ mở cửa.
14. ☐ Nút gọi từng tầng (song song ma trận): bấm ở mỗi tầng → về đúng tầng.
15. ☐ Lắp thật: chạy đủ các cặp tầng 2 chiều, dừng ngang sàn, cập bến êm.

---

## 11. Hướng dẫn sử dụng hàng ngày

**Trong buồng:** bấm **số tầng** muốn đến — bấm được **nhiều tầng liền**, đèn
tầng đã chọn sáng. Thang ghé lần lượt theo chiều chạy (gần trước), đèn tắt dần
theo từng tầng đã phục vụ. `MỞ CỬA` giữ/mở cửa, `ĐÓNG CỬA` đi ngay.

**Ngoài buồng:** bấm **nút gọi tầng mình** — thang tự về (kể cả khi đang chạy,
sẽ ghé nếu thuận đường, không thì phục vụ ngay lượt sau). Đang đậu đúng tầng
thì cửa mở.

**Dừng khẩn cấp:** bấm nút phụ **ngược chiều** đang chạy (P3.4/P3.5 — nên lắp
ít nhất trong buồng). Dừng khẩn xóa mọi lệnh đã chọn (đèn tắt hết) — bấm chọn lại.

**Sau mất điện:** LCD báo `CHUA RO VI TRI` → bấm **phím TRỆT** (buồng hoặc nút
gọi trệt), thang bò chậm về trệt là dùng bình thường.

**Khi nhận SMS báo lỗi:** tra bảng §13 theo nội dung tin.

---

## 12. Màn hình LCD & ý nghĩa

| Hiển thị | Ý nghĩa | Xử lý |
|---|---|---|
| `O TANG TRET` / `O TANG x` | Đậu tại tầng | — |
| `LEN DEN TANG x` / `XUONG DEN TANG x` / `XUONG DEN T.TRET` | Đang chạy, đích hiện tại x (tự đổi khi ghé tầng gần hơn) | — |
| `DANG VE T.TRET` | Đang về chuẩn (bò chậm) | Chờ tới trệt |
| `DANG MO CUA` / `CUA DANG MO` / `DANG DONG CUA` | Chu trình cửa cabin | — |
| `CUA TANG DANG MO` | Chuỗi cửa tầng hở | Đóng hết cửa tầng |
| `GIUA HAI TANG` | Dừng khẩn giữa tầng | Bấm tầng muốn đến |
| `CHUA RO VI TRI` + `BAM PHIM TRET` | Mất mốc sau mất điện | Bấm phím TRỆT |
| `!LOI CONG TAC HT` | Đáy + vấu tầng cùng tác động | Kiểm tra đấu dây 2 cảm biến |
| `!LOI DEM TANG` | Đếm vượt giới hạn | Bấm GỌI XUỐNG/TRỆT về chuẩn; kiểm tra vấu |
| `!QUA THOI GIAN` | 60 s không tới cảm biến | Kiểm tra cơ khí/cảm biến, bấm thử lại |
| `!LOI CUA CABIN` | Cửa kẹt sau 3 lần thử | Kiểm tra motor/ray cửa; MỞ CỬA xóa lỗi |

---

## 13. Xử lý sự cố

| Hiện tượng | Nguyên nhân thường gặp | Xử lý |
|---|---|---|
| Bấm phím tầng không ăn | Cửa chưa đóng hết / chuỗi cửa hở / khóa 1 s / chưa rõ vị trí | Nhìn LCD; đóng cửa; về chuẩn |
| LED sáng nhưng thang không ghé | Lệnh đăng ký sau khi qua vấu giảm tốc | Bình thường — thang quay lại lượt sau |
| LED không sáng | Đấu 74HC595 sai (OE̅ phải GND, MR̅ phải 5V) / `CO_LED_TANG 0` | Kiểm tra chân 13, 10; build lại |
| Không giảm tốc trước tầng | Vấu GT lắp ngược ngõ vào lên/xuống | P3.2 = chiều lên, P1.0 = chiều xuống |
| Giảm tốc ngay giữa đường | Cảm biến tầng dội làm lệch bộ đếm | Kiểm tra vấu/cảm biến tầng |
| Dừng lệch sàn | Vị trí vấu tầng / tốc độ dò cao | Dịch vấu; hạ tần số dò |
| Giật khi khởi động | ACC ngắn / phanh nhả trễ | Tăng ACC; phanh theo relay RUN biến tần |
| `!LOI DEM TANG` lặp lại | Cảm biến tầng dội/nhiễu | Đi dây xa động lực, vấu dứt khoát |
| Không có SMS | SIM hết tiền / chưa bám mạng / sai số | Kiểm SIM; chờ 30 s sau cấp nguồn |
| Loa im | Sai tên file/thư mục thẻ nhớ | `/MP3/0001.mp3`…; bài đến tầng = 11+tầng |
| Cửa mở rồi đóng ngay | Hàng đợi còn lệnh (đóng sớm là đúng) / `THOI_GIAN_CHO_CUA` ngắn | Tăng giá trị nếu muốn chờ lâu hơn |
| Biến tần lỗi quá dòng khi dừng | DEC quá ngắn | Tăng DEC hoặc thêm điện trở xả |

---

## 14. An toàn & giới hạn

**Bắt buộc (phần cứng, ngoài firmware):**
1. Chuỗi cửa cắt cứng nối tiếp dây FWD/REV (lớp 2 sau ngõ vào P3.3).
2. Công tắc hành trình cứng trên-cùng/dưới-cùng cắt thẳng lệnh chạy.
3. Không đấu contactor cắt giữa biến tần và motor.
4. Phanh cơ điều khiển bằng relay của biến tần, không bằng relay bo.

**Giới hạn thiết kế:**
- Không encoder — vị trí dựa hoàn toàn vào vấu + biến tần.
- Nút gọi tầng không phân hướng (1 nút/tầng) → điều phối "collective không
  hướng": gom hết lệnh theo chiều đang chạy rồi mới đảo chiều.
- SMS chỉ gửi báo lỗi, không nhận lệnh điều khiển từ xa (cố ý — an toàn).
- Đây là thang **gia đình tự lắp** — không thay thế tiêu chuẩn thang máy thương
  mại (TCVN 6395/6396); các cơ cấu an toàn cơ khí (governor, phanh an toàn,
  giảm chấn) nằm ngoài phạm vi bộ điều khiển này.

---

## Phụ lục: lịch sử phiên bản

| Bản | Nội dung |
|---|---|
| 1.0 | Thang nâng 2 tầng: bấm-giữ-lệnh, 2 công tắc hành trình (branch `thang_nang`) |
| 1.0B | Tiếp điểm cửa: mở = dừng + hủy lệnh |
| 1.0C | Chọn NO/NC — 2 bản build `THANG_NO` / `THANG_NC` |
| 2.0A | Nhiều tầng 2 ngõ cam + loa MP3 + SMS A7680C (branch `thang_nang`) |
| 3.0A | Biến tần 2 cấp tốc độ + cảm biến giảm tốc + cửa tự động + phím ma trận (branch `thang_bien_tan`) |
| 3.0B | Nút gọi tầng song song phím ma trận; phím TRỆT về chuẩn |
| 3.1A | Xếp hàng lệnh gọi collective: ưu tiên hướng, rồi khoảng cách |
| 3.1B | LED báo tầng đang chọn qua 74HC595 |
