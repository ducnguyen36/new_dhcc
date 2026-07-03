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

/**************** TRANG THAI ****************/
#define DUNG 0
#define DANG_LEN 1
#define DANG_XUONG 2
