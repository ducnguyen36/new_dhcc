#include "common.h"
#include "lcd.h"

/**************** CAU HINH ****************/
// Tong so tang (2..9). Tang tret = 0, tang tren cung = SO_TANG-1.
#define SO_TANG 3

// Thoi gian chay toi da cho MOT DOAN giua 2 tang (giay).
#define THOI_GIAN_CHAY_TOI_DA 60

// Thoi gian khoa sau khi dung (x10ms) truoc khi cho chay lai.
#define KHOA_SAU_KHI_DUNG 100

// So lan doc lien tiep (x10ms) chong doi cho nut bam / cam bien.
#define SO_LAN_CHONG_DOI 3

// 1 = co chuoi an toan cua tang dau vao P33.
#define CO_TIEP_DIEM_CUA 1

// Kieu cong tac / cam bien hanh trinh (day, tang, giam toc):
// 1 = THUONG MO (NO), 0 = THUONG DONG (NC). Chon bang env THANG_NO/THANG_NC.
#ifndef CT_THUONG_MO
#define CT_THUONG_MO 1
#endif

#if CT_THUONG_MO
#define ct_day_tac_dong (!ct_day)
#define ct_dinh_tac_dong (!ct_dinh)
#define gt_len_tac_dong (!gt_len)
#define gt_xuong_tac_dong (!gt_xuong)
#else
#define ct_day_tac_dong (ct_day)
#define ct_dinh_tac_dong (ct_dinh)
#define gt_len_tac_dong (gt_len)
#define gt_xuong_tac_dong (gt_xuong)
#endif

// 1 = co cam bien giam toc (2 ngo vao gt_len/gt_xuong) + relay toc do cao.
// 0 = khong lap cam bien giam toc: bien tan tu giam tu toc do cao khi cat
//     RUN tai vau tang (do chinh xac dung tang thap hon).
#define CO_GIAM_TOC 1

// 1 = cua cabin tu dong (2 relay mo/dong + 2 cong tac mo het/dong het).
// 0 = cua tay: chi kiem tra chuoi an toan cua nhu ban cu.
#define CO_CUA_TU_DONG 1
#define THOI_GIAN_CUA_CHAY 100 // x100ms - qua 10s cua chua toi noi = ket
#define THOI_GIAN_CHO_CUA 60   // x100ms - cua mo cho 6s roi tu dong
#define SO_LAN_THU_DONG_CUA 3  // dong that bai N lan -> bao loi cua

// 1 = co module MP3 (DFPlayer) + loa thong bao.
#define CO_MP3 1
#define TRACK_DI_LEN 1    // 0001.mp3 "thang dang di len"
#define TRACK_DI_XUONG 2  // 0002.mp3 "thang dang di xuong"
#define TRACK_TOI_TANG 11 // 0011.mp3 "den tang tret", 0012 "tang 1", ...

// 1 = co module SIM A7680C: nhan tin bao loi.
#define CO_SIM_A7680C 1
#define SDT_BAO_LOI "0949847098"

/**************** TRANG THAI CHAY ****************/
#define DUNG 0
#define DANG_LEN 1
#define DANG_XUONG 2

/**************** TRANG THAI CUA ****************/
#define CUA_DONG_HET 0
#define CUA_DANG_MO 1
#define CUA_MO_CHO 2
#define CUA_DANG_DONG 3

/**************** MA PHIM MA TRAN ****************/
#define PHIM_MO_CUA 9
#define PHIM_DONG_CUA 10
#define PHIM_DU_PHONG 11
#define KHONG_PHIM 0xff
