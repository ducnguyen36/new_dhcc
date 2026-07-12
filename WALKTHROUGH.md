# WALKTHROUGH — Firmware Thang Nâng Gia Đình Nhiều Tầng

**Phiên bản:** `_THANGNANG_2.0A_` · **Branch:** `thang_nang` · **Phần cứng:** bo điều khiển đồng hồ (STC15F2K60S2)

> Firmware có **2 bản build** theo kiểu công tắc hành trình:
> **`THANG_NO`** — công tắc **thường mở** (chạm tới nơi thì đóng xuống GND)
> **`THANG_NC`** — công tắc **thường đóng** (chạm tới nơi thì hở ra)
> Nạp đúng bản cho từng thang. Xem mục 2.4.

Tính năng chính bản 2.0:
- **Nhiều tầng** (2–9 tầng) nhưng vẫn chỉ dùng **2 ngõ cam** như cũ (không đổi bo mạch).
- **Thông báo bằng loa** (module MP3 có sẵn cổng trên bo): khi chạy lên, chạy xuống, và khi đến tầng.
- **Nhắn tin báo lỗi** về điện thoại qua module **SIM A7680C** (cổng SIM có sẵn trên bo).

---

## 1. Nguyên lý nhiều tầng với 2 ngõ cam

```
 tầng 3 ──▓── vấu cảm biến      cam 1 (P3.6) = công tắc ĐÁY: mốc chuẩn
 tầng 2 ──▓── vấu cảm biến                     tuyệt đối tại tầng trệt
 tầng 1 ──▓── vấu cảm biến      cam 2 (P3.7) = CẢM BIẾN TẦNG: chạm vấu
 trệt   ──█── công tắc đáy                     tại MỖI tầng (trừ trệt)
```

- Tại **mỗi tầng (trừ trệt)** gắn một **vấu/cữ** tác động vào công tắc nối về **cam 2**
  (công tắc con lăn, hoặc công tắc từ + nam châm đều được).
- Bo **đếm số vấu** cabin đi qua để biết đang ở tầng nào; **công tắc đáy (cam 1)** là mốc
  chuẩn — mỗi lần chạm đáy, bộ đếm được đồng bộ lại về tầng trệt.
- Vị trí dừng tầng = mép vấu → căn chỉnh vị trí vấu để cabin dừng ngang sàn (bù trớn).
- **KHÔNG gắn vấu ở tầng trệt** — trệt đã có công tắc đáy; nếu cả 2 cùng tác động bo sẽ
  báo lỗi đấu dây.
- **Nhà 2 tầng (`SO_TANG = 2`): đấu y hệt bản cũ** — vấu ở tầng 1 chính là công tắc
  hành trình trên, không phải đổi gì.

### Mất điện thì sao? (về chuẩn)

Sau khi mất điện, nếu cabin không đậu ở trệt (hoặc ở tầng 1 khi `SO_TANG=2`) thì bo
**chưa biết cabin ở tầng nào** — LCD báo `CHUA RO VI TRI`, chỉ nhận **nút XUỐNG**:
thang chạy xuống một mạch về trệt (bỏ qua đếm tầng), chạm công tắc đáy → lấy lại mốc,
hoạt động bình thường.

---

## 2. Sơ đồ đấu nối

### 2.1 Bảng chân

| Tín hiệu | Chân MCU | Vị trí cũ trên bo | Cách đấu |
|---|---|---|---|
| Nút **LÊN** | P3.5 | phím MODE | Nút nhấn → GND (buồng + nút gọi đấu song song) |
| Nút **XUỐNG** | P3.4 | phím CỘNG (+) | Nút nhấn → GND (buồng + nút gọi đấu song song) |
| **Tiếp điểm cửa** | P3.3 | phím BACK | Cửa **ĐÓNG** = tiếp điểm **đóng** xuống GND |
| Công tắc **ĐÁY** | P3.6 | cổng **cam 1** | Công tắc hành trình tại tầng trệt (NO/NC xem 2.4) |
| **Cảm biến TẦNG** | P3.7 | cổng **cam 2** | Công tắc + vấu tại mỗi tầng, trừ trệt (NO/NC xem 2.4) |
| Relay **LÊN** | P2.1 | relay ĐÈN | Song song tiếp điểm nút mũi tên LÊN của tủ thang |
| Relay **XUỐNG** | P2.2 | relay SẠC | Song song tiếp điểm nút mũi tên XUỐNG của tủ thang |
| Nguồn **SIM** | P2.0 | như cũ | Bo tự bật khi `CO_SIM_A7680C = 1` |
| Module **MP3** | P4.6/P4.7 | cổng MP3 | Cắm DFPlayer như bản đồng hồ |
| BUSY MP3 | P1.2 | như cũ | Có sẵn trên cổng MP3 |
| Relay **AMPLY** | P4.2 | relay amply | Cấp nguồn loa/amply, bo tự bật khi phát |

> Toàn bộ định nghĩa chân trong `src/true.h` — muốn đổi chỉ sửa một chỗ.

### 2.2 Lưu ý đấu nối

1. **Công tắc đáy + cảm biến tầng đấu thẳng về bo, KHÔNG qua tiếp điểm cửa.**
2. **Tiếp điểm cửa** cần cặp tiếp điểm riêng cho P3.3. Mạch nút qua cửa giữ nguyên
   (2 lớp bảo vệ). Chưa lắp: nối tắt P3.3 → GND hoặc đặt `CO_TIEP_DIEM_CUA 0`.
3. Với >2 tầng, nút gọi ngoài buồng đấu song song chỉ mang nghĩa "lên/xuống 1 tầng",
   không tự về đúng tầng người gọi (bo chỉ có 2 ngõ vào nút).

### 2.3 Chọn kiểu công tắc (NO / NC)

Áp dụng cho **cả công tắc đáy lẫn cảm biến tầng** (phải cùng kiểu):

| Bản firmware | Kiểu công tắc | Bình thường | Khi tác động |
|---|---|---|---|
| **`THANG_NO`** | Thường mở | hở (mức 1) | **đóng** xuống GND |
| **`THANG_NC`** | Thường đóng | đóng GND (mức 0) | **hở** ra |

Nhận biết: để cabin **giữa 2 tầng**, đo thông mạch công tắc — thông = NC, không thông = NO.
**Nên dùng NC** nếu được chọn: đứt dây = coi như đang chạm → thang không chạy bừa.

### 2.4 Thẻ nhớ MP3 (thông báo bằng loa)

Chép vào thẻ nhớ của DFPlayer, thư mục **`/MP3`**, tên file 4 chữ số:

| File | Nội dung ghi âm |
|---|---|
| `0001.mp3` | "Thang đang đi lên" |
| `0002.mp3` | "Thang đang đi xuống" |
| `0011.mp3` | "Đã đến tầng trệt" |
| `0012.mp3` | "Đã đến tầng 1" |
| `0013.mp3` | "Đã đến tầng 2" |
| `001x.mp3` | ... (11 + số tầng, đủ số tầng nhà bạn) |

Bo bật relay amply (P4.2) trong lúc phát, xong tự tắt. Không có module MP3: đặt
`CO_MP3 0` trong `src/main.h`.

### 2.5 Module SIM A7680C (nhắn tin báo lỗi)

- Cắm module vào cổng SIM như bản đồng hồ, lắp SIM còn tiền/còn hạn.
- Sửa **số nhận tin** trong `src/main.h`: `#define SDT_BAO_LOI "09xxxxxxxx"`.
- Khi thang gặp lỗi (mục 4) bo nhắn tin **một lần cho mỗi sự cố**, ví dụ:
  `LOI THANG NANG: chay qua thoi gian chua toi tang, thang dang dung gan tang 2`
- Không có module SIM: đặt `CO_SIM_A7680C 0`.
- Lưu ý: SMS chỉ gửi khi thang **đã dừng hẳn** (an toàn), và module cần ~20–30 giây
  sau khi cấp điện mới bám mạng — lỗi xảy ra ngay lúc vừa bật nguồn có thể không gửi được.

---

## 3. Cách sử dụng nút bấm

| Tình huống | Bấm | Kết quả |
|---|---|---|
| Đang đứng yên | **LÊN** | Đi lên **1 tầng** (loa: "thang đang đi lên") |
| Đang đứng yên | **XUỐNG** | Đi xuống **1 tầng** |
| **Đang đi lên** | **LÊN** | Đi thêm 1 tầng nữa (bấm 2 lần từ trệt = lên tầng 2) |
| **Đang đi lên** | **XUỐNG** | **DỪNG khẩn cấp** |
| **Đang đi xuống** | **XUỐNG** | Xuống thêm 1 tầng nữa |
| **Đang đi xuống** | **LÊN** | **DỪNG khẩn cấp** |
| `CHUA RO VI TRI` | **XUỐNG** | Chạy về trệt lấy mốc (về chuẩn) |
| Tới tầng | — | Tự dừng + loa "đã đến tầng ..." |

Cửa mở: mọi nút vô hiệu, đang chạy thì dừng ngay và **hủy lệnh** (đóng cửa xong phải
bấm lại — thang không bao giờ tự chạy khi vừa đóng cửa).

---

## 4. Tính năng an toàn

| Tính năng | Mô tả |
|---|---|
| Mở cửa = dừng + hủy lệnh | Kèm fail-safe: đứt dây cửa = coi như cửa mở |
| Dừng khẩn cấp | Bấm nút ngược chiều khi đang chạy |
| Giới hạn thời gian | Quá **60 giây/đoạn tầng** chưa gặp cảm biến → dừng, báo `!QUA THOI GIAN` + **SMS** |
| Lỗi công tắc | Công tắc đáy + cảm biến tầng cùng tác động → từ chối chạy, báo `!LOI CONG TAC HT` + **SMS** |
| Lỗi đếm tầng | Đếm vượt tầng trên cùng → dừng, bắt về chuẩn, báo `!LOI DEM TANG` + **SMS** |
| Mất mốc sau mất điện | Bắt về chuẩn (chỉ cho chạy xuống về trệt) |
| Khóa đảo chiều | 1 giây sau mỗi lần dừng |
| Khởi động an toàn | Cấp điện: relay tắt ngay, chờ lệnh |
| Liên động chiều | Không bao giờ 2 relay cùng đóng |
| Watchdog | Firmware treo → tự reset → relay tắt |
| Chống dội | Mọi ngõ vào lọc 30 ms |

---

## 5. Màn hình LCD

Bật nguồn hiện version 2 giây, sau đó:

| Dòng 1 | Dòng 2 | Ý nghĩa |
|---|---|---|
| `   THANG NANG   ` | `  O TANG TRET   ` / `    O TANG x    ` | Đậu tại tầng |
| `   THANG NANG   ` | ` GIUA HAI TANG  ` | Đứng yên giữa tầng (sau dừng khẩn) |
| `   THANG NANG   ` | `LEN DEN TANG x  ` | Đang lên, đích = tầng x |
| `   THANG NANG   ` | `XUONG DEN TANG x` / `XUONG DEN T.TRET` | Đang xuống |
| `   THANG NANG   ` | ` DANG VE T.TRET ` | Đang chạy về chuẩn |
| `   THANG NANG   ` | `  CUA DANG MO   ` | Cửa mở, không nhận lệnh |
| `CHUA RO VI TRI  ` | `BAM XUONG VE TRE` | Mất mốc — bấm XUỐNG về trệt |
| `!LOI CONG TAC HT` | `KT DAY & CB TANG` | 2 công tắc cùng tác động |
| `!LOI DEM TANG   ` | ` BAM NUT XUONG  ` | Đếm vượt giới hạn — về chuẩn lại |
| `!QUA THOI GIAN  ` | `BAM NUT THU LAI ` | Chạy quá 60s/đoạn |

---

## 6. Thông số cấu hình (`src/main.h`)

```c
#define SO_TANG               2    // tổng số tầng (2..9), trệt = tầng 0
#define THOI_GIAN_CHAY_TOI_DA 60   // giây cho MỖI ĐOẠN giữa 2 tầng
#define KHOA_SAU_KHI_DUNG     100  // x10ms — khóa 1 giây sau khi dừng
#define SO_LAN_CHONG_DOI      3    // x10ms — lọc dội 30ms
#define CO_TIEP_DIEM_CUA      1    // 1: dùng tiếp điểm cửa P3.3
#define CT_THUONG_MO          1    // chọn bằng env build THANG_NO / THANG_NC
#define CO_MP3                1    // 1: thông báo bằng loa qua DFPlayer
#define TRACK_DI_LEN          1    // số bài trên thẻ nhớ
#define TRACK_DI_XUONG        2
#define TRACK_TOI_TANG        11   // bài "đến tầng" = 11 + số tầng
#define CO_SIM_A7680C         1    // 1: nhắn tin báo lỗi qua A7680C
#define SDT_BAO_LOI "0949847098"   // SỐ NHẬN TIN BÁO LỖI — NHỚ SỬA!
```

---

## 7. Build và nạp firmware

```bash
git fetch origin && git checkout thang_nang
pio run                          # build CẢ 2 bản NO + NC
pio run -e THANG_NC              # chỉ build bản thường đóng
pio run -e THANG_NO -t upload    # build + nạp bản thường mở
```

File hex:

```
.pio/build/THANG_NO/THANGNANG_2.0A_THANG_NO.hex   ← công tắc thường mở
.pio/build/THANG_NC/THANGNANG_2.0A_THANG_NC.hex   ← công tắc thường đóng
```

Trước khi build, mở `src/main.h` chỉnh: **`SO_TANG`**, **`SDT_BAO_LOI`**, và
`CO_MP3` / `CO_SIM_A7680C` theo thiết bị thực có. Nạp đúng bản NO/NC cho đúng thang.

---

## 8. Checklist chạy thử lần đầu (QUAN TRỌNG)

Thử trên bàn, **chưa đấu relay vào tủ thang** (nghe tiếng relay trên bo):

> Các bước viết cho bản **`THANG_NO`** ("kích" = nối chân xuống GND).
> Bản **`THANG_NC`** làm ngược lại (bình thường nối GND, "kích" = hở ra) —
> lúc chưa đấu gì bản NC báo `!LOI CONG TAC HT` là fail-safe đúng.

1. ☐ Cấp nguồn → LCD hiện version, relay im. Chưa nối P3.3 → `CUA DANG MO`;
   nối P3.3→GND → hết báo.
2. ☐ Không kích gì → `CHUA RO VI TRI`. Bấm LÊN → không chạy. Bấm XUỐNG → relay
   XUỐNG đóng, ` DANG VE T.TRET `, loa "thang đang đi xuống".
3. ☐ Kích công tắc đáy (P3.6) → relay nhả, `O TANG TRET`, loa "đã đến tầng trệt".
4. ☐ Bấm LÊN → relay LÊN đóng, `LEN DEN TANG 1`. Nhả P3.6, sau đó kích P3.7 (vấu
   tầng 1)... với `SO_TANG>2`: nhả rồi kích lại P3.7 lần nữa cho mỗi tầng — đủ số
   lần thì relay nhả, `O TANG x`, loa báo đến tầng.
5. ☐ Thử bấm LÊN 2 lần liên tiếp từ trệt → đích hiển thị tăng lên `LEN DEN TANG 2`,
   thang chỉ dừng sau khi qua đủ 2 vấu.
6. ☐ Đang chạy bấm nút ngược chiều → dừng ngay; cùng chiều → tăng/giảm đích.
7. ☐ Đang chạy hở P3.3 (mở cửa) → dừng; đóng lại → **không tự chạy**; bấm mới chạy.
8. ☐ Kích đồng thời P3.6 + P3.7 → `!LOI CONG TAC HT` + điện thoại nhận SMS.
9. ☐ Cho chạy không kích gì quá 60s → `!QUA THOI GIAN` + SMS báo đang gần tầng nào.
10. ☐ MP3: kiểm tra loa đọc đúng bài (amply chỉ bật lúc phát).

Đạt hết mới đấu relay vào tủ thang, chạy thử **không tải**, rồi mới chở người.

---

## 9. Xử lý sự cố

| Hiện tượng | Nguyên nhân | Xử lý |
|---|---|---|
| Bấm không ăn | Cửa mở / P3.3 chưa nối GND / đang khóa 1s / đang lỗi | Xem LCD báo gì |
| `CHUA RO VI TRI` sau mỗi lần bật nguồn | Bình thường nếu cabin không đậu ở trệt | Bấm XUỐNG về chuẩn |
| Dừng sai tầng, lệch dần | Vấu/cảm biến tầng dội hoặc bỏ nhịp | Kiểm tra vấu chắc chắn, công tắc nhạy; chạy về trệt để đồng bộ lại |
| `!LOI DEM TANG` | Cảm biến tầng dội thêm nhịp | Như trên; bấm XUỐNG về chuẩn |
| Không nhận SMS | Module chưa bám mạng / SIM hết tiền / sai `SDT_BAO_LOI` | Chờ 30s sau bật nguồn; kiểm tra SIM, số nhận |
| Loa không kêu | Sai tên file/thư mục thẻ nhớ, thiếu bài | Thư mục `/MP3`, tên `0001.mp3`... đủ bài `11+tầng` |
| Loa rè/nhỏ | Amply/loa | Kiểm tra relay P4.2 có đóng lúc phát |
| Thang chạy quá đích rồi báo lỗi | Đặt vấu quá sát mép dừng | Dịch vấu sớm hơn để bù trớn |
| `!QUA THOI GIAN` dù chạy tốt | Đoạn tầng thực tế > 60s | Tăng `THOI_GIAN_CHAY_TOI_DA` |

---

## 10. Giới hạn & hướng nâng cấp

- Bo "bấm hộ nút" — tốc độ, phanh, động lực do tủ thang cũ đảm nhiệm.
- Nút gọi ngoài buồng với >2 tầng chỉ là "lên/xuống 1 tầng" (bo chỉ có 2 ngõ vào nút).
- SMS chỉ **gửi** báo lỗi, không nhận lệnh điều khiển từ xa (cố tình — an toàn).
- Có thể thêm: báo tầng khi đi ngang qua (không chỉ khi dừng), nhớ hàng đợi lệnh gọi,
  SMS báo cáo định kỳ. Cần thì yêu cầu thêm.
