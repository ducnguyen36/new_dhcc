__bit motor_run_check(){
	if (!thoi_gian_doi_doc_cam[0] || dien_ap_thap || !eep_motor || eep_loithesim>23 || mode || (phut[0]==minute && gio[0]==hour12) ) return 0;
	motorDir = canhkim || (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
	return 1;
}

void luu_gio_kim(){
	IAP_xoasector(SECTOR2);
	IAP_ghibyte(PHUT1_EEPROM,phut[0]);
	IAP_ghibyte(GIO1_EEPROM,gio[0]);
	IAP_ghibyte(PHUT2_EEPROM,phut[1]);
	IAP_ghibyte(GIO2_EEPROM,gio[1]);
}

void PCA_Timer_init(){
	CCAP0L = CCAP0H = 0;
	PCA_Timer0 = 25000;
	CCAPM0 = 0x49;
	CR=1;
}

void motor_step_int_init(){
	// CCAP0L = CCAP0H = 0;
	// PCA_Timer0 = 36000;
	// CCAPM0 = 0x49;
	// CR=1;
	AUXR &=0x7F;	//Timer clock is 12T mode
	TMOD = 0;		//Set timer work mode
	TL0 = 0x24;		//Initial timer value
	TH0 = 0xFA;		//Initial timer value
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
	
	if(mode!=2 && ++second>59){
			second=0;
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
	// test_lay_gio = 1;
}

void clock_servide () __interrupt INT_DONG_HO __using MEM_DONG_HO {
	WATCHDOG;
	xung_giay_check=250;
	mat_xung_giay=0;
	xunggiay();
	
}


u8 __xdata cnt = 20;
u8 __xdata counter_xung_giay=40;
void	PCA_Handler (void) __interrupt PCA_VECTOR __using MEM_DONG_HO{
	WATCHDOG;
	if(CCF0){
		CCF0=0;//tat co PCA timer 0
		CCAP0L = PCA_Timer0; //nap vao vi tri timer tiep theo
		CCAP0H = PCA_Timer0 >> 8;
		PCA_Timer0 += 25000; //tang bien nap vao len 25ms
		
		

		if(motor_index){
			if(!cam_che || !cam_che2)
				if(cam_vao) cam_vao_han = 1;				
				else cam_vao = 1;
			else if(cam_ra){
				thoi_gian_doi_doc_cam[0] = 30;
				if(motorDir && ++phut[0]>59){
					phut[0] = 0;
					if(++gio[0]>11) gio[0] = 0;
				}else if(!motorDir && --phut[0]>60){
						phut[0] = 59;
						if(--gio[0]>12) gio[0] = 11;
				}
				cam_ra = cam_vao = cam_vao_han = 0;
				if(!motor_run_check()) motor_index = 0;
				luu_gio_kim();
				
				
			}else if(cam_vao_han) cam_ra = 1;
			else if(cam_vao) cam_vao = 0;
			
		}

		
		if(key_down1 && key_in1) key_wait1 = 2;
		key_hold1 = key_down1 && !key_in1;
		key_down1 = !key_last1 && !key_in1;
		key_pressed1 = key_pressed1 || (!key_hold1 && key_down1);
		key_last1 = key_in1;
		
		if(key_down2 && key_in2) key_wait2 = 2;
		key_hold2 = key_down2 && !key_in2;
		key_down2 = !key_last2 && !key_in2;
		key_pressed2 = key_pressed2 || (!key_hold2 && key_down2);
		key_last2 = key_in2;

		if(key_down3 && key_in3) key_wait3 = 2;
		key_hold3 = key_down3 && !key_in3;
		key_down3 = !key_last3 && !key_in3;
		key_pressed3 = key_pressed3 || (!key_hold3 && key_down3);
		key_last3 = key_in3;

		if(!--cnt){
			cnt=14;
			chop=!chop;
		}

		if(xung_giay_check){
			xung_giay_check--;
			counter_xung_giay=28;
		}else if(!--counter_xung_giay){
			counter_xung_giay=28;
			xunggiay();
		}
		
	}

}

void cam_phim() __interrupt 1 __using 2 {
	WATCHDOG;
	if(motor_index){
			motor1 = motor_index == 1; motor2 = motor_index ==2; 
			P2=(P2&0x0f)|motor_step[step_index];
			step_index+= motorDir?1:-1; 
			if(step_index>8) step_index=7;
			else if(step_index==8) step_index=0;
	} else {motor1 = motor2 = 0; P2 &= 0x0f;}
	

}