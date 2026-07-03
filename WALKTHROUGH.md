# WALKTHROUGH — Firmware Thang Nâng Gia Đình 2 Tầng

**Phiên bản:** `_THANGNANG_1.0B_` · **Branch:** `thang_nang` · **Phần cứng:** bo điều khiển đồng hồ (STC15F2K60S2)

Firmware này thay thế hoàn toàn firmware đồng hồ, biến bo mạch cũ thành bộ điều khiển
thang nâng nhà 2 tầng (tầng trệt + tầng 1). Bấm nút **một lần** là thang tự chạy và
tự dừng khi tới nơi — không cần giữ nút như trước.

---

## 1. Tổng quan hoạt động

```
                 ┌──────────────┐  bấm LÊN   ┌──────────────┐
                 │              │ ─────────► │   ĐANG LÊN   │──┐
   chạm CTHT ──► │    DỪNG      │            │ (RelayLen=1) │  │ chạm CTHT trên (cam 2)
   hoặc lỗi      │ (2 relay tắt)│ ◄───────── └──────────────┘  │ / mở cửa / bấm nút
                 │              │    dừng                      │ / quá 60s
                 │              │ ─────────► ┌──────────────┐  │
                 └──────────────┘  bấm XUỐNG │  ĐANG XUỐNG  │◄─┘
                        ▲                    │(RelayXuong=1)│
                        └────────────────────└──────────────┘
                          chạm CTHT dưới (cam 1) / mở cửa / bấm nút / quá 60s
```

- **Bấm LÊN** (trong buồng, hoặc nút gọi ở tầng trên): nếu thang chưa ở trên → relay LÊN
  đóng và **giữ**, thang đi lên, chạm công tắc hành trình trên → dừng. Nếu thang đã ở
  trên sẵn → không làm gì.
- **Bấm XUỐNG** (trong buồng, hoặc nút gọi ở tầng trệt): tương tự theo chiều xuống,
  dừng khi chạm công tắc hành trình dưới.
- Nút gọi ngoài buồng đấu **song song** với nút trong buồng nên tự có đúng hành vi
  "gọi thang": thang ở khác tầng thì chạy về phía mình, ở đúng tầng thì đứng yên.

---

## 2. Sơ đồ đấu nối

### 2.1 Bảng chân

| Tín hiệu | Chân MCU | Vị trí cũ trên bo | Cách đấu |
|---|---|---|---|
| Nút **LÊN** | P3.5 | phím MODE | Nút nhấn → GND. Đấu song song: mũi tên LÊN trong buồng + nút gọi ở **tầng trên** |
| Nút **XUỐNG** | P3.4 | phím CỘNG (+) | Nút nhấn → GND. Đấu song song: mũi tên XUỐNG trong buồng + nút gọi ở **tầng trệt** |
| **Tiếp điểm cửa** | P3.3 | phím BACK | Cửa **ĐÓNG** = tiếp điểm **đóng** xuống GND. Cửa mở / đứt dây = hở (mức 1) |
| CTHT **dưới** (chạm đất) | P3.6 | cổng **cam 1** | Công tắc hành trình → GND, **đóng khi thang chạm đáy** |
| CTHT **trên** (tới tầng 1) | P3.7 | cổng **cam 2** | Công tắc hành trình → GND, **đóng khi thang lên tới nơi** |
| Relay **LÊN** | P2.1 | relay ĐÈN | Tiếp điểm relay đấu **song song tiếp điểm nút mũi tên LÊN** của tủ thang |
| Relay **XUỐNG** | P2.2 | relay SẠC | Tiếp điểm relay đấu **song song tiếp điểm nút mũi tên XUỐNG** của tủ thang |

> Toàn bộ định nghĩa chân nằm trong `src/true.h` — muốn đổi chân chỉ sửa một chỗ.

### 2.2 Sơ đồ nguyên lý (dạng chữ)

```
  NÚT BẤM (kéo xuống GND khi nhấn)          CÔNG TẮC HÀNH TRÌNH
  ─────────────────────────────────         ─────────────────────────────
   [LÊN buồng]──┬──● P3.5                    [CTHT đáy]────● P3.6 (cam 1)
   [Gọi trên ]──┘                            [CTHT đỉnh]───● P3.7 (cam 2)
   [XUỐNG buồng]─┬─● P3.4                     (đấu THẲNG về bo, KHÔNG đi
   [Gọi trệt  ]──┘                             qua tiếp điểm cửa!)
   [T.điểm cửa]────● P3.3
    (cửa đóng = nối GND)

  RELAY NGO RA (tiếp điểm khô)
  ─────────────────────────────────
   Relay LÊN  (P2.1) ──╫── song song nút LÊN của tủ điều khiển thang
   Relay XUỐNG(P2.2) ──╫── song song nút XUỐNG của tủ điều khiển thang
```

### 2.3 Lưu ý đấu nối quan trọng

1. **CTHT phải đấu thẳng về bo, không qua tiếp điểm cửa.** Nếu đi qua cửa, khi mở cửa
   giữa hành trình bo sẽ không đọc được CTHT.
2. **Tiếp điểm cửa cần một cặp tiếp điểm riêng** cho P3.3 (đa số công tắc cửa có 2 cặp).
   Mạch nút bấm đi qua cửa như đang có **giữ nguyên** → thành 2 lớp bảo vệ.
3. **Chưa lắp tiếp điểm cửa?** Nối tắt P3.3 xuống GND, hoặc sửa `CO_TIEP_DIEM_CUA` thành
   `0` trong `src/main.h`.
4. Relay của bo chỉ "bấm hộ" nút của tủ thang (dòng nhỏ). Mạch động lực contactor vẫn
   là của tủ thang cũ.

---

## 3. Tính năng an toàn

| Tính năng | Mô tả |
|---|---|
| **Mở cửa = dừng + hủy lệnh** | Đang chạy mà cửa mở → dừng ngay, **hủy lệnh hẳn**. Đóng cửa lại phải bấm nút mới chạy tiếp (thang không bao giờ tự chạy khi vừa đóng cửa) |
| **Fail-safe dây cửa** | Đứt dây tín hiệu cửa = coi như cửa mở → không cho chạy |
| **Dừng khẩn cấp** | Đang chạy, bấm **nút bất kỳ** → dừng ngay |
| **Giới hạn thời gian chạy** | Quá **60 giây** chưa tới nơi (CTHT hỏng, kẹt thang) → tự dừng, báo `!QUA THOI GIAN` |
| **Chống lỗi CTHT** | Cả 2 CTHT cùng tác động (chập/đấu sai) → báo lỗi, **từ chối chạy** |
| **Khóa đảo chiều** | Sau mỗi lần dừng, khóa **1 giây** mới nhận lệnh mới (bảo vệ contactor/motor) |
| **Khởi động an toàn** | Cấp điện: cả 2 relay tắt ngay lập tức, thang đứng yên chờ lệnh |
| **Liên động chiều** | Không bao giờ 2 relay cùng đóng |
| **Watchdog** | Firmware treo → chip tự reset → relay về trạng thái tắt |
| **Chống dội phím** | Mọi ngõ vào lọc 30 ms; giữ nút không bị lặp lệnh |

---

## 4. Màn hình LCD

Khi bật nguồn hiện version `_THANGNANG_1.0B_` trong 2 giây, sau đó:

| Màn hình | Dòng 1 | Dòng 2 | Ý nghĩa |
|---|---|---|---|
| Ở tầng trệt | `   THANG NANG   ` | `  O TANG TRET   ` | CTHT dưới đang tác động |
| Ở tầng 1 | `   THANG NANG   ` | `    O TANG 1    ` | CTHT trên đang tác động |
| Giữa 2 tầng | `   THANG NANG   ` | ` GIUA HAI TANG  ` | Đứng yên, không CTHT nào tác động |
| Đang lên | `   THANG NANG   ` | ` DANG DI LEN... ` | Relay LÊN đang giữ |
| Đang xuống | `   THANG NANG   ` | `DANG DI XUONG...` | Relay XUỐNG đang giữ |
| Cửa mở | `   THANG NANG   ` | `  CUA DANG MO   ` | Không nhận lệnh cho tới khi đóng cửa |
| Lỗi CTHT | `!LOI CONG TAC HT` | `KT CT DAY & DINH` | 2 CTHT cùng tác động — kiểm tra đấu dây |
| Quá thời gian | `!QUA THOI GIAN  ` | `BAM NUT THU LAI ` | Chạy 60s chưa tới — bấm nút để thử lại |

---

## 5. Thông số cấu hình (`src/main.h`)

```c
#define THOI_GIAN_CHAY_TOI_DA 60   // giây — chạy quá là tự dừng + báo lỗi
#define KHOA_SAU_KHI_DUNG     100  // x10ms — khóa 1 giây sau khi dừng
#define SO_LAN_CHONG_DOI      3    // x10ms — lọc dội 30ms cho mọi ngõ vào
#define CO_TIEP_DIEM_CUA      1    // 1: dùng tiếp điểm cửa P3.3; 0: bỏ qua
```

Chỉnh xong build lại là được. Ví dụ thang chạy chậm hết ~50 giây/hành trình thì nên
tăng `THOI_GIAN_CHAY_TOI_DA` lên `90`.

---

## 6. Cấu trúc mã nguồn

```
src/
├── main.c    ← toàn bộ logic thang (vòng quét 10ms + máy trạng thái)
├── main.h    ← thông số cấu hình + định nghĩa trạng thái
├── true.h    ← SƠ ĐỒ CHÂN (đổi chân sửa ở đây)
├── lcd.c/h   ← driver LCD 16x2 (giữ từ firmware đồng hồ)
└── common.h  ← kiểu dữ liệu u8/u16
include/
└── stc15.h   ← thanh ghi chip STC15
```

Luồng chính trong `main.c` — mỗi vòng lặp 10 ms:

1. **Đọc nút** LÊN / XUỐNG: đủ 3 lần đọc liên tiếp (30 ms) → phát **một** xung lệnh,
   giữ nút không phát lại.
2. **Đọc tiếp điểm cửa** và **2 CTHT** theo mức, có lọc dội.
3. **Máy trạng thái**:
   - `DANG_LEN`: đếm thời gian; gặp CTHT trên / cửa mở / lỗi / nút bấm / quá 60s → nhả relay, về `DUNG`, khóa 1s.
   - `DANG_XUONG`: đối xứng theo chiều xuống.
   - `DUNG`: cả 2 relay tắt; hết khóa + không lỗi + cửa đóng thì mới nhận lệnh mới.
4. **Cập nhật LCD** — chỉ vẽ lại khi nội dung thay đổi.

---

## 7. Build và nạp firmware

### Yêu cầu
- VS Code + extension **PlatformIO IDE** (toolchain SDCC tự tải về theo `platformio.ini`).

### Các bước

```bash
git fetch origin
git checkout thang_nang
```

Mở thư mục dự án trong VS Code → biểu tượng PlatformIO (sidebar) →
**Project Tasks → THANG → Build**. Hoặc từ terminal:

```bash
pio run              # build
pio run -t upload    # build + nạp qua cổng COM (tốc độ 57600)
```

File hex ra tại `​.pio/build/THANG/THANGNANG_1.0B.hex` — nạp bằng PlatformIO upload
hoặc công cụ STC-ISP như trước giờ (chip STC nạp lúc **vừa cấp nguồn**).

---

## 8. Checklist chạy thử lần đầu (QUAN TRỌNG)

Thử **chưa đấu relay vào tủ thang** trước (chỉ nghe tiếng relay đóng/nhả trên bo):

1. ☐ Cấp nguồn → LCD hiện version rồi hiện trạng thái, **cả 2 relay im**.
2. ☐ Chưa đấu gì vào P3.3 → LCD phải báo `CUA DANG MO`, bấm nút không có gì xảy ra
   (đúng fail-safe). Nối P3.3 xuống GND → hết báo.
3. ☐ Kích CTHT dưới (nối P3.6→GND) → LCD `O TANG TRET`. Bấm XUỐNG → không chạy (đã ở dưới). Bấm LÊN → relay LÊN đóng, LCD `DANG DI LEN...`.
4. ☐ Đang "lên", kích CTHT trên (P3.7→GND, nhả P3.6) → relay nhả, LCD `O TANG 1`.
5. ☐ Đang "lên", bấm nút bất kỳ → relay nhả ngay (dừng khẩn).
6. ☐ Đang "lên", hở P3.3 (mở cửa) → relay nhả; nối lại P3.3 → **không tự chạy lại**; bấm LÊN mới chạy.
7. ☐ Nối cả P3.6 và P3.7 xuống GND → LCD `!LOI CONG TAC HT`, bấm nút không chạy.
8. ☐ Không kích CTHT nào, cho chạy quá 60s → tự nhả relay, LCD `!QUA THOI GIAN`.
9. ☐ Sau mỗi lần dừng, trong ~1 giây bấm nút không ăn (khóa đảo chiều) — bình thường.

Tất cả đạt rồi mới đấu 2 relay vào tủ thang và chạy thử **không tải**, sau đó mới chở người.

---

## 9. Xử lý sự cố

| Hiện tượng | Nguyên nhân thường gặp | Cách xử lý |
|---|---|---|
| Bấm nút không ăn | Cửa chưa đóng / P3.3 chưa nối GND | Xem LCD có `CUA DANG MO` không; kiểm tra tiếp điểm cửa |
| | Đang trong 1s khóa sau dừng | Chờ 1 giây bấm lại |
| | LCD báo lỗi CTHT | Kiểm tra 2 đường CTHT có bị chập/đấu ngược |
| Thang không dừng ở tầng | CTHT không tác động / đứt dây | Kiểm tra công tắc + dây về cam 1/cam 2; nhờ timeout 60s thang vẫn tự dừng |
| Luôn báo `O TANG TRET` dù thang ở giữa | CTHT dưới kẹt/chập xuống GND | Thay/kiểm tra công tắc |
| `!QUA THOI GIAN` thường xuyên dù thang chạy tốt | Hành trình thực tế > 60s | Tăng `THOI_GIAN_CHAY_TOI_DA` trong `src/main.h`, build lại |
| Relay đóng nhưng thang không chạy | Tiếp điểm relay chưa đấu đúng vào nút của tủ thang | Đo thông mạch tiếp điểm relay khi bo báo `DANG DI LEN` |
| Bo tự reset khi relay đóng | Nhiễu/sụt nguồn | Kiểm tra nguồn cấp bo, đi dây relay xa dây động lực |

---

## 10. Giới hạn & hướng nâng cấp

- Firmware điều khiển theo kiểu "bấm hộ nút" — tốc độ, phanh, động lực hoàn toàn do
  tủ thang cũ đảm nhiệm.
- Chưa có: nhớ lệnh gọi khi đang chạy (bấm là dừng chứ không xếp hàng), còi báo tới
  tầng, đếm số lần chạy. Cần thì thêm được — còn sẵn chân trống trên bo.
- Bo còn nguyên các cổng GSM/GPS/MP3 không dùng — có thể tận dụng sau (vd. loa báo
  "thang đang lên" bằng module MP3).
