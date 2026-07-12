#ifndef TRUE_H
#define TRUE_H
#include "stc15.h"

/*--------Khong duoc phep thay doi-------*/
#define		FOSC		12000000L

/**************** SO DO CHAN THANG NANG ****************
 Dung lai phan cung bo dong ho:
 - 2 nut bam (keo xuong GND khi nhan, muc 0 = dang nhan)
 - 2 cong tac hanh trinh vao cong cam cu
 - 2 relay tren bo giu lenh chay LEN / XUONG
*******************************************************/

/*********** NUT BAM (muc 0 = nhan) ***************/
// Trong buong: mui ten LEN. Ngoai buong: nut goi o TANG TREN dau song song.
#define		nut_len			P35
// Trong buong: mui ten XUONG. Ngoai buong: nut goi o TANG TRET dau song song.
#define		nut_xuong		P34
// Tiep diem CUA: cua DONG = tiep diem dong xuong GND (muc 0).
// Cua mo (hoac dut day) = muc 1 -> dung ngay va huy lenh, khong cho chay.
// Khong dung tinh nang nay: dat CO_TIEP_DIEM_CUA 0 trong main.h
// hoac noi tat P33 xuong GND.
#define		tiep_diem_cua	P33

/*********** CONG TAC HANH TRINH ***************/
// Kieu NO (thuong mo) hay NC (thuong dong) chon bang CT_THUONG_MO
// trong main.h (build san 2 ban THANG_NO / THANG_NC).
// cam 1 cu: cong tac hanh trinh DUOI - thang cham dat (tang tret)
#define		ct_day			P36
// cam 2 cu: cong tac hanh trinh TREN - thang len toi noi (tang 1)
#define		ct_dinh			P37

/*********** RELAY NGO RA (muc 1 = dong tiep diem) ***************/
// Dau song song tiep diem nut mui ten LEN cua thang (relay DEN cu - P21)
#define		RelayLen		P21
// Dau song song tiep diem nut mui ten XUONG cua thang (relay SAC cu - P22)
#define		RelayXuong		P22

/*********** MODULE MP3 (DFPlayer - cong MP3 co san tren bo) ***************/
// Chan BUSY tu module (1 = dang phat nhac)
#define		mp3_playing		P12
// Relay cap nguon amply/loa
#define		AmplyRelay		P42

/*********** MODULE SIM A7680C (cong SIM co san tren bo) ***************/
// Cap nguon module SIM (1 = bat)
#define		gsm_pw			P20

#endif
