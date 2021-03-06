

u8 motor_run_check() __reentrant {
	// u8 m,j=0;  
	// motorDir1 = 1;
	// if (!thoi_gian_doi_doc_cam[0] || dien_ap_thap || !eep_motor || eep_loithesim>23 || mode || (phut[0]==minute && gio[0]==hour12) ) return 0;
	if (dien_ap_thap || motor_dung || mode ){ motorDir1 = 0; return 5;}
	if(may_canh_kim)return (canhkim && (may_canh_kim & 1))?may_canh_kim-1:5;
	// return 0;
	if(so_motor<3){
		if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
			motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
			// send_gsm_byte('\r');
			// send_gsm_byte('B');
			return 0;

		}else {motorDir1 = 0; return 5;}
	}
	
	if(motor_index>1){
		if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
			motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
			return 0;
		}
	}
	if(thoi_gian_doi_doc_cam[2] && (phut[2]!=minute || gio[2]!=hour12)){
		motorDir1 = (720 + gio[2]*60 + phut[2] - hour12*60 - minute) % 720 > 360;
		return 2;
	}
	if(motor_index<2){
		if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
			motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
			return 0;
		}
	}
	
	motorDir1 = 0;
	// send_gsm_byte('S');
	return 5;
}
u8 motor_run_check2(){
	// u8 m,j;
	// motorDir2 = 1;
	// if (!thoi_gian_doi_doc_cam[0] || dien_ap_thap || !eep_motor || eep_loithesim>23 || mode || (phut[0]==minute && gio[0]==hour12) ) return 0;
	if (so_motor==1 || dien_ap_thap || motor_dung || mode ) {motorDir2 = 0;return 5;}
	if(may_canh_kim)return (canhkim && !(may_canh_kim & 1))?may_canh_kim-1:5;
	if(so_motor<4){
		if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
			motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
			return 1;
		}else {motorDir2 = 0; return 5;}
	}
	if(motor_index2>1){
		if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
			motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
			return 1;
		}
	}
	if(thoi_gian_doi_doc_cam[3] && (phut[3]!=minute || gio[3]!=hour12)){
		motorDir2 = (720 + gio[3]*60 + phut[3] - hour12*60 - minute) % 720 > 360;
		return 3;
	}
	if(motor_index2<2){
		if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
			motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
			return 1;
		}
	}
	motorDir2 = 0;
	return 5;
}
//multi motor
void luu_gio_kim(){
	IAP_xoasector(SECTOR2);
	switch(so_motor){
		case 4:IAP_ghibyte(PHUT4_EEPROM,phut[3]);IAP_ghibyte(GIO4_EEPROM,gio[3]);
		case 3:IAP_ghibyte(PHUT3_EEPROM,phut[2]);IAP_ghibyte(GIO3_EEPROM,gio[2]);
		case 2:IAP_ghibyte(PHUT2_EEPROM,phut[1]);IAP_ghibyte(GIO2_EEPROM,gio[1]);
		case 1:IAP_ghibyte(PHUT1_EEPROM,phut[0]);IAP_ghibyte(GIO1_EEPROM,gio[0]);
		default : break;
	}
	
}
void PCA_Timer_init(){
	CCAP0L = CCAP0H = 0;
	PCA_Timer0 = 25000;
	CCAPM0 = 0x49;
	CR=1;
}

void motor_step_int_init(){
	AUXR &=0x7F;	//Timer clock is 12T mode
	TMOD = 0;		//Set timer work mode
	// TL0 = 0x24;		//Initial timer value
	// TH0 = 0xFA;		//Initial timer value
	// TL0 = 0x30;		//Initial timer value
	// TH0 = 0xF8;		//Initial timer value
	// TL0 = 0x60;		//Initial timer value
	// TH0 = 0xF0;		//Initial timer value
	TH0 = (63536 - (toc_do_motor_step * 2000)) >> 8;
	TL0 = (63536 - (toc_do_motor_step * 2000));
	TF0 = 0;
	TR0 = 1;
	ET0 = 1;
}

void xunggiay(){
	WATCHDOG;
	flip_pulse^=1;
	over_cur_led = flip_pulse;
	giay_out=1;	
	if(connect) connect--;
	if(total_try_time_out) total_try_time_out--;
	
	if(mode!=2 && ++second>max_second-1){
			second=0;
			if(so_lan_goi_dien && !--delay_cuoc_goi_ke_tiep) so_lan_goi_dien = 0;
			phut_out = 1;
			if(++minute>59){
				da_gui_bao_cao = 0;
				minute=0;
				if(++hour>23){
					mp3_hour = 24;
					hour=0;
					if(ngay_reset_con_lai)
					ngay_reset_con_lai--;
					da_gui_bao_cao_thang = 0;
				}
				if(++hour12>11) hour12 = 0;
			}
			
		}
}

void clock_servide () __interrupt INT_DONG_HO __using MEM_DONG_HO {
	WATCHDOG;
	xung_giay_check=250;
	mat_xung_giay=0;
	xunggiay();
	
}


u8 __xdata cnt = 20;
u8 __xdata counter_xung_giay=40;
__bit lcd_update_chop = 0;
void	PCA_Handler (void) __interrupt PCA_VECTOR __using MEM_DONG_HO{
	WATCHDOG;
	if(CCF0){
		CCF0=0;//tat co PCA timer 0
		CCAP0L = PCA_Timer0; //nap vao vi tri timer tiep theo
		CCAP0H = PCA_Timer0 >> 8;
		PCA_Timer0 += 25000; //tang bien nap vao len 25ms
		
		if(eep_cam){
			trang_thai_cam = !cam_che;
			trang_thai_cam2 = !cam_che2;
		}else{
			trang_thai_cam = cam_che;
			trang_thai_cam2 = cam_che2;
		}
		if(so_motor == 1){
			if(eep_cam){
				if(may_dc) trang_thai_cam = !trang_thai_cam && !trang_thai_cam2;  
				else trang_thai_cam = trang_thai_cam || trang_thai_cam2;
			}else{
				if(may_dc) trang_thai_cam = !trang_thai_cam || !trang_thai_cam2;  
				else trang_thai_cam = trang_thai_cam && trang_thai_cam2;
			}
		}
		// send_gsm_byte(trang_thai_cam+'0');
		if(motor_index!=5){
			
			if(trang_thai_cam)
				if(cam_vao) cam_vao_han = 1;				
				else cam_vao = 1;
			else if(cam_ra){
				thoi_gian_doi_doc_cam[motor_index] = thoi_gian_doi_cam_chuan;
				if(canhkim) canhkim--;
				else if(motorDir && ++phut[motor_index]>59){
					phut[motor_index] = 0;
					if(++gio[motor_index]>11) gio[motor_index] = 0;
				}else if(!motorDir && --phut[motor_index]>60){
						phut[motor_index] = 59;
						if(--gio[motor_index]>12) gio[motor_index] = 11;
				}
				cam_ra = cam_vao = cam_vao_han = 0;
				motor_index = motor_run_check();
				// if(motor_index == 5) send_gsm_byte('S');
				luu_gio_kim();				
			}else if(cam_vao_han) cam_ra = 1;
			else if(cam_vao) cam_vao = 0;
			
		}
		if(motor_index2!=5){
			if(trang_thai_cam2)
				if(cam_vao2) cam_vao_han2 = 1;				
				else cam_vao2 = 1;
			else if(cam_ra2){
				thoi_gian_doi_doc_cam[motor_index2] = thoi_gian_doi_cam_chuan;
				if(canhkim) canhkim--;
				else if(motorDir && ++phut[motor_index2]>59){
					phut[motor_index2] = 0;
					if(++gio[motor_index2]>11) gio[motor_index2] = 0;
				}else if(!motorDir && --phut[motor_index2]>60){
						phut[motor_index2] = 59;
						if(--gio[motor_index2]>12) gio[motor_index2] = 11;
				}
				cam_ra2 = cam_vao2 = cam_vao_han2 = 0;
				motor_index2 = motor_run_check2();
				luu_gio_kim();				
			}else if(cam_vao_han2) cam_ra2 = 1;
			else if(cam_vao2) cam_vao2 = 0;
			
		}

		
		if(phim_mode_xuong && phim_mode_vao) phim_mode_doi = 2;
		phim_mode_giu = phim_mode_xuong && !phim_mode_vao;
		phim_mode_xuong = !phim_mode_cu && !phim_mode_vao;
		phim_mode_nhan = phim_mode_nhan || (!phim_mode_giu && phim_mode_xuong);
		phim_mode_cu = phim_mode_vao;
		
		if(phim_back_xuong && key_in2) phim_back_doi = 2;
		phim_back_giu = phim_back_xuong && !key_in2;
		phim_back_xuong = !phim_back_cu && !key_in2;
		phim_back_nhan = phim_back_nhan || (!phim_back_giu && phim_back_xuong);
		phim_back_cu = key_in2;

		if(phim_cong_xuong && key_in3) phim_cong_doi = 2;
		phim_cong_giu = phim_cong_xuong && !key_in3;
		phim_cong_xuong = !phim_cong_cu && !key_in3;
		phim_cong_nhan = phim_cong_nhan || (!phim_cong_giu && phim_cong_xuong);
		phim_cong_cu = key_in3;

		if(!--cnt){
			lcd_update_chop = 1;
			cnt=20;
			chop=!chop;
		}

		if(xung_giay_check){
			xung_giay_check--;
			counter_xung_giay=40;
		}else if(!--counter_xung_giay){
			counter_xung_giay=40;
			xunggiay();
		}
		
	}

}

void cam_phim() __interrupt 1 __using 2 {
	WATCHDOG;
	if(atmel_phat){
		motor1 = motor_index == 0; motor2 = motor_index2 == 1;
		motor3 = motor_index == 2; motor4 = motor_index2 == 3;
	}else{
		motorS1 = !motor_index && (eep_motor & 7) ; motorS2 = motor_index2 == 1;
		motorDir = may_dc || may_canh_kim || motorDir1 || motorDir2;
		if(!may_dc && (motor_index!=5 || motor_index2!=5 || !motor_index) ){
			P2=(P2&0x0f)|motor_step[step_index];
			step_index+= motorDir?1:-1; 
			if(step_index>8) step_index=7;
			else if(step_index==8) step_index=0;
		} else P2 &= 0x0f;
	}

}