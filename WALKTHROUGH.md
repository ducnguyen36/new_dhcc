# WALKTHROUGH — Thang Máy Gia Đình: Biến Tần + Cửa Tự Động + Phím Ma Trận

**Phiên bản:** `_THANGMAY_3.0A__` · **Branch:** `thang_bien_tan` · **Phần cứng:** bo điều khiển đồng hồ (STC15F2K60S2)

> Bản build theo kiểu công tắc/cảm biến hành trình: **`THANG_NO`** (thường mở) /
> **`THANG_NC`** (thường đóng) — áp dụng cho công tắc đáy, cảm biến tầng và 2 cảm
> biến giảm tốc.

Khác biệt so với bản `thang_nang` 2.0:
- **Điều khiển biến tần 3 pha, 2 cấp tốc độ** — tăng tốc êm khi rời tầng, giảm về
  tốc độ dò khi gần tới tầng đích → dừng tầng chính xác. Chi tiết đấu nối và thông
  số từng dòng biến tần (Mitsubishi, LS iG5A, Delta, INVT, Yaskawa): **`docs/BIEN_TAN.md`**.
- **Cửa cabin tự động** (mở/đóng bằng motor) + giám sát **chuỗi cửa tầng**.
- **Bàn phím ma trận 3×4 trong buồng**: chọn thẳng tầng 0–8, phím MỞ/ĐÓNG cửa —
  chỉ tốn 7 chân thay vì 11.

---

## 1. Sơ đồ đấu nối

### 1.1 Ngõ vào

| Tín hiệu | Chân | Cách đấu |
|---|---|---|
| Công tắc **ĐÁY** | P3.6 (cam 1) | Tại tầng trệt — mốc chuẩn tuyệt đối |
| Cảm biến **TẦNG** | P3.7 (cam 2) | Vấu tại **mỗi tầng trừ trệt** |
| Giảm tốc chiều **LÊN** | P3.2 | Vấu đặt **DƯỚI** mỗi tầng (xem BIEN_TAN.md §3) |
| Giảm tốc chiều **XUỐNG** | P1.0 | Vấu đặt **TRÊN** mỗi tầng |
| **Chuỗi cửa tầng** | P3.3 | Khóa liên động các cửa tầng nối tiếp → GND; hở = cấm chạy |
| Cửa cabin **MỞ hết** | P1.1 | Công tắc → GND khi cửa mở hết |
| Cửa cabin **ĐÓNG hết** | P1.3 | Công tắc → GND khi cửa đóng hết |
| Nút gọi các tầng | (ma trận) | Song song phím cùng tầng — xem 1.2 |
| Nút phụ **LÊN** (tùy chọn) | P3.5 | Nhích 1 tầng / dừng khẩn khi đang xuống |
| Nút phụ **XUỐNG** (tùy chọn) | P3.4 | Nhích 1 tầng / dừng khẩn khi đang lên / về chuẩn |

### 1.2 Bàn phím ma trận 3 cột × 4 hàng (trong buồng)

```
            C0=P2.4   C1=P2.5   C2=P2.6
R0=P1.4      TRỆT      TẦNG 1    TẦNG 2
R1=P1.5      TẦNG 3    TẦNG 4    TẦNG 5
R2=P1.6      TẦNG 6    TẦNG 7    TẦNG 8
R3=P1.7      MỞ CỬA    ĐÓNG CỬA  (dự phòng)
```

Phím thường mở, nối giao điểm hàng–cột (keypad màng 3×4 bán sẵn dùng được, chỉ
đấu 3 cột + 4 hàng = **7 dây**).

**Nút gọi tại các tầng đấu SONG SONG với phím cùng tầng của ma trận** (cùng giao
điểm hàng–cột, đấu tại bo) → bấm gọi là thang về đúng tầng, **không tốn thêm ngõ
vào**. Nhà 6 tầng: cả 6 nút gọi chỉ cần 5 dây trục (R0, R1, C0–C2). Đi cáp riêng,
tránh xa cáp động lực biến tần. Chi tiết: `docs/WALKTHROUGH_THANG_BIEN_TAN.md` §3.3.

### 1.3 Ngõ ra

| Relay | Chân | Đấu vào |
|---|---|---|
| **LÊN** | P2.1 | `FWD` biến tần |
| **XUỐNG** | P2.2 | `REV` biến tần |
| **TỐC ĐỘ CAO** | P2.3 | Đầu vào đa cấp tốc độ (dùng tiếp điểm C–NO–NC, xem BIEN_TAN.md §2) |
| **MỞ cửa cabin** | P2.7 | Motor cửa chiều mở (qua relay/contactor trung gian) |
| **ĐÓNG cửa cabin** | P4.4 | Motor cửa chiều đóng |
| **LED tầng** (74HC595) | P4.1/P4.3/P4.5 | Data/Clock/Latch → Q0..Q7 = đèn tầng 0..7 |
| Amply loa | P4.2 | Như bản 2.0 |
| Nguồn SIM | P2.0 | Như bản 2.0 |

**Đèn báo tầng đang chọn:** tầng nào trong hàng đợi thì LED tầng đó sáng, phục
vụ xong tự tắt; dừng khẩn/lỗi (xóa hàng đợi) → tắt hết đèn. Chi tiết đấu 74HC595:
`docs/WALKTHROUGH_THANG_BIEN_TAN.md` §2. Không dùng: `CO_LED_TANG 0`.

Module MP3 (P4.6/P4.7, BUSY P1.2) và SIM A7680C (P3.0/P3.1) giữ nguyên như bản 2.0
(thẻ nhớ `/MP3`: `0001` đi lên, `0002` đi xuống, `0011+` đến tầng).

---

## 2. Hoạt động

### Chạy giữa các tầng
1. Bấm **số tầng** trên bàn phím buồng, hoặc **nút gọi tại tầng** (song song phím
   cùng tầng) → nếu cửa đang mở thì tự đóng trước, xong chạy thẳng về tầng đó.
   **Chọn được nhiều tầng cùng lúc** (cả khi đang chạy): thang ghé lần lượt các
   tầng đã chọn theo **chiều đang chạy** (tầng gần nhất trước), hết lệnh phía
   trước mới quay đầu — như thang máy thật. Lệnh bấm quá muộn (đã qua vấu giảm
   tốc) được phục vụ ở lượt sau. Dừng khẩn/lỗi → xóa hàng đợi.
2. Rời tầng: `FWD/REV` + `TỐC ĐỘ CAO` → biến tần tăng tốc theo ramp → chạy đều.
3. Chạm **vấu giảm tốc của tầng đích** → cắt TỐC ĐỘ CAO → bò ở tốc độ dò.
   (Vấu giảm tốc của các tầng đi ngang qua bị bỏ qua — không giảm tốc giữa đường.)
4. Chạm **vấu tầng đích** → cắt chạy → dừng → loa đọc "đã đến tầng…" → **tự mở cửa**.
5. Cửa mở chờ 6 giây → tự đóng → sẵn sàng lệnh mới.

### Cửa
- **MỞ CỬA**: mở/giữ cửa (bấm khi đang đóng → mở lại nhường người vào).
- **ĐÓNG CỬA**: đóng ngay không chờ hết 6 giây.
- Đóng bị kẹt (10s không tới công tắc đóng hết) → tự mở ra thử lại, quá **3 lần**
  → báo `!LOI CUA CABIN` + **SMS**.
- Thang **chỉ chạy khi**: cửa cabin đóng hết **và** chuỗi cửa tầng kín. Chuỗi cửa
  hở giữa hành trình → dừng ngay.
- Bấm số tầng hiện tại khi đang đậu → chỉ mở cửa.

### Khi đang chạy
- **Phím số tầng vẫn nhận** — đăng ký vào hàng đợi, thang tự ghé nếu còn kịp
  giảm tốc.
- Nút phụ **ngược chiều** (P3.4/P3.5): **dừng khẩn cấp** + xóa hàng đợi.
- MỞ CỬA bị bỏ qua khi đang chạy (an toàn).

### Mất điện / mất mốc
`CHUA RO VI TRI` → bấm **phím TRỆT** (buồng/nút gọi trệt) hoặc nút phụ XUỐNG →
thang bò chậm (không tăng tốc cao) về trệt lấy mốc.

### Báo lỗi qua SMS (A7680C)
Quá thời gian chạy / lỗi công tắc / lỗi đếm tầng / **lỗi cửa cabin** — mỗi sự cố
nhắn 1 lần về `SDT_BAO_LOI`, chỉ nhắn khi thang đã dừng hẳn.

---

## 3. Màn hình LCD

| Dòng 2 (dòng 1 = `THANG MAY` trừ lỗi) | Ý nghĩa |
|---|---|
| `O TANG TRET` / `O TANG x` | Đậu tại tầng |
| `LEN DEN TANG x` / `XUONG DEN TANG x` | Đang chạy, đích x |
| `DANG VE T.TRET` | Đang về chuẩn |
| `DANG MO CUA` / `CUA DANG MO` / `DANG DONG CUA` | Trạng thái cửa cabin |
| `CUA TANG DANG MO` | Chuỗi cửa tầng hở — cấm chạy |
| `GIUA HAI TANG` | Dừng khẩn giữa tầng |
| `CHUA RO VI TRI` + `BAM GOI XUONG` | Cần về chuẩn |
| `!LOI CONG TAC HT` / `!LOI DEM TANG` / `!QUA THOI GIAN` / `!LOI CUA CABIN` | Các lỗi (kèm SMS) |

---

## 4. Cấu hình (`src/main.h`)

```c
#define SO_TANG               6    // 2..9
#define THOI_GIAN_CHAY_TOI_DA 60   // giây / đoạn tầng
#define CO_GIAM_TOC           1    // 0 nếu chưa lắp vấu giảm tốc
#define CO_CUA_TU_DONG        1    // 0 = cửa tay (chỉ giám sát chuỗi cửa)
#define THOI_GIAN_CUA_CHAY    100  // x100ms — kẹt cửa sau 10s
#define THOI_GIAN_CHO_CUA     60   // x100ms — cửa mở chờ 6s
#define SO_LAN_THU_DONG_CUA   3
#define CO_MP3                1
#define CO_SIM_A7680C         1
#define SDT_BAO_LOI "0949847098"   // NHỚ SỬA!
```

Build: `pio run` → `THANGMAY_3.0A__THANG_NO.hex` và `..._THANG_NC.hex` trong
`.pio/build/`.

---

## 5. Checklist chạy thử (bổ sung so với bản 2.0)

1. ☐ Test bàn phím: từng phím hiện đúng phản ứng (chọn tầng/mở/đóng cửa).
2. ☐ Giả lập chạy lên qua 2 tầng: kích vấu giảm tốc tầng giữa → relay TỐC ĐỘ CAO
   **không** nhả; kích vấu giảm tốc tầng đích → relay nhả; kích vấu tầng → dừng, cửa mở.
3. ☐ Cửa: mở hết → dừng motor mở; đóng chặn công tắc đóng-hết → sau 10s mở lại,
   3 lần → `!LOI CUA CABIN` + SMS.
4. ☐ Hở chuỗi cửa tầng khi đang "chạy" → relay chạy nhả ngay.
5. ☐ Biến tần: kiểm tra bảng thông số theo `docs/BIEN_TAN.md`, chạy không tải,
   chỉnh vị trí vấu giảm tốc cho cập bến êm.
