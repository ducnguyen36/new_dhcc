# THANG MÁY GIA ĐÌNH DÙNG BIẾN TẦN — Tóm tắt nhanh

**Firmware:** `_THANGMAY_3.1B__` · **Branch:** `thang_bien_tan` · **MCU:** STC15F2K60S2

> 📖 **Tài liệu đầy đủ: [`docs/WALKTHROUGH_THANG_BIEN_TAN.md`](docs/WALKTHROUGH_THANG_BIEN_TAN.md)**
> (đấu nối chi tiết, nguyên lý, lắp đặt – căn chỉnh, checklist 15 mục, xử lý sự cố)
> ⚙️ **Thông số biến tần từng hãng: [`docs/BIEN_TAN.md`](docs/BIEN_TAN.md)**

## Tính năng

- **Biến tần 3 pha, 2 cấp tốc độ**: tăng tốc êm theo ramp, giảm về tốc độ dò
  trước tầng đích, dừng chính xác — tối đa 9 tầng chỉ với 2 ngõ cam + 2 ngõ giảm tốc.
- **Xếp hàng lệnh gọi như thang máy thật**: chọn nhiều tầng cùng lúc (cả khi đang
  chạy); ưu tiên 1 = hướng đang chạy, ưu tiên 2 = tầng gần nhất; lệnh muộn tự
  dời lượt sau; dừng khẩn/lỗi xóa hàng đợi.
- **LED báo tầng đang chọn** (74HC595): sáng khi đăng ký, phục vụ xong tự tắt.
- **Phím ma trận 3×4** trong buồng; **nút gọi mỗi tầng song song phím cùng tầng**
  (6 tầng chỉ cần 5 dây trục, không tốn thêm ngõ vào).
- **Cửa cabin tự động** (chống kẹt, thử lại 3 lần) + chuỗi khóa liên động cửa tầng.
- **Loa MP3** thông báo đi lên/xuống/đến tầng; **SMS báo lỗi** qua SIM A7680C.
- Về chuẩn sau mất điện; watchdog; giới hạn 60 s/đoạn; 2 bản build **NO/NC**.

## Sơ đồ chân rút gọn

| Vào | Chân | | Ra | Chân |
|---|---|---|---|---|
| CT đáy (trệt) | P3.6 | | Relay LÊN → FWD | P2.1 |
| CB tầng (vấu mỗi tầng, trừ trệt) | P3.7 | | Relay XUỐNG → REV | P2.2 |
| CB giảm tốc LÊN (vấu dưới tầng) | P3.2 | | Relay TỐC ĐỘ CAO | P2.3 |
| CB giảm tốc XUỐNG (vấu trên tầng) | P1.0 | | Relay MỞ cửa | P2.7 |
| Chuỗi cửa tầng (kín = GND) | P3.3 | | Relay ĐÓNG cửa | P4.4 |
| CT cửa cabin MỞ/ĐÓNG hết | P1.1 / P1.3 | | LED 595 data/clock/latch | P4.1/P4.3/P4.5 |
| Ma trận: cột / hàng | P2.4–2.6 / P1.4–1.7 | | Amply loa | P4.2 |
| Nút phụ lên/xuống (dừng khẩn) | P3.5 / P3.4 | | Nguồn SIM | P2.0 |
| BUSY MP3 | P1.2 | | UART MP3 / SIM | P4.6-4.7 / P3.0-3.1 |

Ma trận: R0 = TRỆT,1,2 · R1 = 3,4,5 · R2 = 6,7,8 · R3 = MỞ CỬA, ĐÓNG CỬA, (dự phòng).

## Cách dùng

- **Buồng:** bấm số tầng (nhiều tầng được, đèn sáng) → thang ghé lần lượt theo
  chiều chạy. `MỞ/ĐÓNG CỬA` như thang máy thường.
- **Ngoài buồng:** bấm nút gọi tầng mình → thang tự về (ghé luôn nếu thuận đường).
- **Dừng khẩn:** nút phụ ngược chiều đang chạy → dừng + xóa hàng đợi.
- **Sau mất điện:** LCD báo `CHUA RO VI TRI` → bấm phím TRỆT → thang bò về trệt.

## Build

```bash
git checkout thang_bien_tan
# sửa src/main.h: SO_TANG (mặc định 6), SDT_BAO_LOI, CO_* theo thiết bị
pio run          # ra 2 file: THANGMAY_3.1B__THANG_NO.hex và ..._THANG_NC.hex
```

Cảm biến **thường mở** → nạp bản `THANG_NO`; **thường đóng** → `THANG_NC`
(để cabin giữa tầng, đo thông mạch cảm biến: thông = NC).

## An toàn bắt buộc (phần cứng, ngoài firmware)

1. Chuỗi cửa cắt cứng nối tiếp dây FWD/REV (lớp 2 sau ngõ vào P3.3).
2. Công tắc hành trình cứng trên-cùng/dưới-cùng cắt thẳng lệnh chạy.
3. Không đấu contactor giữa biến tần và motor; phanh cơ theo relay RUN của biến tần.
