__bit motor_run_check(){
	if (!thoi_gian_doi_doc_cam || dien_ap_thap || !eep_motor || eep_loithesim>23 || mode || (!canhkim && ((phut==minute && gio==hour12) || delay_ve_kim))) return 0;
	return canhkim || (720 + gio*60 + phut - hour12*60 - minute) % 720 > 45;
}
__bit motor_run_check_step(){
	if (!thoi_gian_doi_doc_cam_step || dien_ap_thap || !eep_motor || eep_loithesim>23 || mode || (!canhkim && ((phut==minute && gio==hour12) || delay_ve_kim))){
		P2 &= 0x0F;
		return 0;
	} 
	motorDir = canhkim || (720 + gio*60 + phut - hour12*60 - minute) % 720 > 360;
	return 1;
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
}

void clock_servide () __interrupt INT_DONG_HO __using MEM_DONG_HO {
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
		PCA_Timer0 += 36000; //tang bien nap vao len 25ms
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
		
		cam_out_step = cam_cover_step && cam_sign_step;
		cam_cover_step = cam_in_step && !cam_sign_step;
		cam_in_step = !cam_sign_step;	
		if(step_run && cam_out_step){
			thoi_gian_doi_doc_cam_step=10;
			motorA1 = thoi_gian_doi_doc_cam = 0;
			if(canhkim) canhkim--;
			else if(motorDir && ++phut>59){
				phut=0;
				if(++gio>11) gio = 0;
			}else if(!motorDir && --phut>60){
				phut = 59;
				if(--gio>12) gio = 11;
			}
				
			if(!motor_run_check_step()) step_run = 0 ;	
		}

		//Co tin hieu cam la bi che (khong co 555)
		
		cam_out = cam_cover && !cam_sign;
		cam_cover = cam_in && cam_sign;
		cam_in = cam_sign;	
		if(motorA1 && cam_out){
			thoi_gian_doi_doc_cam=30;
			step_run = thoi_gian_doi_doc_cam_step = 0;
			if(canhkim) canhkim--;
			else if(++phut>59){
				phut = 0;
				if(++gio>11) gio = 0;
			}	
			if(!motor_run_check()) motorA1 = 0;	
		}

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
	if(step_run){
			P2=(P2&0x0f)|motor_step[step_index];
			step_index+= motorDir?1:-1; 
			if(step_index>8) step_index=7;
			else if(step_index==8) step_index=0;
	}
	

}