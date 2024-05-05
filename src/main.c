#include "true.h"
#include "main.h"

// _IAP_CONTR = 0x60 //reset to ISP
//checksum line 24 col 32(758A) low ; col34 (758D) high ; checksum (04+low+high) -> 2 compliment
u8 __code ver[] = VERSION;


/*
	4.2.5 sua loi mp3
	4.5.0 chuyen sang choi nhac dang theo tuan
	4.5.1 thay doi test mp3 thanh ngay thang
	4.5.2 them thu vao tin nhan
	4.8 them tinh nang dung khi khong co sim
*/

#include "motor_cam_phim.c"




void main() {
	
	/*PORT IO INIT*/
	P0M1 = 0; P0M0 = 0xff; //port LCD -- chân xuất với điện trở kéo lên nhỏ, dòng lớn -> 20mA
	P1M1 = P1M0 = 0;
	P2M1 = 0; P2M0 = 0xff; // output
	P3M1 = P3M0 = 0; //full compatip 8051 -- key and cam
	P4M1 = 2; P4M0 = 0x1c;//full compatip 8051 --motor port
	P5M1 = P5M0 = 0; // full compatip 8051
	P4 = 0;
	P3 = 0xff;
	P2 = 0;
	/****************/
	IP = 0x81; //priority PCA
	/*ADC INIT*/
	P1ASF = 8;
	CLK_DIV = 0;
	ADC_RES = 0;
	ADC_CONTR = 0x83;
	EADC = 1;
	EA = 1; //bat tat ca interupt
	/****************/
	
	phim_mode_doi = phim_back_doi = phim_cong_doi = 2;
	
	// /*Khoi tao man hinh LCD*/
	LCD_Init();
	LCD_guilenh(0x80);
	LCD_guichuoi(ver);
	PCA_Timer_init();
	
	ADC_CONTR = 0x8b;
	LCD_guilenh(0x80);
	LCD_guichuoi("THIET LAP MOTOR ");
	motor_step_int_init();
	
	WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64; // Enable watchdog, clear watchdog, pre scale = 64, watchdog idle mode = NO
	LCD_xoa(TREN);
	// sub_mode = 1;
	// LCD_guichuoi(mode_select[mode]);
	while(1){
			
		if(giay_out){
			
			if((dc_run || step_run) && thoi_gian_doi_doc_cam[0] && !--thoi_gian_doi_doc_cam[0]){
				LCD_guilenh(0xc0);
				LCD_guichuoi("LOI CAM MOTOR ");
				LCD_guichuoi(dc_run?"DC":"ST");
				dc_run = step_run = 0;
				cam_vao = cam_vao_han = 0;
			}
			if((dc_run || step_run) && thoi_gian_doi_doc_cam[0]) LCD_xoa(DUOI);
			
			giay_out=0;
		}
					
		
		LCD_guilenh(0x84);
		if(!dc_run && !step_run)LCD_guichuoi("STOP");
		else{
			LCD_guichuoi(dc_run?"DC":"ST");
			LCD_guidulieu(motorDir?'>':'<');
			LCD_guidulieu(' ');
		}
		LCD_guidulieu(' ');
		LCD_guidulieu(so_vong_motor_quay/100+'0');
		LCD_guidulieu((so_vong_motor_quay%100)/10+'0');
		LCD_guidulieu(so_vong_motor_quay%10+'0');

		if(phim_back_nhan){
			phim_back_nhan = 0;
			thoi_gian_doi_doc_cam[0] = thoi_gian_doi_cam_chuan = 30;
			step_run = 0;
			so_vong_motor_quay = 0;
			dc_run = !dc_run;
			motorDir = 1;
			
		}
		if(phim_cong_nhan){
			phim_cong_nhan = 0;
			thoi_gian_doi_doc_cam[0] = thoi_gian_doi_cam_chuan = 10;
			dc_run = 0;
			if(!step_run){
				so_vong_motor_quay = 0;
				step_run = 1;
				motorDir = 1;

			}else if(step_run && motorDir){
				motorDir = 0;
			}else if(step_run && !motorDir){
				step_run = 0;
				motorDir = 1;
				so_vong_motor_quay = 0;
			}
		}
		WATCHDOG;
	}
}


//---------------------------
//ADC interrupt service routine
//----------------------------
void adc_isr() __interrupt ADC_VECTOR __using 0
{
	ADC_CONTR = 0x83; //Clear ADC interrupt flag
	//82 = 9V
	//91 = 10V	
	dien_ap_nguon = ADC_RES;
	

	ADC_CONTR = 0x8b;
}