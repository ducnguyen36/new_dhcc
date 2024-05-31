


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
	
}




u8 __xdata counter_xung_giay=40;

void	PCA_Handler (void) __interrupt PCA_VECTOR __using MEM_DONG_HO{
	WATCHDOG;
	if(CCF0){
		CCF0=0;//tat co PCA timer 0
		CCAP0L = PCA_Timer0; //nap vao vi tri timer tiep theo
		CCAP0H = PCA_Timer0 >> 8;
		PCA_Timer0 += 25000; //tang bien nap vao len 25ms
		

		
			trang_thai_cam = !cam_che;
			trang_thai_cam2 = !cam_che2;
		
			if(dc_run) trang_thai_cam = !trang_thai_cam && !trang_thai_cam2;  
			else trang_thai_cam = trang_thai_cam || trang_thai_cam2;
		
		
		
			
			// trang_thai_cam = !cam_che2;
			// if(dc_run) trang_thai_cam = !trang_thai_cam;  

		if(dc_run==1 || (step_run%2)){
			
			if(trang_thai_cam)
				if(cam_vao) cam_vao_han = 1;				
				else cam_vao = 1;
			else if(cam_ra){
				thoi_gian_doi_doc_cam[0] = thoi_gian_doi_cam_chuan;
				if(motorDir && ++so_vong_motor_quay>719){
					so_vong_motor_quay=0;
				}else if(!motorDir && --so_vong_motor_quay>720){
					so_vong_motor_quay=719;
				}
				cam_ra = cam_vao = cam_vao_han = 0;
			}else if(cam_vao_han) cam_ra = 1;
			else if(cam_vao) cam_vao = 0;
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

		

		if(!--counter_xung_giay){
			counter_xung_giay=40;
			xunggiay();
		}
		
	}

}

void cam_phim() __interrupt 1 __using 2 {
	WATCHDOG;
	
		motorS1 = dc_run;
		if(step_run){
			P2=(P2&0x0f)|motor_step[step_index];
			step_index+= motorDir?1:-1; 
			if(step_index>8) step_index=7;
			else if(step_index==8) step_index=0;
		} else P2 &= 0x0f;
	

}