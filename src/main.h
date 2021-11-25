#include "common.h"
#include "ds1307.h"
#include "lcd.h"
#include "eeprom.h"
#include "gsm.h"
#include "mp3.h"

//Read Voltage
u8 __idata dien_ap_nguon;
__bit dien_ap_thap;

//MP3
u8 __idata mp3_status;
u8 __idata mp3_date;
u8 __idata mp3_hour;
u8 __idata mp3_minute;
u8 __idata  mp3_doi_start;

//GSM
#define PHONE_LENGTH 10

u8  __xdata  phone_chinh[11] ;
u8  __xdata phone[11];
u8  __code  phone1[] = "0949847098";
u8  __code  phone2[] = "0988888901";

u8  __xdata lenh_sms[161]; 
__bit da_gui_bao_cao;
__bit da_gui_bao_cao_thang;

__bit gsm_reset;
u8 __xdata gsm_delay_reset;

u8 __xdata so_lan_goi_dien;
u8 __xdata delay_cuoc_goi_ke_tiep;
__bit co_cuoc_goi_toi;
__bit goi_dien_thoai;
__bit phone_chinh_so_sanh_that_bai;
__bit phone_phu_so_sanh_that_bai;
__bit bat_phone_phu;



__bit phone_header;
__bit co_tin_nhan_moi;
__bit pin_chinh_xac;
__bit sms_dang_xu_ly;
__bit have_cusd;
__bit lenh_khong_hop_le;
__bit have_quote;
u8  __xdata  sms_index;
u8  __xdata message_index;


//EEPROM
u8  __xdata eeprom_buf[SECTOR1_LENGTH];

//TIME
u8	__data  second;
u8	__data  minute;
u8	__data  hour;
u8	__data  hour12;
u8	__xdata  date,day,month,year;

u8	__data	gio[4];
u8	__data	phut[4];

u8  __xdata canhkim, may_canh_kim, delay_ve_kim;
u16	__xdata	PCA_Timer0;
u8  __xdata  ngay_reset_con_lai;
u8  __xdata xung_giay_check;

//MOTOR va CAM
u8  __xdata thoi_gian_doi_doc_cam[4];
u8  __xdata thoi_gian_doi_cam_chuan;
u8  __code     motor_step[]={128,144,16,48,32,96,64,192};
u8  __xdata    toc_do_motor_step;
u8  __data     step_index;
u8  __data     motor_index;
u8  __data     motor_index2;
__bit     motorDir,motorDir1, motorDir2;
__bit      trang_thai_cam, trang_thai_cam2;
__bit      cam_vao, cam_vao2;
__bit      cam_vao_han, cam_vao_han2;
__bit      cam_ra, cam_ra2;

__bit       GPS_time;
__bit		giay_out;
__bit		phut_out;
__bit		flip_pulse;

// __bit       step_run;

u8	__xdata	 lcd_index;
u8	__xdata	 lcd_process_index;
u8	__xdata	 lcd_data_index;

__bit      phim_mode_xuong;
__bit      phim_mode_nhan;
__bit      phim_mode_cu;
__bit      phim_mode_giu;
u8 __xdata phim_mode_doi;
__bit      phim_back_xuong;
__bit      phim_back_nhan;
__bit      phim_back_cu;
__bit      phim_back_giu;
u8 __xdata phim_back_doi;
__bit      phim_cong_xuong;
__bit      phim_cong_nhan;
__bit      phim_cong_cu;
__bit      phim_cong_giu;
u8 __xdata phim_cong_doi;

u8 __xdata mode;
u8 __xdata sub_mode;
u8 __xdata mode_wait;
__bit chop;
#define MAX_MODE 6
__code u8 mode_select[7][17] = {"      EXIT      ","  CHINH GIO KIM "," CHINH GIO THUC ","    CANH KIM    ","    TEST MP3    ","   DIEN THOAI   "," NGAY THANG NAM "};
#define TIME_MODE_WAIT  60
#define EXIT        0
#define GIOKIM      1
#define GIOTHUC     2
#define CANHKIM     3
#define MP3TEST     4
#define DIENTHOAI   5
#define DATE        6
#define SELECT      7

#define GIOCHUC     0
#define GIODVI      1
#define PHUTCHUC    2
#define PHUTDVI     3
#define GIO2CHUC    4
#define GIO2DVI     5
#define PHUT2CHUC   6
#define PHUT2DVI    7
#define GIO3CHUC    8
#define GIO3DVI     9
#define NGAYCHUC    4
#define NGAYDVI     5
#define THANGCHUC  6
#define THANGDVI   7
#define NAMCHUC     8
#define NAMDVI      9
#define PHUT3CHUC   10
#define PHUT3DVI    11
#define GIO4CHUC    12
#define GIO4DVI     13
#define PHUT4CHUC   14
#define PHUT4DVI    15
//GSM MODULE
__bit   gui_lenh_thanh_cong;
__bit   have_not;
// __bit   new_message;
__bit   nosim;
__bit   error;
__bit   skip_gsm_cmd;

u8 __xdata   nha_mang;
u8 __xdata   signal;

u8 __xdata   connect;
u8 __xdata   connect_time_out;
u8 __xdata   total_try_time_out;
u8 __xdata   gsm_serial_cmd;
u8 __xdata   have_time;

u8 __xdata   gsm_receive_pointer;
u8 __xdata   date_pointer;
u8 __xdata  gsm_receive_buf[15];
u8 __xdata  date_str[30];

//EXTRACT EEPROM
u8 __xdata so_motor;
u8 __xdata max_second, sim_test_sec;
__bit test_gps;
__bit may_dc,atmel_phat, motor_dung, motor_debug;
u8 __xdata sms_on;


//ERROR
__bit      mat_xung_giay;
__bit      loi_cam_motor1;
__bit      loi_cam_motor2;
__bit      loi_cam_motor3;
__bit      loi_cam_motor4;
__bit      loi_eeprom_tat_mo_den;
__bit      bao_cao_dien_ap_thap;

//CHARGE SAC ACQUI
u8  __xdata     phut_sac_xa_acqui_con_lai;

/*
		atmel dc so may -1
		 0	  0    00		0  1 ST Truc Tiep
		 0    0    01		1  2 ST Truc TIep
		 0    1    00		4  1 DC Truc Tiep
		 0    1    01		5  2 DC Truc Tiep
		 1    0    01		9  2 ST Driver  
		 1    0    10		10 3 ST Driver
		 1    0    11		11 4 ST Driver
		 1    1    01		13 2 DC Driver
		 1    1    10		14 3 DC Driver
		 1    1    11		15 4 DC Driver
	*/
//mac dinh motor eeprom
#define TT1ST 0
#define TT2ST 1
#define TT1DC 4
#define TT2DC 5
#define DR2ST 9
#define DR3ST 10
#define DR4ST 11
#define DR2DC 13
#define DR3DC 14
#define DR4DC 15
