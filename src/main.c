#include "true.h"
#include "main.h"

u8 __code ver[] = " ASIA GPS 3.3.2";
// u8 __code ver[] = " ASIA NOR 3.0.4 ";
/*Change log
3.0.1
	Chinh Loi Khong Nhan mp3 lai khi mp3 bi mat ket noi
3.0.2
	Them tinh nang nhan tin theo thang vao ngay mung 1 tren dalas
3.0.3
	Thay doi chuc nang sac xa
3.0.31
	fix bug sac xa
3.3.
	tat lay lai gio lien tuc chi lay lai gio dau gio
3.0.4
	- acqui <10V tat motor <9V tat charge relay
	- bo kiem tra sim 24h
3.0.41
	-bo kiem tra gio dau gio
3.0.42
	- motor tu dong hoat dong tro lai khi dien ap tren 12V6
3.0.43
	- thoi_gian_doi_doc_cam = 20 -> 50
3.0.44
	- dien ap phuc hoi motor giam xuong con 12V6-> 12V
3.0.45
	-lay gio moi 1g dong ho
*/
#include "chuong_trinh.c"
#include "motor_cam_phim.c"
#include "gsm_serial.c"
#include "xu_ly_tin_nhan.c"

void main() {
	u8 __data giotemp=0,phuttemp=0;
	
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
	
	/*ADC INIT*/
	P1ASF = 8;
	CLK_DIV = 0;
	ADC_RES = 0;
	ADC_CONTR = 0x83;
	EADC = 1;
	EA = 1; //bat tat ca interupt
	/****************/
	
	xung_giay_check=250;
	thoi_gian_doi_doc_cam=30;
	thoi_gian_doi_doc_cam_step=10;
	gsm_delay_reset=10;
	key_wait1 = key_wait2 = key_wait3 = 2;
	mode = 5; sub_mode = 1;
	motor_step_int_init();
	/*validate eeprom*/
	u8 __xdata i;
	IAP_docxoasector1();
	if(eeprom_buf[MOTOR_EEPROM]>1)eeprom_buf[MOTOR_EEPROM] = 1;
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
	if(mp3_playing) eeprom_buf[MP3_EEPROM] = 0;
	else if(!eeprom_buf[MP3_EEPROM] || eeprom_buf[MP3_EEPROM]>2)eeprom_buf[MP3_EEPROM] = 2; 	

	IAP_ghisector1();
	if(eep_phut>59 || eep_gio>11){
		IAP_xoasector(SECTOR2);
		IAP_ghibyte(PHUT_EEPROM,0);
		IAP_ghibyte(GIO_EEPROM,0);
	}else{
		phut = eep_phut;
		gio  = eep_gio;
	}

	//khoi dong sac acqui
	ChargeRelay = 1;
	// phut_sac_xa_acqui_con_lai = (eep_giosacxa >> 4) * 60;
	
	/*Khoi tao serial baudrate 57600 cho gsm sim900*/
	gsm_init();

	
	/*Khoi tao serial baudrate 9600 cho dfplayer module*/
	if(eep_mp3){
		mp3_serial_init();
		mp3_status= mp3_IDLE;
		mp3_hour = 24;
		mp3_minute = 60;
	}

	
	da_gui_bao_cao = 1;
	ngay_reset_con_lai = eep_ngayreset;
	
	/*PCA TIMER 0 INIT 50us*/
	CCAP0L = CCAP0H = 0;
	PCA_Timer0 = 36000;
	CCAPM0 = 0x49;
	CR=1;
	/******** Initial watdog ****WDT**/	
	
	
  	// /*Khoi tao man hinh LCD*/
	LCD_Init();

	// rtc_settime(0,0,0);
	
	// /**************/

	
	/*thiet lap gio gps*/
	//TODO validate dalas time
	rtc_gettime(&hour, &minute, &second);
	if(hour>23 || minute > 59 || second >59)	
		rtc_settime(0,0,0);
	
	// /* Interrupt Ngoai 0 xung giay*/
	rtc_init(); //khai bao cho ds1307 tao xung vuong moi giay
	INT_DHO_EX = 1; //Bat ngat ngoai 0 (EX0)
	INT_DHO_IT=1; // ngat ngoai 0 cho suon len
	rtc_gettime(&hour, &minute, &second);
	gsm_laygio_gps();
    hour12 = (hour>11)?hour-12:hour;
	bat_phone_phu = eep_phonephu[11]&1;
	ADC_CONTR = 0x8b;
	if(gsm_thietlapnhantin()){ // thiet lap thong so nhan tin
		baocaosms(CHINH,"\rbo dieu khien khoi dong san sang");
		if(bat_phone_phu)baocaosms(PHU,"\rbo dieu khien khoi dong san sang");
	}
	if(!eep_norreset){
		mode_wait = 5;
		IAP_docxoasector1();
		eeprom_buf[NORRESET_EEPROM] = 0xff;
		IAP_ghisector1();
	}else mode_wait = 60;
	
	WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64; // Enable watchdog, clear watchdog, pre scale = 64, watchdog idle mode = NO
	
	
	
	while(1){
		if(eep_phut!=phut || eep_gio!=gio){
			IAP_xoasector(SECTOR2);
			IAP_ghibyte(PHUT_EEPROM,phut);
			IAP_ghibyte(GIO_EEPROM,gio);
		}

		if(!mode_wait || !mode) {
			mode=0;
			if(!step_run) step_run = motor_run_check_step();
			if(!motorDC) motorDC = motor_run_check();
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
			if(delay_ve_kim && !canhkim) delay_ve_kim--;
			if(!delay_ve_kim && canhkimbuoc){
				canhkim = canhkimbuoc;
				delay_ve_kim = 5;
				step_run = motor_run_check_step();
				motorDC = motor_run_check();
			}
			
			if(motorDC && thoi_gian_doi_doc_cam) thoi_gian_doi_doc_cam--;
			
			if(step_run && thoi_gian_doi_doc_cam_step) thoi_gian_doi_doc_cam_step--;//if(!(--thoi_gian_doi_doc_cam_step)) motorDC
			if(mode_wait && (!eep_mp3 || !mp3_playing)) mode_wait--;
			
			if(key_wait1 && key_hold1){
				key_wait1--;
			}
			giay_out=0;
		}

		if(eep_loithesim<24){
			kiem_tra_den();
			if(!mode && eep_motor && eep_mp3==2) kiem_tra_nhac();
		}

		if(eep_ngayreset && !ngay_reset_con_lai && eep_gioreset==hour && minute>5 && !step_run && !motorDC && (!eep_mp3 || !mp3_playing)){
			EA=0;
			IAP_ghibyte(NORRESET_EEPROM,0);
			// IAP_docxoasector1();
			// eeprom_buf[NORRESET_EEPROM] = 0;
			// IAP_ghisector1();
			RingRelay = 1;
			delay_ms(2000);
			while(1);
		}

		if(!xung_giay_check && !mat_xung_giay){
			mat_xung_giay = 1;
			baocaosms(CHINH,"\rphat hien loi mat xung giay");
			if(bat_phone_phu)baocaosms(PHU,"\rphat hien loi mat xung giay");
		}
		if(!thoi_gian_doi_doc_cam && !thoi_gian_doi_doc_cam_step && !loi_cam_motor){
			loi_cam_motor = 1;
			step_run = motorDC = 0;
			baocaosms(CHINH,"\rphat hien loi doc cam");
			if(bat_phone_phu)baocaosms(PHU,"\rphat hien loi doc cam");
		}


		if(!da_gui_bao_cao && minute<5 ) {
			if(!GPS_time && eep_gpson) gsm_laygio_gps();
			else rtc_gettime(&hour,&minute,&second);
			hour12 = (hour>11)?hour-12:hour;
			if(eep_baocao) {
				baocaosms(CHINH,"\rbao cao dau gio");
				if(bat_phone_phu)baocaosms(PHU,"\rbao cao dau gio");
			}
			da_gui_bao_cao = 1;
		}
		
		switch(mode){
			case 0:
				if(gsm_reset){
					ADC_CONTR = 0x8b;
					gsm_reset = 0;
					gsm_serial_cmd = NORMAL;
					gsm_laygio_gps();
					hour12=hour%12;
					if(gsm_thietlapnhantin()){
						baocaosms(CHINH,"\rgsm module reset thanh cong");
						if(bat_phone_phu)baocaosms(PHU,"\rgsm module reset thanh cong");
					}
				}
				if(sms_dang_xu_ly){
					/*xu ly tin nhan*/
					xu_ly_tin_nhan();
					
					send_gsm_cmd("AT+CMGDA=\"DEL ALL\"\r");
					
					sms_dang_xu_ly = 0;
				}
				else LCD_guigio(0x80,"  KIM  ",gio,phut,second,flip_pulse);
				
				if(GPS_time) LCD_guigio(0xc0,"  GPS  ",hour,minute,second,flip_pulse);
				else if(eep_gpson) LCD_guigio(0xc0,"   DS  ",hour,minute,second,flip_pulse);
				else LCD_guigio(0xc0," ASIA  ",hour,minute,second,flip_pulse);
				if(!key_wait1){
					key_pressed1=0;
					mode_wait = TIME_MODE_WAIT;
					delay_ve_kim = canhkim = canhkimbuoc = 0;
					mode = 5;
					sub_mode = 1;
					step_run = motorDC = 0;
					AmplyRelay = 0;
					mp3_status = mp3_IDLE;
					if(key_pressed2) key_pressed2 = 0;
					else{
						if(bat_phone_phu){
							baocaosms(CHINH,"\rchinh gio bang tay");
							baocaosms(PHU,"\r*chinh gio bang tay*");
						}else baocaosms(CHINH,"\r*chinh gio bang tay*");
					}
				}
				break;
				
			case SELECT:
				if(key_pressed1){
					key_pressed1 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode==MP3TEST && !eep_mp3) sub_mode++;
					if(sub_mode>MAX_MODE)sub_mode = 0;
					chop=0;
				}
				if(key_pressed3){
					key_pressed3 = 0;
					mode_wait = TIME_MODE_WAIT;
					sub_mode = 0;
					chop=0;
				}
				if(key_pressed2){
					key_pressed2 = 0;
					mode_wait = TIME_MODE_WAIT;
					mode = sub_mode;
					sub_mode = 0;
					step_run = motor_run_check_step();
					motorDC = motor_run_check();
					if(mode){
						LCD_guilenh(0x80);
						LCD_guichuoi(mode_select[mode]);
						switch(mode){
							case GIOKIM : LCD_guigio(0xc0,"  KIM  ",gio,phut,0,flip_pulse); break;
							case GIOTHUC: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,flip_pulse); 
											giotemp=hour;phuttemp=minute;break;
							case CANHKIM: LCD_guichuoi("\3001 PHUT          ");LCD_blinkXY(DUOI,0);break;
							case MP3TEST: LCD_guigio(0xc0,"  MP3  ",0,0,0,flip_pulse); AmplyRelay = 1;giotemp=phuttemp=0;break;
						}
					}
					break;
				}
				
				LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,mode_wait,flip_pulse);
				LCD_chop(TREN,mode_select[sub_mode]);		
				break;
			case GIOKIM:
				LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
				if(key_pressed3){
					key_pressed3 = 0;
					mode_wait = TIME_MODE_WAIT;
					switch(sub_mode){
						case GIOCHUC  :
							if(gio>13)gio%=10;
							else gio +=10;
						break;
						case GIODVI   :
							if(gio>22) gio = 20;
							else if(gio%10==9) gio-=9;
							else gio++;
						break;
						case PHUTCHUC :
							if(phut>49) phut-=50;
							else phut+=10;
						break;
						case PHUTDVI  :
							if(!(++phut%10)) phut-=10;
						break;
					}
					LCD_guigio(0xc0,"  KIM  ",gio,phut,0,flip_pulse);
				}
				if(key_pressed2){
					key_pressed2 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
				}
				
				if(key_pressed1){

					key_pressed1 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode>3){
						LCD_noblink();
						sub_mode = mode;
						mode = SELECT;
						gio = gio%12;
						IAP_xoasector(SECTOR2);
						IAP_ghibyte(PHUT_EEPROM,phut);
						IAP_ghibyte(GIO_EEPROM,gio);
					}
				}
				break;
			case GIOTHUC:
				LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
				if(eep_gpson && !key_wait1){
					sub_mode = mode;
					mode = SELECT;
					mp3_hour = 24;
					mp3_minute = 60;
					if(!GPS_time && eep_gpson) gsm_laygio_gps();
					else rtc_gettime(&hour,&minute,&second);
					hour12 = (hour>11)?hour-12:hour;
				}
				if(key_pressed3){
					key_pressed3 = 0;
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
					
					LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),giotemp,phuttemp,mode_wait,flip_pulse);

				}
				if(key_pressed2){
					key_pressed2 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
				}
				
				if(key_pressed1){
					key_pressed1 = 0;
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
				LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
				if(!key_wait1){
					sub_mode = mode;
					mode = SELECT;
					AmplyRelay = 0;
				}
				if(key_pressed3){
					key_pressed3 = 0;
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
					LCD_guigio(0xc0,"  MP3  ",giotemp,phuttemp,0,flip_pulse);
				}
				if(key_pressed2){
					key_pressed2 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(sub_mode)sub_mode--;
				}
				
				if(key_pressed1){

					key_pressed1 = 0;
					mode_wait = TIME_MODE_WAIT;
					if(++sub_mode>3){
						sub_mode = 0;
						mp3_play(giotemp,phuttemp);
						delay_ms(100);
						LCD_guigio(0xc0,mp3_playing?"  OK   ":"  NO   ",giotemp,phuttemp,0,flip_pulse);
						LCD_noblink();
					}
				}
				break;
			case CANHKIM:
				if(key_pressed1){
					key_pressed1=0;
					canhkim = canhkimbuoc = sub_mode+1;
					delay_ve_kim = 5;
					sub_mode = mode;
					mode = SELECT;
					LCD_noblink();
				}
				if(key_pressed3){
					key_pressed3 = 0;
					sub_mode = 4 - sub_mode;
					LCD_guidulieu(sub_mode+'1');
					LCD_guilenh(DUOI);
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
	if(dien_ap_thap){
		if(dien_ap_nguon<82) ChargeRelay = 0;
		else if(dien_ap_nguon>110) {
			dien_ap_thap = 0;
			baocaosms(CHINH,"\r*dien ap khoi phuc*");
		}
	}else if(dien_ap_nguon<92){
		dien_ap_thap = 1;
		motorDC = step_run = 0;
		P2 &= 0x0F;
		if(eep_phut!=phut || eep_gio!=gio){
			IAP_xoasector(SECTOR2);
			IAP_ghibyte(PHUT_EEPROM,phut);
			IAP_ghibyte(GIO_EEPROM,gio);
		}
		baocaosms(CHINH,"\r*dien ap acqui thap*");
	}

	ADC_CONTR = 0x8b;
}


