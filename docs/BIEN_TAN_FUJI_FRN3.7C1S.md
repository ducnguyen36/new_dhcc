# ĐẤU NỐI & CÀI ĐẶT — Fuji FRENIC-Mini `FRN3.7C1S-2J`

Hướng dẫn riêng cho **biến tần thang máy nhà bạn** (ảnh chụp tủ điện), để có
**tăng tốc – giảm tốc 2 cấp** làm việc với bo điều khiển STC15
(firmware `_THANGMAY_3.1B__`, branch `thang_bien_tan`).

> ⚠️ **BẮT BUỘC ĐỌC TRƯỚC:** số hiệu tham số dưới đây theo dòng **FRENIC-Mini
> (C1S)**. Trước khi sửa bất cứ tham số nào, hãy **ghi lại giá trị hiện tại**
> (mục 5.1) và đối chiếu với sách hướng dẫn FRENIC-Mini (INR-SI47-0864-JE).
> Thang đang chạy được — chép lại thông số cũ là cách quay về nếu cài sai.

---

## 1. Nhận dạng thiết bị (từ ảnh)

| Hạng mục | Thông tin trên nhãn |
|---|---|
| Model | **FRN3.7C1S-2J** — Fuji FRENIC-Mini, **3.7 kW** |
| Nguồn vào | 3 pha 200–240 V, 50/60 Hz, 22.2 A |
| Ngõ ra | 3 pha 6.5 kVA, 200–240 V, **1–400 Hz, 17.0 A** |
| Serial | 9YB968A0069K · Made in Japan |
| Điện trở xả | **Fuji TK80W120Ω (DK)** — 80 W / 120 Ω, mã 13XBZ35A002 (đã lắp) |
| Bàn phím | 4 phím (PRG/RESET, FUNC/DATA, ▲, ▼) + RUN + STOP + **núm vặn** chỉnh tần số |

**Nhận xét quan trọng:**
- Máy có **3 ngõ vào đa năng X1, X2, X3** + **FWD/REV** → thừa sức làm 2 cấp tốc độ.
- Có sẵn **7 cấp tần số đa bước (C05–C11)** → chọn tốc độ bằng tiếp điểm khô, không
  cần biến trở hay tín hiệu analog.
- **Điện trở xả đã có** → đủ khả năng hãm khi thang đi xuống có tải / đi lên không tải.
  Đây là điều kiện bắt buộc của thang máy, bạn đã có sẵn.
- Màn hình lúc chụp hiện **`5173`** — nhiều khả năng là **tần số đặt 51.73 Hz** lấy
  từ **núm vặn** (F01 = 4). Nghĩa là hiện thang đang chạy **một tốc độ duy nhất**,
  chỉnh bằng núm — đúng thứ chúng ta sắp thay bằng 2 cấp có giảm tốc.

---

## 2. Bố trí hàng kẹp điều khiển (đúng như ảnh)

```
   ┌──── công tắc gạt SINK ◄──►SOURCE  (đặt về SINK)
   │
 ┌─┴─────────────────────────────────────────────┐
 │  Y1   Y1E   FMA   C1   PLC   X1   X2   X3     │  ← hàng trên
 ├───────────────────────────────────────────────┤
 │  11   12    13    CM   FWD   REV   CM         │  ← hàng dưới
 └───────────────────────────────────────────────┘
 ┌──────────────┐
 │ 30A  30B  30C│  ← khối 3 chân riêng (relay báo lỗi ALM)
 └──────────────┘
```

| Chân | Ý nghĩa | Ta dùng làm gì |
|---|---|---|
| `FWD` | Lệnh chạy thuận | **Chạy LÊN** |
| `REV` | Lệnh chạy ngược | **Chạy XUỐNG** |
| `X1` | Ngõ vào đa năng 1 | **SS1** — chọn tốc độ CAO |
| `X2` | Ngõ vào đa năng 2 | **SS2** — chọn tốc độ DÒ TẦNG |
| `X3` | Ngõ vào đa năng 3 | (dự phòng: BX cắt khẩn / THR lỗi ngoài) |
| `CM` | Chân chung (0 V) của các ngõ vào số | Chân về của mọi tiếp điểm |
| `PLC` | Nguồn +24 V nội (≤ 50 mA) | Cấp cho relay phanh (mục 7) |
| `Y1`,`Y1E` | Ngõ ra transistor (≤ 50 mA / 27 V) | **Tín hiệu RUN → nhả phanh cơ** |
| `30A/30B/30C` | Relay báo lỗi (ALM) | Báo biến tần lỗi |
| `11,12,13,C1,FMA` | Analog (không dùng) | — |

> **Công tắc SINK/SOURCE** (gạt nhỏ phía trên hàng kẹp): để ở **SINK** (mặc định
> bản Nhật). Ở chế độ SINK, một ngõ vào được **kích hoạt khi nối xuống `CM`** —
> đúng kiểu tiếp điểm relay khô của bo. **Không** cấp điện áp ngoài vào các chân này.

---

## 3. Sơ đồ đấu nối bo STC15 → biến tần

### 3.1 Ba lệnh cơ bản (bắt buộc)

```
        BO ĐIỀU KHIỂN                    CHUỖI AN TOÀN              FRENIC-Mini
   ┌────────────────────┐          (cửa tầng + HT cứng 2 đầu hố)
   │ Relay LÊN   (P2.1) ├──○  ○──┬── [cửa tầng] ── [HT trên cùng] ──────► FWD
   │                    │        │
   │ Relay XUỐNG (P2.2) ├──○  ○──┴── [cửa tầng] ── [HT dưới cùng] ──────► REV
   │                    │                                    (chung) ──► CM
   │ Relay TỐC ĐỘ (P2.3)│
   │        C  ─────────┼──────────────────────────────────────────────► CM
   │        NO ─────────┼──────────────────────────────────────────────► X1  (cao)
   │        NC ─────────┼──────────────────────────────────────────────► X2  (dò)
   └────────────────────┘
```

- Relay TỐC ĐỘ dùng **tiếp điểm đảo C–NO–NC**: relay hút → X1 (tốc độ cao);
  relay nhả → X2 (tốc độ dò tầng). Kiểu "cắt trước – đóng sau" nên **không bao giờ
  chập 2 cấp**, và **mất điện bo = tự về tốc độ chậm** (an toàn).
- **Chuỗi an toàn đấu NỐI TIẾP trên dây FWD/REV** — đây là lớp cắt cứng, cửa mở
  hoặc chạm hành trình cứng là biến tần mất lệnh chạy ngay, không phụ thuộc phần mềm.
  (Bo vẫn đọc chuỗi cửa riêng ở chân P3.3 để hiển thị/khóa lệnh — 2 lớp.)
- Dây điều khiển dùng **cáp riêng, có lưới chống nhiễu, đi cách xa cáp động lực
  U/V/W**; lưới nối đất **một đầu** phía biến tần.

### 3.2 Nếu chỉ muốn kéo 1 dây tốc độ (đơn giản hơn, kém chặt hơn)

Chỉ đấu **NO → X1**, bỏ X2. Khi đó lúc relay nhả, biến tần chạy theo **tần số
lệnh chính** (núm vặn hoặc phím ▲▼). Phải khóa tham số (`F00 = 1`) kẻo ai đó
vặn núm là tốc độ dò tầng thay đổi. **Khuyến nghị dùng cách 3.1.**

---

## 4. Cách hoạt động của tăng tốc / giảm tốc

Bo **không** điều khiển đường cong tốc độ — nó chỉ bật/tắt tiếp điểm; **biến tần tự
tạo ramp**. Đó là lý do dùng biến tần thay vì đóng cắt trực tiếp:

```
 tần số ▲
  50Hz ─┤        ┌───────────────────┐
        │       /                     \           ← cắt X1 tại vấu giảm tốc
        │      /  ← ramp ACC (F07)     \  ramp DEC (F08)
  10Hz ─┤     /                         └──────────┐
        │    /   (S-curve H07 làm mềm 2 đầu)        \  ← cắt FWD tại vấu tầng
   0  ──┴───┴────────────────────────────────────────┴──────► thời gian
      RUN+CAO                                    dừng, phanh đóng
```

| Giai đoạn | Bo làm gì | Biến tần làm gì |
|---|---|---|
| Rời tầng | Đóng FWD (hoặc REV) **+** relay tốc độ (X1) | Tăng dần 0 → 50 Hz theo **F07**, bo tròn 2 đầu theo **H07** |
| Chạy | Giữ nguyên | Giữ 50 Hz |
| Gặp vấu giảm tốc của **tầng đích** | Nhả relay tốc độ (X1 hở, X2 đóng) | Giảm 50 → 10 Hz theo **F08** |
| Bò tới vấu tầng | Nhả FWD/REV | Giảm 10 → 0, hãm DC (**F20–F22**), phanh cơ đóng |

**Muốn êm hơn** → tăng `F07`/`F08` và đặt `H07 = 2` (S-curve mạnh).
**Muốn nhanh hơn** → giảm `F07`/`F08`, nhưng phải **dời vấu giảm tốc lại gần tầng**
tương ứng (mục 6).

---

## 5. Bảng tham số cần cài

### 5.1 TRƯỚC KHI SỬA — chép lại giá trị đang dùng

Ghi ra giấy giá trị hiện tại của: `F01, F02, F03, F04, F05, F07, F08, F09, F23,
F25, F37, F42, E01, E02, E03, E20, C05, C06, C07, H07, P01, P02, P03`.
(Thang đang chạy được nghĩa là các thông số động cơ `P0x` đang đúng — **đừng đụng
vào chúng** trừ khi biết rõ.)

### 5.2 Nhóm bắt buộc — lệnh chạy & 2 cấp tốc độ

| Mã | Tên | Đặt | Ghi chú |
|---|---|---|---|
| `F02` | Nguồn lệnh chạy | **1** | Chạy bằng chân FWD/REV (thay vì phím RUN) |
| `E01` | Chức năng X1 | **0** | = SS1 (chọn tần số đa bước bit 1) |
| `E02` | Chức năng X2 | **1** | = SS2 (bit 2) |
| `C05` | Tần số đa bước 1 | **50.0 Hz** | Tốc độ CAO (X1 đóng) |
| `C06` | Tần số đa bước 2 | **10.0 Hz** | Tốc độ DÒ TẦNG (X2 đóng) |
| `C07` | Tần số đa bước 3 | **10.0 Hz** | Dự phòng: lỡ X1+X2 cùng đóng cũng chỉ chạy chậm |
| `F01` | Lệnh tần số 1 | 0 hoặc 4 | Chỉ dùng khi X1,X2 **đều hở**; để 10 Hz cho an toàn |

Bảng chân trị sau khi cài:

| X1 | X2 | Tần số chạy |
|---|---|---|
| ĐÓNG | hở | `C05` = 50 Hz (cao) |
| hở | ĐÓNG | `C06` = 10 Hz (dò tầng) |
| ĐÓNG | ĐÓNG | `C07` = 10 Hz (an toàn) |
| hở | hở | `F01` (dự phòng) |

### 5.3 Nhóm tăng/giảm tốc & êm ái

| Mã | Tên | Đặt | Ghi chú |
|---|---|---|---|
| `F07` | Thời gian tăng tốc 1 | **2.5 s** | Chỉnh 2.0–3.5 s theo cảm giác |
| `F08` | Thời gian giảm tốc 1 | **2.5 s** | Ngắn quá → báo lỗi `OU` (quá áp) |
| `H07` | Kiểu ramp | **2** | S-curve mạnh = êm nhất (0 = tuyến tính) |
| `F23` | Tần số khởi động | **1.5 Hz** | Có moment ngay khi nhả phanh |
| `F25` | Tần số dừng | **1.5 Hz** | Cắt trước khi rơi về 0 |
| `F20` | Tần số bắt đầu hãm DC | **2.0 Hz** | Giữ cabin lúc phanh cơ ăn |
| `F21` | Mức hãm DC | **40 %** | Tăng nếu bị trôi khi dừng |
| `F22` | Thời gian hãm DC | **0.8 s** | Đủ để phanh cơ kẹp chặt |

### 5.4 Nhóm mô-men & bảo vệ (đặc thù thang máy)

| Mã | Tên | Đặt | Vì sao |
|---|---|---|---|
| `F37` | Kiểu tải | **1** (mô-men không đổi) | Thang máy là tải mô-men không đổi |
| `F42` | Chế độ điều khiển | **1** (dynamic torque vector) | Khỏe ở tốc độ thấp — cần `P02/P03` đúng |
| `F09` | Boost mô-men | theo máy | Tăng nếu ì lúc khởi động |
| `F43` | Giới hạn dòng | **0 = TẮT** | ⚠️ Thiết bị nâng **phải tắt** — giới hạn dòng làm mất lực giữ, cabin có thể tụt |
| `F14` | Chạy lại sau mất điện | **0 = báo lỗi** | ⚠️ Không bao giờ để thang tự chạy lại |
| `H04` | Số lần tự reset lỗi | **0 = tắt** | ⚠️ Lỗi phải do người kiểm tra, không tự thử lại |
| `F10/F11/F12` | Nhiệt điện tử motor | F11 = **dòng định mức motor** | Bảo vệ cháy motor |
| `F26` | Tần số sóng mang | 10–15 kHz | Cao = motor êm (nóng biến tần hơn) |
| `F00` | Khóa tham số | **1** sau khi cài xong | Chống vặn nhầm |

### 5.5 Ngõ ra

| Mã | Tên | Đặt | Ghi chú |
|---|---|---|---|
| `E20` | Chức năng Y1 | **0 = RUN** | Dùng nhả phanh cơ (mục 7) |
| `E27` | Chức năng 30A/B/C | 99 = ALM (mặc định) | Relay báo lỗi |

### 5.6 Cách sửa tham số trên bàn phím

```
[PRG/RESET] → chọn nhóm bằng [▲][▼] (F.. / E.. / C.. / H.. / P..) → [FUNC/DATA]
   → chọn số hiệu bằng [▲][▼] → [FUNC/DATA] (hiện giá trị)
   → sửa bằng [▲][▼] → [FUNC/DATA] (LƯU — hiện "SAVE"/nháy) → [PRG] thoát
```

Nếu không sửa được: `F00` đang = 1 (khóa) → đặt `F00 = 0` trước.
Nhiều tham số **chỉ đổi được khi thang đang dừng**.

---

## 6. Chỉnh vị trí vấu giảm tốc cho khớp với `F08`

Khoảng cách từ **vấu giảm tốc** đến **sàn tầng**:

```
S  ≈  V_cao × T_DEC ÷ 2   +   quãng bò (0.2–0.3 m)
```

Ví dụ thang 0.5 m/s, `F08` = 2.5 s → S ≈ 0.5 × 2.5 ÷ 2 + 0.25 ≈ **0.9 m**.

| Hiện tượng khi chạy thử | Cách chỉnh |
|---|---|
| Tới vấu tầng mà **còn nhanh**, dừng giật | Dời vấu giảm tốc **xa tầng hơn**, hoặc giảm `F08` |
| **Bò quá lâu** mới tới tầng (chậm, sốt ruột) | Dời vấu giảm tốc **gần tầng hơn** |
| Dừng **lệch sàn** | Dời **vấu tầng**; hoặc hạ `C06` (dò chậm hơn) |
| Xóc lúc khởi hành | Tăng `F07`, đặt `H07 = 2` |

> Nhớ: **cả 2 chiều** đều phải chỉnh — vấu giảm tốc chiều LÊN đặt **dưới** sàn tầng,
> chiều XUỐNG đặt **trên** sàn tầng (xem `docs/WALKTHROUGH_THANG_BIEN_TAN.md` §3.2).

---

## 7. Phanh cơ (thắng từ)

**Không** dùng relay của bo để điều khiển phanh — phải theo tín hiệu của biến tần
để phanh chỉ nhả khi motor đã có mô-men:

```
   PLC (+24V) ──┬──[ cuộn relay 24V ]──┬── Y1
                │                      │
                └──────[ diode ]───────┘      (diode ngược chiều, bảo vệ)
   Y1E ── CM

   Tiếp điểm relay đó → cuộn contactor phanh → cuộn phanh cơ
```

- `E20 = 0` (Y1 = RUN): biến tần bắt đầu xuất tần số → Y1 dẫn → **nhả phanh**;
  biến tần dừng → Y1 ngắt → **phanh đóng**.
- Y1 chịu tối đa **50 mA / 27 V** và chân `PLC` cấp tối đa ~50 mA → chọn **relay
  24 V loại cuộn dòng thấp** (hoặc module opto/SSR). Không đấu thẳng contactor lớn.
- Kết hợp `F22` (hãm DC 0.8 s) để cabin không trôi trong lúc phanh kẹp.
- Nếu thang hiện đã có mạch phanh chạy tốt → **giữ nguyên**, đừng đổi.

---

## 8. Điện trở xả TK80W120Ω

- Đã lắp sẵn, nối vào cặp chân **P(+) và DB** ở khối động lực.
- Nhiệm vụ: đốt năng lượng khi thang **hạ có tải** hoặc **lên không tải** — thiếu nó
  biến tần sẽ báo `OU` (quá áp) mỗi lần giảm tốc.
- Kiểm tra định kỳ: điện trở **nóng già là bình thường**, nhưng **cháy đen / đứt** thì
  phải thay đúng loại 80 W – 120 Ω.
- Đặt nơi thoáng, không chạm vật dễ cháy; dây chịu nhiệt.
- Nếu đời máy có tham số bảo vệ nhiệt điện trở xả (`F50/F51` trên một số dòng
  FRENIC), cài theo 80 W / 120 Ω; FRENIC-Mini có thể không có — tra manual.

---

## 9. An toàn bắt buộc

1. ⛔ **Không** lắp contactor cắt giữa biến tần và motor (U/V/W). Cắt an toàn phải
   ở phía **tín hiệu lệnh chạy** (FWD/REV) hoặc nguồn cấp vào biến tần.
2. ✅ Chuỗi cửa + công tắc hành trình cứng **nối tiếp trên dây FWD/REV** (mục 3.1).
3. ✅ `F14 = 0` và `H04 = 0` — thang **không bao giờ tự chạy lại** sau mất điện/lỗi.
4. ✅ `F43 = 0` — tắt giới hạn dòng (bắt buộc với thiết bị nâng).
5. ✅ Đợi **≥ 5 phút sau khi cắt nguồn** rồi mới chạm khối động lực (tụ DC còn điện).
6. ✅ Chạy thử **không tải** trước, đủ mọi cặp tầng 2 chiều, rồi mới chở người.

---

## 10. Mã lỗi Fuji thường gặp

| Mã | Nghĩa | Hướng xử lý cho thang |
|---|---|---|
| `OC1/OC2/OC3` | Quá dòng khi tăng tốc / giảm tốc / chạy đều | Tăng `F07`/`F08`; kiểm phanh có nhả không; tải nặng quá |
| `OU1/OU2/OU3` | Quá áp DC | **Kiểm tra điện trở xả** (đứt?); tăng `F08` |
| `LU` | Thấp áp nguồn | Kiểm nguồn 3 pha, mất pha, sụt áp |
| `OL1` / `OLU` | Quá tải motor / quá tải biến tần | Tải nặng, `F11` sai, thang bị kẹt ray |
| `OH1/OH3` | Quá nhiệt tản nhiệt / bên trong | Quạt bẩn, tủ kín, giảm `F26` |
| `dbH` | Quá nhiệt điện trở xả | Chạy quá nhiều lần liên tục; kiểm điện trở |
| `Er1…Er8` | Lỗi bộ nhớ / bàn phím / CPU / tuning | Reset; lỗi lặp → gọi kỹ thuật |

Xóa lỗi: bấm **RESET** *sau khi đã khắc phục nguyên nhân*.
Màn hình hiện **số** (vd `51.73`) = giá trị theo dõi bình thường, không phải lỗi.

---

## 11. Trình tự chạy thử với bo điều khiển

1. ☐ **Cắt lệnh chạy** (tháo dây FWD/REV), cài xong toàn bộ tham số mục 5.
2. ☐ Thử bằng tay ngay tại biến tần: chập tạm `X1–CM` → xem màn hình có nhảy lên
   **50.0 Hz** không; chập `X2–CM` → phải là **10.0 Hz**. Chưa đúng thì chưa đấu bo.
3. ☐ Đấu FWD/REV qua chuỗi an toàn. Chập tay `FWD–CM` → thang chạy lên chậm
   (vì X1 chưa đóng); thêm `X1–CM` → tăng tốc lên cao. **Đây chính là tăng/giảm tốc.**
4. ☐ Đấu 3 relay của bo. Chạy checklist §10 trong
   `docs/WALKTHROUGH_THANG_BIEN_TAN.md` (15 mục).
5. ☐ Chỉnh vị trí vấu giảm tốc theo mục 6 cho **từng tầng, cả 2 chiều**.
6. ☐ Chạy không tải 20–30 chu kỳ, kiểm tra: dừng ngang sàn, không giật, điện trở xả
   không quá nóng, không báo lỗi.
7. ☐ Đặt `F00 = 1` khóa tham số. Ghi lại toàn bộ giá trị đã cài vào sổ/dán trong tủ.

---

## 12. Tóm tắt "dây nào đi đâu"

| Từ bo STC15 | Đến biến tần | Qua |
|---|---|---|
| Relay LÊN (P2.1) | `FWD` | Chuỗi cửa + HT cứng trên |
| Relay XUỐNG (P2.2) | `REV` | Chuỗi cửa + HT cứng dưới |
| Relay TỐC ĐỘ – NO (P2.3) | `X1` | — |
| Relay TỐC ĐỘ – NC (P2.3) | `X2` | — |
| Relay TỐC ĐỘ – C | `CM` | — |
| (chân về chung của FWD/REV) | `CM` | — |

Ba tiếp điểm — chỉ vậy là có thang máy 2 cấp tốc độ, tăng giảm tốc êm.
