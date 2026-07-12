#include "common.h"
#include "lcd.h"

/**************** CAU HINH ****************/
// Tong so tang (2..9). Tang tret = 0, tang tren cung = SO_TANG-1.
// - SO_TANG = 2: dau day y nhu ban cu (cam 2 = cong tac hanh trinh tren).
// - SO_TANG > 2: cam 2 la CAM BIEN TANG - gan vau/cong tac tai MOI tang
//   (tang 1, 2, ... tang tren cung), KHONG gan o tang tret (tret dung cam 1).
#define SO_TANG 2

// Thoi gian chay toi da cho MOT DOAN giua 2 tang (giay). Qua thoi gian nay
// chua gap cam bien tang / cong tac day thi tu dong dung va bao loi.
#define THOI_GIAN_CHAY_TOI_DA 60

// Thoi gian khoa sau khi dung (x10ms) truoc khi cho phep chay lai,
// bao ve contactor/motor khi dao chieu. 100 = 1 giay.
#define KHOA_SAU_KHI_DUNG 100

// So lan doc lien tiep (x10ms) de chong doi nut bam va cong tac hanh trinh.
#define SO_LAN_CHONG_DOI 3

// 1 = co dau tiep diem cua vao chan P33 (cua mo -> dung + huy lenh,
//     dong cua lai phai bam nut moi chay tiep).
// 0 = khong dung tiep diem cua (bo qua chan P33).
#define CO_TIEP_DIEM_CUA 1

// Kieu cong tac hanh trinh cua thang (chon khi build):
// 1 = THUONG MO (NO):   binh thuong ho, thang cham toi noi thi DONG xuong GND
// 0 = THUONG DONG (NC): binh thuong dong xuong GND, cham toi noi thi HO ra
//     (NC an toan hon: dut day tin hieu = coi nhu dang cham -> khong chay bua)
// Build PlatformIO: env THANG_NO -> NO, env THANG_NC -> NC.
#ifndef CT_THUONG_MO
#define CT_THUONG_MO 1
#endif

#if CT_THUONG_MO
#define ct_day_tac_dong (!ct_day)
#define ct_dinh_tac_dong (!ct_dinh)
#else
#define ct_day_tac_dong (ct_day)
#define ct_dinh_tac_dong (ct_dinh)
#endif

// 1 = co module MP3 (DFPlayer) + loa: thong bao khi chay len/xuong/toi tang.
// 0 = khong co module MP3.
#define CO_MP3 1

// So bai thong bao tren the nho (thu muc /MP3, dat ten 0001.mp3, 0002.mp3...)
#define TRACK_DI_LEN 1    // 0001.mp3 "thang dang di len"
#define TRACK_DI_XUONG 2  // 0002.mp3 "thang dang di xuong"
#define TRACK_TOI_TANG 11 // 0011.mp3 "da den tang tret", 0012 "tang 1", ...

// 1 = co module SIM A7680C: nhan tin bao loi ve so SDT_BAO_LOI.
// 0 = khong co module SIM.
#define CO_SIM_A7680C 1
#define SDT_BAO_LOI "0949847098"

/**************** TRANG THAI ****************/
#define DUNG 0
#define DANG_LEN 1
#define DANG_XUONG 2
