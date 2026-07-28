# Đấu nối biến tần 3 pha cho thang máy — tăng/giảm tốc 2 cấp

Tài liệu cho branch `thang_bien_tan` (firmware `_THANGMAY_3.0A__`).

## 1. Nguyên lý điều khiển 2 cấp tốc độ

Bo chỉ đóng/mở **3 tiếp điểm relay** vào đầu vào số của biến tần — mọi việc
tăng/giảm tốc mượt là do **ramp của biến tần** đảm nhiệm:

```
tốc độ ▲
 CAO ───┤        ┌──────────────────┐
        │       /                    \            ┌ vấu giảm tốc
        │      / ← ramp ACC           \ ← ramp DEC│
 DÒ  ───┤     /                        └──────────┴───┐
        │    /                                         \  ← vấu tầng
   0 ───┴───┴──────────────────────────────────────────┴────► quãng đường
          rời tầng                            dò tầng      dừng
```

1. **Rời tầng:** bo đóng `FWD` (hoặc `REV`) + `TỐC ĐỘ CAO` → biến tần tự tăng tốc
   từ 0 lên tốc độ cao theo **thời gian ACC** (2–3.5 s) → êm, không giật.
2. **Gần tới tầng đích:** cabin chạm **vấu giảm tốc** → bo cắt `TỐC ĐỘ CAO` →
   biến tần giảm theo **thời gian DEC** xuống **tốc độ dò tầng** (~8–12 Hz).
3. **Tới tầng:** cabin bò chậm tới **vấu tầng** → bo cắt `FWD/REV` → biến tần
   ramp về 0 → phanh cơ đóng. Dừng tầng chính xác vì luôn cập bến ở tốc độ chậm.

Vấu giảm tốc chỉ đặt cho **tầng đích**: khi chạy ngang qua tầng giữa đường, bo
biết đó chưa phải đích (nhờ bộ đếm tầng) nên **không giảm tốc**, chạy xuyên qua
ở tốc độ cao.

## 2. Đấu bo điều khiển → biến tần

| Relay trên bo | Chân | Đấu vào biến tần | Ý nghĩa |
|---|---|---|---|
| Relay LÊN | P2.1 | `FWD` (chạy thuận) ↔ `COM` | Chạy lên |
| Relay XUỐNG | P2.2 | `REV` (chạy ngược) ↔ `COM` | Chạy xuống |
| Relay TỐC ĐỘ CAO | P2.3 | đầu vào đa cấp tốc độ ↔ `COM` | Chọn cấp tốc độ |

**Mẹo dùng tiếp điểm đảo (C–NO–NC) của relay tốc độ:** với biến tần yêu cầu
*mỗi cấp một đầu vào riêng* (như Mitsubishi RH/RM): chân **C** → COM, **NO** →
đầu vào tốc độ CAO, **NC** → đầu vào tốc độ DÒ — luôn có đúng một cấp được chọn.
Với biến tần kiểu *"không đầu vào = chạy theo tần số chính"* thì chỉ cần dây NO,
và đặt **tần số chính = tốc độ dò**.

## 3. Vấu giảm tốc — vị trí lắp

- **Vấu giảm tốc chiều LÊN** → ngõ vào `gt_len` (P3.2): đặt **DƯỚI mỗi tầng**.
- **Vấu giảm tốc chiều XUỐNG** → ngõ vào `gt_xuong` (P1.0): đặt **TRÊN mỗi tầng**.
- Cùng kiểu NO/NC với các cảm biến khác (theo bản build `THANG_NO`/`THANG_NC`).

**Khoảng cách vấu → sàn tầng:** `S ≈ V_cao × T_DEC ÷ 2 + quãng bò`.
Ví dụ thang 0.5 m/s, DEC 2.5 s → 0.63 m + ~0.25 m bò → đặt vấu **~0.8–1.0 m**
trước sàn. Chỉnh thực tế: tới vấu tầng mà còn nhanh → dời vấu xa hơn hoặc giảm
DEC; bò quá lâu → dời vấu gần lại.

## 4. Thông số tham khảo cho các dòng biến tần phổ biến

> Số hiệu tham số ghi theo trí nhớ tài liệu phổ biến — **luôn đối chiếu manual**
> của đúng model trước khi cài. Nguyên tắc chung: 1 cấp CAO (50 Hz), 1 cấp DÒ
> (8–12 Hz), ACC/DEC 2–3.5 s.

### 👉 Fuji FRENIC-Mini FRN3.7C1S-2J — **xem tài liệu riêng, đầy đủ**

Đây là biến tần đang dùng cho thang nhà: hướng dẫn chi tiết (sơ đồ chân thực tế,
SINK/SOURCE, bảng tham số đầy đủ, chỉnh vấu giảm tốc, phanh, điện trở xả, mã lỗi,
trình tự chạy thử) nằm ở **[`BIEN_TAN_FUJI_FRN3.7C1S.md`](BIEN_TAN_FUJI_FRN3.7C1S.md)**.
Tóm tắt: `F02=1`, `E01=0` (X1=SS1), `E02=1` (X2=SS2), `C05=50Hz`, `C06=10Hz`,
`F07/F08=2.5s`, `H07=2` (S-curve), `F43=0`, `F14=0`.

### Mitsubishi FR-D700 / E700
- `STF` = lên, `STR` = xuống, `SD` = COM (sink).
- Tốc độ: relay đảo → **RH** (NO) và **RM** (NC). `Pr.4` (RH) = 50 Hz,
  `Pr.5` (RM) = 10 Hz, `Pr.7` = ACC, `Pr.8` = DEC.

### LS iG5A (rất phổ biến ở VN)
- `P1` = FX (lên), `P2` = RX (xuống), `CM` = COM.
- Gán 1 đầu vào (vd `P3`) = **Speed-L** (nhóm I/O, I17+). Tần số chính (keypad,
  `Frq=0`) = **10 Hz (dò)**; bậc tốc độ **St1 = 50 Hz** khi P3 đóng.
  `ACC` / `dEC` ngay nhóm DRV.

### Delta VFD-M
- `M0` = FWD, `M1` = REV, `GND/DCM` = COM.
- Gán `M3` = multi-step 1 (Pr.39). Tần số chính (Pr.00 = keypad) = 10 Hz;
  bậc 1 `Pr.05` = 50 Hz. ACC `Pr.10`, DEC `Pr.11`.

### INVT GD20
- `S1` = FWD (P05.01=1), `S2` = REV (P05.02=2), `COM`.
- Gán `S3` = multi-step speed 1 (nhóm P05). Tần số chính (keypad) = 10 Hz;
  bậc 1 (nhóm P10) = 50 Hz. ACC P00.11, DEC P00.12.

### Yaskawa V1000
- `S1` = FWD, `S2` = REV, `SC` = COM.
- `S5` = multi-step ref 1 (H1-05=3): `d1-01` (không đầu vào) = **10 Hz dò**,
  `d1-02` (S5 đóng) = **50 Hz cao**. ACC `C1-01`, DEC `C1-02`.

## 5. Phanh cơ (thắng từ)

- Dùng **relay output của biến tần** (tín hiệu "đang chạy"/RUN: Mitsubishi
  `RUN`, iG5A `3A/3C`, Delta relay, Yaskawa `MA/MB`) để đóng contactor **nhả
  phanh**; biến tần dừng → relay nhả → phanh tự đóng.
- Không dùng relay của bo cho phanh — để biến tần tự quản phanh theo tần số,
  tránh nhả phanh khi motor chưa có moment.

## 6. Lưu ý an toàn bắt buộc

1. **Không đấu contactor cắt giữa biến tần và motor** (cắt tải khi đang chạy dễ
   hỏng IGBT). Cắt an toàn đặt ở phía **đầu vào tín hiệu** hoặc nguồn cấp.
2. **Chuỗi cửa cắt cứng:** ngoài ngõ vào P3.3 của bo, nên đấu chuỗi tiếp điểm
   cửa **nối tiếp với dây FWD/REV** (2 lớp: mềm + cứng) — cửa mở là biến tần
   mất lệnh chạy bất kể firmware.
3. Lắp thêm **công tắc hành trình cứng trên cùng / dưới cùng** cắt thẳng FWD/REV
   (lớp bảo vệ cuối, không qua firmware).
4. Đặt tần số dò ≥ tần số nhả phanh của biến tần để không bị trượt khi cập bến.
