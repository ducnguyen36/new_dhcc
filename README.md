# Thang May Gia Dinh — Bo Dieu Khien Bien Tan (STC15)

Firmware bộ điều khiển thang máy/thang nâng gia đình chạy trên bo STC15F2K60S2
(tận dụng bo điều khiển đồng hồ cũ), điều khiển **biến tần 3 pha 2 cấp tốc độ**.

> Repo này được tách từ [`new_dhcc`](https://github.com/ducnguyen36/new_dhcc)
> (firmware đồng hồ) — hai sản phẩm độc lập, không merge chéo.

## Hai phiên bản

| Nhánh | Phiên bản | Dùng cho |
|---|---|---|
| **`main`** (thang_bien_tan) | `_THANGMAY_3.1B__` | Thang máy biến tần đầy đủ: nhiều tầng, xếp hàng lệnh gọi, cửa tự động, LED tầng, loa, SMS |
| **`thang_nang`** | `_THANGNANG_2.0A_` | Thang nâng đơn giản: relay "bấm hộ nút" tủ thang có sẵn, không biến tần |

## Tài liệu

- 📖 **[WALKTHROUGH.md](WALKTHROUGH.md)** — tóm tắt nhanh 1 trang
- 📚 **[docs/WALKTHROUGH_THANG_BIEN_TAN.md](docs/WALKTHROUGH_THANG_BIEN_TAN.md)** — toàn bộ hệ thống: đấu nối, nguyên lý, lắp đặt, checklist nghiệm thu, xử lý sự cố
- ⚙️ **[docs/BIEN_TAN.md](docs/BIEN_TAN.md)** — thông số biến tần từng hãng (Mitsubishi, LS, Delta, INVT, Yaskawa)
- 🔌 **[docs/BIEN_TAN_FUJI_FRN3.7C1S.md](docs/BIEN_TAN_FUJI_FRN3.7C1S.md)** — **đấu nối + cài đặt cho biến tần Fuji FRENIC-Mini đang dùng tại nhà** (tăng/giảm tốc 2 cấp)

## Build nhanh

```bash
# Sửa src/main.h: SO_TANG, SDT_BAO_LOI, CO_* theo thiết bị
pio run   # ra 2 bản: THANG_NO (cảm biến thường mở) và THANG_NC (thường đóng)
```

## An toàn

Đây là dự án thang **gia đình tự lắp** — bắt buộc có các lớp bảo vệ phần cứng
độc lập với firmware (chuỗi cửa cắt cứng, công tắc hành trình cứng 2 đầu hố,
phanh cơ theo relay biến tần). Xem mục An toàn trong tài liệu đầy đủ.
