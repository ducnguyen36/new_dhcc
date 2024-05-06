#include "common.h"

#include "lcd.h"


//Read Voltage
u8 __idata dien_ap_nguon;





//TEST MOTOR
__bit dc_run;
__bit step_run;
u16 __xdata so_vong_motor_quay;	






u16	__xdata	PCA_Timer0;


//MOTOR va CAM
u8  __xdata thoi_gian_doi_doc_cam[1];
u8  __xdata thoi_gian_doi_cam_chuan;
u8  __code     motor_step[]={128,144,16,48,32,96,64,192};
u8  __xdata    toc_do_motor_step;
u8  __data     step_index;

__bit     motorDir;
__bit      trang_thai_cam, trang_thai_cam2;
__bit      cam_vao;
__bit      cam_vao_han;
__bit      cam_ra;


__bit		giay_out;

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

