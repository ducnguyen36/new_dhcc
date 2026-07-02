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
// (Tuy chon) nut DUNG khan cap, khong dung thi bo trong.
#define		nut_dung		P33

/*********** CONG TAC HANH TRINH (muc 0 = tac dong) ***************/
// cam 1 cu: cong tac hanh trinh DUOI - thang cham dat (tang tret)
#define		ct_day			P36
// cam 2 cu: cong tac hanh trinh TREN - thang len toi noi (tang 1)
#define		ct_dinh			P37

/*********** RELAY NGO RA (muc 1 = dong tiep diem) ***************/
// Dau song song tiep diem nut mui ten LEN cua thang (relay DEN cu - P21)
#define		RelayLen		P21
// Dau song song tiep diem nut mui ten XUONG cua thang (relay SAC cu - P22)
#define		RelayXuong		P22

#endif
