#ifndef TRUE_H
#define TRUE_H
#include "stc15.h"

/*--------Khong duoc phep thay doi-------*/
#define		FOSC		12000000L

/**************** SO DO CHAN - BAN BIEN TAN + CUA + PHIM MA TRAN ********
 Bo dieu khien thang may dung bien tan 3 pha, 2 cap toc do
 (cao / do tang), cua cabin tu dong, ban phim ma tran 3x4.
*************************************************************************/

/*********** NUT PHU NGOAI BUONG (muc 0 = nhan, tuy chon) ***************/
// Nut goi tang chinh thuc dau SONG SONG voi phim cung tang cua ma tran.
// 2 nut nay la phu: nhich 1 tang / DUNG KHAN CAP khi dang chay (bam
// nguoc chieu) / ve chuan. Khong lap thi bo trong.
#define		goi_len			P35
#define		goi_xuong		P34

/*********** BAN PHIM MA TRAN 3 COT x 4 HANG (trong buong) ***************/
//        C0(P24)  C1(P25)  C2(P26)
// R0(P14)  TRET    TANG1    TANG2
// R1(P15)  TANG3   TANG4    TANG5
// R2(P16)  TANG6   TANG7    TANG8
// R3(P17)  MO CUA  DONG CUA (du phong)
#define		mt_cot0			P24
#define		mt_cot1			P25
#define		mt_cot2			P26
#define		mt_hang0		P14
#define		mt_hang1		P15
#define		mt_hang2		P16
#define		mt_hang3		P17

/*********** CAM BIEN VI TRI (kieu NO/NC theo CT_THUONG_MO) ***************/
// cam 1 cu: cong tac DAY - moc chuan tuyet doi tai tang tret
#define		ct_day			P36
// cam 2 cu: cam bien TANG - vau tai moi tang (tru tret)
#define		ct_dinh			P37
// cam bien GIAM TOC chieu LEN - vau dat DUOI moi tang
#define		gt_len			P32
// cam bien GIAM TOC chieu XUONG - vau dat TREN moi tang
#define		gt_xuong		P10

/*********** CUA ***************/
// Chuoi an toan cua TANG (khoa lien dong cac cua tang noi tiep):
// tat ca cua dong = dong xuong GND; ho (hoac dut day) = cam chay
#define		tiep_diem_cua	P33
// Cong tac cua cabin MO het (tac dong = dong xuong GND)
#define		ct_cua_mo		P11
// Cong tac cua cabin DONG het (tac dong = dong xuong GND)
#define		ct_cua_dong		P13

/*********** RELAY NGO RA (muc 1 = dong tiep diem) ***************/
// FWD bien tan - chay LEN (relay DEN cu - P21)
#define		RelayLen		P21
// REV bien tan - chay XUONG (relay SAC cu - P22)
#define		RelayXuong		P22
// Chon cap TOC DO CAO cua bien tan (relay RING cu - P23)
// dung tiep diem dao C-NO-NC: NO = dau vao toc do cao, NC = toc do do tang
#define		RelayTocDoCao	P23
// Motor MO cua cabin
#define		RelayCuaMo		P27
// Motor DONG cua cabin
#define		RelayCuaDong	P44

/*********** MODULE MP3 (DFPlayer - cong MP3 co san tren bo) ***************/
#define		mp3_playing		P12
#define		AmplyRelay		P42

/*********** MODULE SIM A7680C (cong SIM co san tren bo) ***************/
#define		gsm_pw			P20

#endif
