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
u8 __idata mp3_hour;
u8 __idata mp3_minute;
u8 __data  mp3_doi_start;

//GSM
#define PHONE_LENGTH 10
u8  __code  phone_chinh[] = "0949847098";
// u8  __code  phone_chinh[] = "0988888901";
u8  __xdata lenh_sms[161]; 
__bit da_gui_bao_cao;
__bit da_gui_bao_cao_thang;
__bit gsm_reset;
u8 __data message_receive;
u8 __xdata gsm_delay_reset;
__bit phone_chinh_so_sanh_that_bai;
__bit phone_phu_so_sanh_that_bai;
__bit bat_phone_phu;
__bit phone_header;
__bit pin_chinh_xac;
__bit sms_dang_xu_ly;
__bit have_cusd;
__bit lenh_khong_hop_le;
__bit have_quote;
u8  __data  sms_index;
u8  __data message_index;


//EEPROM
u8  __xdata eeprom_buf[SECTOR1_LENGTH];

//TIME
u8	__data  second;
u8	__data  minute;
u8	__data  hour;
u8	__data  hour12;
u8	__data  date;

u8	__data	gio[2];
u8	__data	phut[2];

u8  __xdata canhkim, canhkimbuoc, delay_ve_kim;
u16	__data	PCA_Timer0;
u8  __data  ngay_reset_con_lai;
u8  __xdata xung_giay_check;

//MOTOR va CAM
u8 __xdata thoi_gian_doi_doc_cam;
u8 __xdata thoi_gian_doi_doc_cam_step;
u8 __code motor_step[]={128,144,16,48,32,96,64,192};
u8 __data step_index;
u8 __data motor_index;
__bit      trang_thai_cam;
__bit      cam_vao, cam_in_step;
__bit      cam_vao_han, cam_cover_step;
__bit      cam_ra, cam_out_step;

__bit       GPS_time;
__bit		giay_out;
__bit		phut_out;
__bit		flip_pulse;

// __bit       step_run;

u8	__xdata	 lcd_dis_buf[60];
u8	__data	 lcd_index;
u8	__data	 lcd_process_index;
u8	__data	 lcd_data_index;

u8	__data	 motorDir;
__bit      key_down1;
__bit      key_pressed1;
__bit      key_up1;
__bit      key_last1;
__bit      key_hold1;
u8         key_wait1;
__bit      key_down2;
__bit      key_pressed2;
__bit      key_up2;
__bit      key_last2;
__bit      key_hold2;
u8         key_wait2;
__bit      key_down3;
__bit      key_pressed3;
__bit      key_up3;
__bit      key_last3;
__bit      key_hold3;
u8         key_wait3;

u8 mode;
u8 sub_mode;
__bit chop;
__code u8 mode_select[][16] = {"      EXIT","  CHINH GIO KIM"," CHINH GIO THUC","    CANH KIM","    TEST MP3"};
u8 mode_wait;
#define TIME_MODE_WAIT  60
#define MAX_MODE 4
#define EXIT    0
#define GIOKIM  1
#define GIOTHUC 2
#define CANHKIM 3
#define MP3TEST 4
#define SELECT  5

#define GIOCHUC  0
#define GIODVI   1
#define PHUTCHUC 2
#define PHUTDVI  3
//GSM MODULE
__bit   gui_lenh_thanh_cong;
__bit   have_not;
__bit   new_message;

u8 __data   connect;
u8 __data   connect_time_out;
u8 __data   total_try_time_out;
u8 __data   gsm_serial_cmd;
u8 __data   have_time;

u8 __data   gsm_receive_pointer;
u8 __data   date_pointer;
u8 __xdata  gsm_receive_buf[15];
u8 __xdata  date_str[30];




//ERROR
__bit      mat_xung_giay;
__bit      loi_cam_motor;
__bit      loi_eeprom_tat_mo_den;

//CHARGE SAC ACQUI
u8  __xdata     phut_sac_xa_acqui_con_lai;
