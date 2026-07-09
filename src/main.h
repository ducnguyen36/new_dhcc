#include "common.h"
#include "lcd.h"

/**************** CAU HINH ****************/
// Thoi gian chay toi da 1 hanh trinh (giay). Qua thoi gian nay ma chua cham
// cong tac hanh trinh thi tu dong dung va bao loi (ke sensor hong / ket thang).
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

/**************** TRANG THAI ****************/
#define DUNG 0
#define DANG_LEN 1
#define DANG_XUONG 2
