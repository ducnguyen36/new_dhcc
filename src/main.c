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
*/
#include "chuong_trinh.c"
#include "motor_cam_phim.c"
#include "gsm_serial.c"
#include "xu_ly_tin_nhan.c"



void main() {
	u8 __data giotemp=0,phuttemp=0;
	u8 __xdata  ngaytemp = 1, thangtemp=1, namtemp = 21, thutemp = 1;
	u16 __xdata check;
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
	
	xung_giay_check=250;
	so_lan_goi_dien = 0;
	motor_index = motor_index2 = 5;
	phone[0]='0';
	

	gsm_delay_reset=10;
	phim_mode_doi = phim_back_doi = phim_cong_doi = 2;
	mode = SELECT; sub_mode = GIOKIM;
	

	// /*Khoi tao man hinh LCD*/
	LCD_Init();
	LCD_guilenh(0x80);
	LCD_guichuoi(ver);

#if !TEST
	delay_ms(5000);
#endif


	/*validate eeprom*/
	u8 __xdata i;
	LCD_guilenh(0x80);
	LCD_guichuoi("THIET LAP EEPROM");
	IAP_docxoasector1();
	if(eeprom_buf[MOTOR_EEPROM]==0xff)eeprom_buf[MOTOR_EEPROM] = MOTOR_DEFAULT;
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
	// if(!(eeprom_buf[MOTOR_EEPROM] & 3))eeprom_buf[MOTOR_EEPROM] &= 0xF4;
	if(eeprom_buf[BAOCAO_EEPROM]>1)eeprom_buf[BAOCAO_EEPROM] = 0;
	if(eeprom_buf[GPSON_EEPROM]>1)eeprom_buf[GPSON_EEPROM] = 1;
	if(eeprom_buf[NGAYRESET_EEPROM]>9)eeprom_buf[NGAYRESET_EEPROM] = 1;
	
	if(eeprom_buf[GIORESET_EEPROM]>23)eeprom_buf[GIORESET_EEPROM] = 0;
	if((eeprom_buf[GIOSACXA_EEPROM]>>4) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0x0f | 0x50;
	if((eeprom_buf[GIOSACXA_EEPROM] & 0x0f) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0xf0 | 0x01;	
	i=1;
	if(eeprom_buf[TATMODEN_EEPROM]<9 && !(eeprom_buf[TATMODEN_EEPROM]&1))
		for(i=1;i<=eeprom_buf[TATMODEN_EEPROM] && eeprom_buf[TATMODEN_EEPROM+i]<144;i++);
	if(i<=eeprom_buf[TATMODEN_EEPROM]){
		eeprom_buf[TATMODEN_EEPROM] = 2;
		eeprom_buf[TATMODEN_EEPROM+1] = 36;
		eeprom_buf[TATMODEN_EEPROM+2] = 108;
	}
	i=0;
	if(eeprom_buf[PHONEPHU_EEPROM+11]<2 && !eeprom_buf[PHONEPHU_EEPROM+10])
		for(i=0;i<10 && eeprom_buf[PHONEPHU_EEPROM+i]>='0' && eeprom_buf[PHONEPHU_EEPROM+i]<='9';i++);
	if(i<10){
		eeprom_buf[PHONEPHU_EEPROM+10] = 0;
		eeprom_buf[PHONEPHU_EEPROM+11] = 2;
	}

	if(eeprom_buf[LOITHESIM_EEPROM]>24)eeprom_buf[LOITHESIM_EEPROM] = 0;
	if(mp3_playing) eeprom_buf[MP3_EEPROM] &= 4;
	else if(eeprom_buf[MP3_EEPROM]>6)eeprom_buf[MP3_EEPROM] = 2;
	else if(!(eeprom_buf[MP3_EEPROM]&3))eeprom_buf[MP3_EEPROM] += 2;
	if((eeprom_buf[DEBUG_EEPROM]&15) -1 > 10)eeprom_buf[DEBUG_EEPROM] = 0x3b; 	
	if(eeprom_buf[CAM_EEPROM]>1)eeprom_buf[CAM_EEPROM] = 1;
//multi motor
	IAP_ghisector1();
	so_motor = (eep_motor & 3) + 1;
	may_dc   = (eep_motor & 4);
	motorDir = atmel_phat = (eep_motor & 8);
	motor_dung  = (eep_motor & 16);
	motor_debug = (eep_motor & 32);
	if(!may_dc && !atmel_phat) toc_do_motor_step = (eep_motor & 192) >> 64;
	else toc_do_motor_step = 0;

	sms_on = (eep_debug & 96)>>5;
	if(sms_on==2) for(i=0;i<11;i++)phone_chinh[i]= phone2[i];
	else for(i=0;i<11;i++)phone_chinh[i]= phone1[i];
	sim_test_sec = 0;
	max_second = (eep_debug & 15)<6?(eep_debug & 15) + 1 : (60/(12-(eep_debug & 15)));
	if(!(eep_debug & 16) || max_second<60) sim_test_sec = 61;

	thoi_gian_doi_cam_chuan = (eep_motor & 64)?255:(may_dc?30:10);

	switch(so_motor){
		case 4: thoi_gian_doi_doc_cam[3]=thoi_gian_doi_cam_chuan;
				if(eep_phut4>59 || eep_gio4>11)
					luu_gio_kim();
				phut[3] = eep_phut4; 
				gio[3] = eep_gio4;
		case 3: thoi_gian_doi_doc_cam[2]=thoi_gian_doi_cam_chuan;
				if(eep_phut3>59 || eep_gio3>11)
					luu_gio_kim();
				phut[2] = eep_phut3; gio[2] = eep_gio3;
		case 2: thoi_gian_doi_doc_cam[1]=thoi_gian_doi_cam_chuan;
				if(eep_phut2>59 || eep_gio2>11)
					luu_gio_kim();
				phut[1] = eep_phut2; gio[1] = eep_gio2;
		case 1: thoi_gian_doi_doc_cam[0]=thoi_gian_doi_cam_chuan;
				if(eep_phut1>59 || eep_gio1>11)
					luu_gio_kim();
				phut[0] = eep_phut1; gio[0] = eep_gio1;
		default: break;
	}

	ChargeRelay = 1;

	/*Khoi tao serial baudrate 38400 cho gsm sim900*/
	LCD_guilenh(0x80);
	LCD_guichuoi("POWER ON SIM800 ");
	gsm_init();

	
	/*Khoi tao serial baudrate 9600 cho dfplayer module*/
	LCD_guilenh(0x80);
	LCD_guichuoi("  KHOI TAO MP3  ");
	if(eep_mp3%4==2){
		mp3_serial_init();
		mp3_status= mp3_IDLE;
		mp3_hour = 24;
		mp3_minute = 60;
	}

	
	da_gui_bao_cao = 1;
	ngay_reset_con_lai = eep_ngayreset;
	
	/*PCA TIMER 0 INIT 50us*/
	PCA_Timer_init();
	/******** Initial watdog ****WDT**/	
	
	
  	

	// rtc_settime(0,0,0);
	if(phim_mode_nhan && phim_back_nhan && phim_cong_nhan){
		u8 debug_dem = 0;
		// u8 cam_temp = 0;
		u8 mp3temp = eep_mp3;
		__bit debug = 0;
		giotemp = eep_debug;
		// cam_temp = eep_cam;
		i = eep_motor;
		
		phim_mode_nhan = phim_back_nhan = phim_cong_nhan = 0;
		LCD_guichuoi("\200 NHA PHAT TRIEN");
		LCD_guichuoi("\300MAY:");
		LCD_guidulieu(so_motor+'0');
		LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
		LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
		LCD_guichuoi("\315S:");
		LCD_guidulieu(toc_do_motor_step+'0');
		LCD_blinkXY(DUOI,4);
		sub_mode = so_motor-1;
		mode = 0;
		while(1){
			if(debug){
				if(lcd_update_chop){
					lcd_update_chop = 0;
					LCD_guichuoi("\300P:");
					phuttemp = (giotemp & 15) < 6?(giotemp & 15)+1:(60/(12-(giotemp & 15)));
					LCD_guidulieu((mode==0&&chop)?'_':phuttemp/10+'0');
					LCD_guidulieu((mode==0&&chop)?'_':phuttemp%10+'0');
					LCD_guichuoi(" T:");
					LCD_guidulieu((mode==1&&chop)?'_':(((giotemp&96)>>5)+'0'));
					LCD_guichuoi(" G:");
					LCD_guidulieu((mode==2&&chop)?'_':(((giotemp&16)>>4)+'0'));
					LCD_guichuoi(" M:");
					LCD_guidulieu((mode==3&&chop)?'_':((mp3temp&4)>>2)+'0');
				}
				if(phim_mode_nhan){
					phim_mode_nhan = 0;
					mode++;
					switch(mode){
						case 1:sub_mode = (giotemp&96)>>5;break;
						case 2:sub_mode = (giotemp&16)>>4;break;
						case 3:sub_mode = (mp3temp&4)>>2;break;
						case 4:IAP_docxoasector1();
							   eeprom_buf[MOTOR_EEPROM] &= 0xef;
							   eeprom_buf[DEBUG_EEPROM] =  giotemp;
							   eeprom_buf[MP3_EEPROM] =  mp3temp;
							//    eeprom_buf[CAM_EEPROM] =  cam_temp;
							   IAP_ghisector1();
							   IAP_xoasector(SECTOR2);
							   IAP_CONTR = 0x60;
					}
				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					if(mode) mode--;
					switch(mode){
						case 0:sub_mode = giotemp & 15;break;
						case 1:sub_mode = (giotemp&96)>>5;break;
						case 2:sub_mode = (giotemp&16)>>4;break;
					}
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					sub_mode++;
					switch(mode){
						case 0:if(sub_mode>11) sub_mode = 0;giotemp = giotemp & 0xf0 | sub_mode; break;
						case 1:if(sub_mode>3) sub_mode = 0;giotemp = giotemp & 0x9f | (sub_mode<<5); break;
						case 2:if(sub_mode>1) sub_mode = 0;giotemp = giotemp & 0xef | (sub_mode<<4); break;
						case 3:if(sub_mode>1) sub_mode = 0;mp3temp = mp3temp & 0x03 | (sub_mode<<2); break;
					}
				}
			}
			else{
				switch(mode){
					case 0:
						sub_mode = so_motor-1;
						LCD_guilenh(0xc4); 
						break;
					case 1:
						sub_mode = may_dc;
						LCD_noblink(); 
						if(lcd_update_chop){
							lcd_update_chop = 0;
							LCD_guichuoi(chop?"\305 __ ":(may_dc?"\305 DC ":"\305 ST "));
						}
						break;
					case 2:
						sub_mode = atmel_phat;
						if(lcd_update_chop){
							lcd_update_chop = 0;
							LCD_guichuoi(chop?"\311___":(atmel_phat?"\311C55 ":"\311STC "));
						}
						break;
					case 3:
						sub_mode = toc_do_motor_step;
						if(lcd_update_chop){
							lcd_update_chop = 0;
							LCD_guichuoi("\315S:");
							LCD_guidulieu(chop?'_':(toc_do_motor_step+'0'));
						}
						break;
					case 4:
						LCD_guichuoi("\200      SAVE      ");
						LCD_guichuoi("\300MODE:OK    RS:BO");
						break;
					case 5:
						phuttemp = (i & 0x10);
						phuttemp += (so_motor-1);
						phuttemp += (may_dc?4:0); 
						if(so_motor!=1) phuttemp += (atmel_phat?8:0);
						if(!may_dc && !atmel_phat) phuttemp += (toc_do_motor_step<<6);
						IAP_xoasector(SECTOR1);
						IAP_xoasector(SECTOR2);
						IAP_ghibyte(MOTOR_EEPROM,phuttemp);
						IAP_CONTR = 0x60;
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					debug_dem = 0;
					switch(mode){
						case 0:
							sub_mode = sub_mode<3?sub_mode+1:0;
							so_motor = sub_mode + 1;
							LCD_guidulieu(so_motor+'0');
							LCD_guilenh(0xc4);
							break;
						case 1:
							may_dc = sub_mode = 1 - sub_mode;
							break;
						case 2:
							if(so_motor>2) atmel_phat = sub_mode = 1;
							else atmel_phat = sub_mode = 1 - sub_mode;
						case 3:
							sub_mode = sub_mode<3?sub_mode+1:0;
							toc_do_motor_step = sub_mode;
							break;
					}
					
				}
				if(phim_mode_nhan){
					phim_mode_nhan = 0;
					debug_dem = 0;
					mode++;
					LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
					LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
					LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
					LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
					LCD_noblink();
				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					if(mode) mode--;
					LCD_guichuoi("\200 NHA PHAT TRIEN"); 
					LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
					LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
					LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
					LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
					if(!mode){ 
						if(debug_dem++>8){
							debug = 1;
							LCD_noblink();
							sub_mode = eep_debug & 15;
						} 
						else LCD_blinkXY(DUOI,4);
					}
				}
			}
		}
		
	}
	// /**************/

	
	ADC_CONTR = 0x8b;
	/*thiet lap gio gps*/
	//TODO validate dalas time
	LCD_guilenh(0x80);
	LCD_guichuoi("KIEM TRA GIO RTC");
	rtc_gettime(&hour, &minute, &second);
	if(hour>23 || minute > 59 || second >59)	
		rtc_settime(0,0,0);
	
	// /* Interrupt Ngoai 0 xung giay*/
	rtc_init(); //khai bao cho ds1307 tao xung vuong moi giay
	INT_DHO_EX = 1; //Bat ngat ngoai 0 (EX0)
	INT_DHO_IT=1; // ngat ngoai 0 cho suon len
	rtc_gettime(&hour, &minute, &second);

	// nhich motor 1 va 3 den khi cam tat
	LCD_guilenh(0x80);
	LCD_guichuoi("KIEM MOTOR 1 - 3");
	if(so_motor>2){
		u8 retry = 20;
		while(!cam_che && retry--){
			LCD_guilenh(0xc0);
			LCD_guidulieu(retry/10+'0');
			LCD_guidulieu(retry%10+'0');
			motor1 = 1;
			delay_ms(may_dc?1000:250);
			motor1 = 0;
			if(!cam_che){
				motor3 = 1;
				delay_ms(may_dc?1000:250);
				motor3 = 0;
			}
		}
	}
	LCD_guilenh(0x80);
	LCD_guichuoi("KIEM MOTOR 2 - 4");
	if(so_motor>3){
		u8 retry = 5;
		while(!cam_che2 && retry--){
			LCD_guilenh(0xc0);
			LCD_guidulieu(retry/10+'0');
			LCD_guidulieu(retry%10+'0');
			motor2 = 1;
			delay_ms(may_dc?1000:250);
			motor2 = 0;
			if(!cam_che2){
				motor4 = 1;
				delay_ms(may_dc?1000:250);
				motor4 = 0;
			}
		}
	}
	LCD_guilenh(0x80);
	LCD_guichuoi("THIET LAP MOTOR ");
	motor_step_int_init();


	bat_phone_phu = eep_phonephu[11]&1;
	if(!nosim && gsm_thietlapsim800()){
		gsm_thietlapngaygiothuc();
		gsm_thietlapgoidien();
		// gsm_thietlapnhantin();
		if(gsm_thietlapnhantin()){ // thiet lap thong so nhan tin
			if(!eep_norreset)baocaosms(CHINH,"\rkhoi dong phan mem san sang");
			else{
				baocaosms(CHINH,"\rkhoi dong san sang");
				if(bat_phone_phu)baocaosms(PHU,"\rkhoi dong san sang");
			}
			kiemtrasodienthoai();
		}
	}
	// gsm_laygio_gps();

    hour12 = (hour>11)?hour-12:hour;
	if(!eep_norreset){
		mode_wait = 5;
		IAP_docxoasector1();
		eeprom_buf[NORRESET_EEPROM] = 0xff;
		IAP_ghisector1();
	}else mode_wait = 60;
	
	WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64; // Enable watchdog, clear watchdog, pre scale = 64, watchdog idle mode = NO
	
	// sub_mode = 1;
	// LCD_guichuoi(mode_select[mode]);
	while(1){
		
		if(so_motor==4 && (eep_phut4!=phut[3] || eep_gio4!=gio[3])) luu_gio_kim();
		else if(so_motor>2 && (eep_phut3!=phut[2] || eep_gio3!=gio[2])) luu_gio_kim();
		else if(so_motor>1 && (eep_phut2!=phut[1] || eep_gio2!=gio[1])) luu_gio_kim();
		else if(eep_phut1!=phut[0] || eep_gio1!=gio[0]) luu_gio_kim();

		if(!mode_wait || !mode) {
			mode=0;
			if(motor_index  == 5) motor_index  = motor_run_check();
			if(motor_index2 == 5) motor_index2 = motor_run_check2();
		}

		if(phut_out){
			phut_out = 0;
			send_gsm_cmd("***stc");
			send_gsm_byte(day/10+'0');
    		send_gsm_byte(day%10+'0');
			send_gsm_byte(month/10+'0');
    		send_gsm_byte(month%10+'0');
			send_gsm_byte(year/10+'0');
    		send_gsm_byte(year%10+'0');
			send_gsm_byte(hour/10+'0');
    		send_gsm_byte(hour%10+'0');
			send_gsm_byte(minute/10+'0');
    		send_gsm_byte(minute%10+'0');
			send_gsm_byte(second/10+'0');
    		send_gsm_byte(second%10+'0');
			send_gsm_cmd("###\r\n");
		}
		if(!bao_cao_dien_ap_thap && dien_ap_thap){
			baocaosms(CHINH,"\rdien ap thap");
			if(bat_phone_phu)baocaosms(PHU,"\rdien ap thap");
			bao_cao_dien_ap_thap = 1;
		}
		if(bao_cao_dien_ap_thap && !dien_ap_thap){
			baocaosms(CHINH,"\rdien ap khoi phuc");
			if(bat_phone_phu)baocaosms(PHU,"\rdien ap khoi phuc");
			bao_cao_dien_ap_thap = 0;
		}
		if(!xung_giay_check && !mat_xung_giay){
			mat_xung_giay = 1;
			baocaosms(CHINH,"\rmat xung giay");
		}
		//multi motor
		if(!thoi_gian_doi_doc_cam[0] && !loi_cam_motor1){
			loi_cam_motor1 = 1;
			baocaosms(CHINH,"\rloi doc cam 1");
			if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 1");
		}
		if(so_motor>1 && !thoi_gian_doi_doc_cam[1] && !loi_cam_motor2){
			loi_cam_motor2 = 1;
			baocaosms(CHINH,"\rloi doc cam 2");
			if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 2");
		}
		if(so_motor>2 && !thoi_gian_doi_doc_cam[2] && !loi_cam_motor3){
			loi_cam_motor3 = 1;
			baocaosms(CHINH,"\rloi doc cam 3");
			if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 3");
		}
		if(so_motor==4 && !thoi_gian_doi_doc_cam[3] && !loi_cam_motor4){
			loi_cam_motor4 = 1;
			baocaosms(CHINH,"\rloi doc cam 4");
			if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 4");
		}
		if(giay_out){
			if(!gsm_pw){
				if(!--gsm_delay_reset){
					ADC_CONTR = 0x83;
					gsm_pw = 1;
					gsm_delay_reset = 30;
					gsm_reset=1;
				}
			}
			if(delay_ve_kim && !canhkim && !--delay_ve_kim){
				canhkim = 5;
				delay_ve_kim = 5;
				motor_index  = motor_run_check();
				motor_index2 = motor_run_check2();
			}
			
			if(motor_index!=5 && thoi_gian_doi_doc_cam[motor_index] && !--thoi_gian_doi_doc_cam[motor_index]){ cam_vao = cam_vao_han = 0;motor_index = 5;}
			if((motor_index2!=5)  && thoi_gian_doi_doc_cam[motor_index2] && !--thoi_gian_doi_doc_cam[motor_index2]){ cam_vao2 = cam_vao_han2 = 0;motor_index2 = 5;}
			
			if(mode_wait && (!(eep_mp3%4) || !mp3_playing)) mode_wait--;
			
			if(phim_mode_doi && phim_mode_giu){
				phim_mode_doi--;
			}
			giay_out=0;
		}

		kiem_tra_den();
		// if(!mode && eep_motor && eep_mp3==2) kiem_tra_nhac();
		if(!mode && (eep_mp3%4)==2) kiem_tra_nhac();
		

		if(((eep_ngayreset && !ngay_reset_con_lai && eep_gioreset==hour && minute>5) || so_lan_goi_dien > 1)  && motor_index==5 && motor_index2==5 && (!(eep_mp3%4) || !mp3_playing)){
			if(max_second<60)rtc_settime(eep_gioreset,6,0);
			if(so_lan_goi_dien>1) baocaosms(CHINH,"\rChuan bi reset phan mem tu cuoc goi");	
			EA=0;
			gsm_pw = 0;
			IAP_ghibyte(NORRESET_EEPROM,0);
			RingRelay = 1;
			delay_ms(4000);
			IAP_CONTR = 0x60;
		}


		if(!da_gui_bao_cao && minute<5 ) {
			if(!GPS_time && eep_gpson) {
				// gsm_laygio_gps();
				gsm_thietlapngaygiothuc();
				hour12 = (hour>11)?hour-12:hour;
			}else{
				rtc_gettime(&hour,&minute,&second);
				rtc_getdate(&date,&day,&month,&year);
			}

			if(eep_baocao) {
				baocaosms(CHINH,"\rbao cao dau gio");
			}
			da_gui_bao_cao = 1;
		}
		if(co_tin_nhan_moi){
			co_tin_nhan_moi = 0;
			gsm_sendandcheck("AT\r", 15, 1,"CO TIN NHAN MOI ");
			send_gsm_cmd("AT+CMGL=\"ALL\"\r");
		}
		if(goi_dien_thoai){
			goi_dien_thoai = 0;
			gsm_quay_so(phone_chinh);
			
		}
		switch(mode){
			case 0:
				if(gsm_reset){
					ADC_CONTR = 0x8b;
					gsm_reset = 0;
					gsm_serial_cmd = NORMAL;
					// gsm_laygio_gps();
					gsm_thietlapngaygiothuc();
					hour12=hour%12;
					if(gsm_thietlapnhantin()){
						baocaosms(CHINH,"\rgsm reset thanh cong");
					}
				}
				if(sms_dang_xu_ly){
					/*xu ly tin nhan*/
					xu_ly_tin_nhan();
					gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  SENDING CMGDA  ");
					sms_dang_xu_ly = 0;
				}
				else {
					switch(so_motor){
						case 1: LCD_guigio(0x80,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],date,flip_pulse);break;
						case 2: LCD_guigio(0x80,"  ",gio[0],phut[0],253,flip_pulse);LCD_guigio(0x87,"  ",gio[1],phut[1],253,flip_pulse);LCD_guichuoi("  ");break;
						case 4:	LCD_guigio(0xc5,GPS_time?" G ":(eep_gpson?" D ":" A "),hour,minute,second,flip_pulse); 
								LCD_guigio(0xc0," ",gio[3],phut[3],251,0);
						case 3: LCD_guigio(0x80," ",gio[0],phut[0],251,0);LCD_guigio(0x85," ",gio[1],phut[1],251,0);
								LCD_guigio(0x8a," ",gio[2],phut[2],251,0);LCD_guidulieu(' ');
					}
					if(so_motor!=4){
						LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,flip_pulse);
					} 
				}
				if(!phim_mode_doi && !cam_vao){
					phim_mode_nhan=0;
					mode_wait = TIME_MODE_WAIT;
					delay_ve_kim = canhkim = may_canh_kim = 0;
					mode = SELECT;
					sub_mode = GIOKIM;
					motor_index = motor_index2 = 5;
					if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
					AmplyRelay = 0;
					mp3_status = mp3_IDLE;
					if(phim_back_nhan) phim_back_nhan = 0;
					else{
						baocaosms(CHINH,"\rchinh gio bang tay");
						if(bat_phone_phu)baocaosms(PHU,"\r*chinh gio bang tay*");
					}
				}
				break;
				
			case SELECT:
				if(phim_mode_nhan){
					phim_mode_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode==MP3TEST && !(eep_mp3%4)) sub_mode++;
					if(sub_mode>MAX_MODE)sub_mode = 0;
					chop=0;
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					sub_mode = 0;
					chop=0;
				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					mode = sub_mode;
					sub_mode = 0;
					motor_index  = motor_run_check();
					motor_index2 = motor_run_check2();
					if(mode){
						LCD_guilenh(0x80);
						LCD_guichuoi(mode_select[mode]);
						switch(mode){
							case GIOKIM : if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,1);
										else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  "); }
										if(so_motor>2){
										  	LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
										  	if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
											else LCD_guichuoi("         ");   
										}
										break;
							case GIOTHUC: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,1); 
											giotemp=hour;phuttemp=minute;break;
							case CANHKIM: LCD_guichuoi("\300MAY 1          ");LCD_blinkXY(DUOI,4);break;
							case MP3TEST: LCD_guigio(0xc0,"000 ",0,0,251,1);LCD_guigio(0xc8," ",day,month,100+year,1);giotemp=phuttemp=song_name=0;
										thutemp = date;ngaytemp = day;thangtemp = month; namtemp = year;
										LCD_guilenh(0xcf);
										LCD_guidulieu(thutemp+'0');
										break;
							case DIENTHOAI: if(nosim) LCD_guichuoi("\300  KHONG CO SIM  ");
											else if(!gsm_pw) LCD_guichuoi("\300  GSM TAT NGUON ");
											else{
												kiemtratinhieu();kiemtrataikhoan();
												LCD_xoa(DUOI);LCD_guilenh(0xc0);LCD_guichuoi(lenh_sms);
												LCD_guilenh(0x80);phone[10]=0;LCD_guichuoi(phone);
												LCD_guilenh(0x8e);LCD_guidulieu(signal/10+'0');LCD_guidulieu(signal%10+'0');
											}
											break;
							case DATE:  LCD_guichuoi("\300  ");LCD_guidulieu(day/10+'0');LCD_guidulieu(day%10+'0');
										LCD_guichuoi(" - ");LCD_guidulieu(month/10+'0');LCD_guidulieu(month%10+'0');
										LCD_guichuoi(" - ");LCD_guidulieu(year/10+'0');LCD_guidulieu(year%10+'0');LCD_guichuoi("  ");
										break;
						}
					}
					break;
				}
				
				LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,mode_wait,flip_pulse);
				LCD_chop(TREN,mode_select[sub_mode]);		
				break;
			case GIOKIM:
				LCD_blinkXY((sub_mode<8 && so_motor>2)?TREN:DUOI,so_motor==1?(7+sub_mode+sub_mode/2):(2+sub_mode%8+sub_mode%8/2+sub_mode%8/4));
				if(!phim_mode_doi){
					LCD_noblink();
					sub_mode = mode;
					mode = SELECT;
					gio[0] = gio[0]%12;
					gio[1] = gio[1]%12;
					gio[2] = gio[2]%12;
					gio[3] = gio[3]%12;
					luu_gio_kim();	
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					switch(sub_mode){
						case GIOCHUC  : case GIO2CHUC  :
						case GIO3CHUC : case GIO4CHUC  :
							if(gio[sub_mode/4]>13)gio[sub_mode/4]%=10;
							else gio[sub_mode/4] +=10;
						break;
						case GIODVI   : case GIO2DVI   :
						case GIO3DVI  : case GIO4DVI   :
							if(gio[sub_mode/4]>22) gio[sub_mode/4] = 20;
							else if(gio[sub_mode/4]%10==9) gio[sub_mode/4]-=9;
							else gio[sub_mode/4]++;
						break;
						case PHUTCHUC : case PHUT2CHUC :
						case PHUT3CHUC: case PHUT4CHUC :
							if(phut[sub_mode/4]>49) phut[sub_mode/4]-=50;
							else phut[sub_mode/4]+=10;
						break;
						case PHUTDVI  : case PHUT2DVI  :
						case PHUT3DVI : case PHUT4DVI  :
							if(!(++phut[sub_mode/4]%10)) phut[sub_mode/4]-=10;
						break;
					}

					if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,flip_pulse);
					else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  ");}
					if(so_motor>2){
						LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
						if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
						else LCD_guichuoi("         ");   
					}
				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
					else sub_mode = 4*so_motor-1;
				}
				
				if(phim_mode_nhan){

					phim_mode_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode>(4*so_motor-1)){
						LCD_noblink();
						sub_mode = mode;
						mode = SELECT;
						gio[0] = gio[0]%12;
						gio[1] = gio[1]%12;
						gio[2] = gio[2]%12;
						gio[3] = gio[3]%12;
						luu_gio_kim();
						
						
					}
				}
				break;
			case GIOTHUC:
				LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
				if(eep_gpson && !phim_mode_doi){
					sub_mode = mode;
					mode = SELECT;
					mp3_hour = 24;
					mp3_minute = 60;
					if(eep_gpson) gsm_thietlapngaygiothuc();//gsm_laygio_gps();
					// else rtc_gettime(&hour,&minute,&second);
					hour12 = (hour>11)?hour-12:hour;
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					switch(sub_mode){
						case GIOCHUC  :
							if(giotemp>13)giotemp%=10;
							else giotemp +=10;
						break;
						case GIODVI   :
							if(giotemp>22) giotemp = 20;
							else if(giotemp%10==9) giotemp-=9;
							else giotemp++;
						break;
						case PHUTCHUC :
							if(phuttemp>49) phuttemp-=50;
							else phuttemp+=10;
						break;
						case PHUTDVI  :
							if(!(++phuttemp%10)) phuttemp-=10;
						break;
					}
					
					LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),giotemp,phuttemp,mode_wait,1);

				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
					else sub_mode = 3;
				}
				
				if(phim_mode_nhan){
					phim_mode_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode>3){
						LCD_noblink();
						sub_mode = mode;
						mode = SELECT;
						hour = giotemp;
						minute = phuttemp;
						rtc_settime(hour,minute,second);
						hour12 = hour % 12;
						GPS_time = 0;
						mp3_hour = 24;
						mp3_minute = 60;
					}
				}
				break;
			case MP3TEST:
				
				LCD_blinkXY(DUOI,sub_mode+(sub_mode>2)+(sub_mode>6));
				AmplyRelay = mp3_playing;
				if(!phim_mode_doi){
					sub_mode = mode;
					mode = SELECT;
					if(mp3_playing) mp3_play(9,0,0);
					AmplyRelay = 0;
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					switch(sub_mode){
						case MP3SONGTRAM  :
							song_name = (song_name+100)%1000;
						break;
						case MP3SONGCHUC  :
							song_name = (song_name/100*100) + (song_name-song_name/100*100+10)%100;
						break;
						case MP3SONGDVI  :
							song_name = (song_name/10*10) + (song_name-song_name/10*10+1)%10;
						break;
						case MP3GIOCHUC  :
							if(giotemp>13)giotemp%=10;
							else giotemp +=10;
						break;
						case MP3GIODVI   :
							if(giotemp>22) giotemp = 20;
							else if(giotemp%10==9) giotemp-=9;
							else giotemp++;
						break;
						case MP3PHUTCHUC :
							if(phuttemp>49) phuttemp-=50;
							else phuttemp+=10;
						break;
						case MP3PHUTDVI  :
							phuttemp=phuttemp+(eep_mp3>3?5:1);
							if(!(phuttemp%10)) phuttemp-=10;
						break;
						case MP3NGAYCHUC :
							if(ngaytemp>21) ngaytemp%=10;
							else ngaytemp+=10;
							if(!ngaytemp) ngaytemp = 10;
						break;
						case MP3NGAYDVI  :
							if(ngaytemp>30) ngaytemp = 30;
							else if(ngaytemp%10==9) ngaytemp-=9;
							else ngaytemp++;
						break;
						case MP3THANGCHUC :
							if(thangtemp<3) thangtemp+=10;
							else if(thangtemp>10) thangtemp-=10;
						break;
						case MP3THANGDVI  :
							if(thangtemp==9) thangtemp = 1;
							else if(thangtemp>11) thangtemp = 10;
							else thangtemp++;
						break;
						case MP3NAMCHUC :
							if(namtemp>89) namtemp-=90;
							else namtemp+=10;
						break;
						case MP3NAMDVI  :
							if(!(++namtemp%10)) namtemp-=10;
						break;
						
					}
					LCD_guigio(0xc0,"    ",giotemp,phuttemp,251,1);
					LCD_guilenh(0xc0);
					LCD_guidulieu(song_name/100+'0');
					LCD_guidulieu(song_name/10%10+'0');
					LCD_guidulieu(song_name%10 + '0');
					LCD_guigio(0xc8," ",ngaytemp,thangtemp,100+namtemp,1);
					check = (23*thangtemp/9 + ngaytemp + (thangtemp>2?!(namtemp%4):2) + namtemp + (namtemp+3)/4 + 1);
					thutemp = check%7+1; 
					LCD_guilenh(0xcf);
					LCD_guidulieu(thutemp+'0');
					// LCD_guigio(0xc0,"  MP3  ",giotemp,phuttemp,thutemp*10,flip_pulse);

				}
				if(phim_back_nhan){
					phim_back_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
					else{
						song_name = 0;
						LCD_guilenh(0xc0);
						LCD_guichuoi("000 ");
						mp3_play(9,0,0);
					} 

				}
				
				if(phim_mode_nhan){

					phim_mode_nhan = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode>12){
						sub_mode = 0;
						mp3_play(eep_mp3>3?thutemp:10,giotemp,phuttemp);
						delay_ms(100);
						AmplyRelay = mp3_playing;
						LCD_guilenh(0xc3);
						LCD_guidulieu(mp3_playing?'O':'X');
						// LCD_guigio(0xc0,mp3_playing?" OK ":" NO ",giotemp,phuttemp,251,1);
						// LCD_guigio(0xc8," ",ngaytemp,thangtemp,100+namtemp,1);
						// LCD_guilenh(0xcf);
						// LCD_guidulieu(thutemp+'0');
						// LCD_guigio(0xc0,mp3_playing?"  OK   ":"  NO   ",giotemp,phuttemp,thutemp*10,flip_pulse);
						// LCD_noblink();
					}else if(song_name && sub_mode > 2 && eep_mp3>3){
						sub_mode = 0;
						mp3_play(0,song_name/12,(song_name-song_name/12*12)*5);
						delay_ms(100);
						AmplyRelay = mp3_playing;
						LCD_guilenh(0xc3);
						LCD_guidulieu(mp3_playing?'M':'X');
					}
				}
				
				break;
			case CANHKIM:
				if(phim_mode_nhan){
					phim_mode_nhan=0;
					canhkim = 5; 
					may_canh_kim = sub_mode+1;
					delay_ve_kim = 5;
					sub_mode = mode;
					mode = SELECT;
					LCD_noblink();
				}
				if(phim_cong_nhan){
					phim_cong_nhan = 0;
					if(++sub_mode>so_motor-1) sub_mode = 0;
					LCD_guidulieu(sub_mode+'1');
					LCD_guilenh(0xc4);
				}
				break;
			case DIENTHOAI:
			case DATE:
				//2 SUBMODE : KT TAI KHOAN, KT SDT & SONG
				if(phim_mode_nhan){
					phim_mode_nhan=0;
					sub_mode = mode;
					mode = SELECT;
				}
				break;
			default: mode = sub_mode = 0;
		}
		
		WATCHDOG;
	}
}

void mp3_serial_interupt() __interrupt 8 __using 1 {
	WATCHDOG;
	if(mp3_RI)
		S2CON &= 0xFE;
	
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
	if(motor_index==5 && motor_index2==5){
		if(dien_ap_thap){
			if(dien_ap_nguon<82) ChargeRelay = 0;
			else if(dien_ap_nguon>110) {
				dien_ap_thap = 0;
			}
		}else if(dien_ap_nguon<92){
			dien_ap_thap = 1;
			motor_index  = motor_index2 = 5;
			P2 &= 0x0F;
			// luu_gio_kim();		
		}
	}

	ADC_CONTR = 0x8b;
}


