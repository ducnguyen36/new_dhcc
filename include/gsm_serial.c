#include "help.h"

void clear_sms_buffer(u8 index_dau){
    sms_index = 0;
    while(index_dau<161)lenh_sms[index_dau++] = 0;
}

__bit gsm_sendandcheck(u8 *cmd, u8 retry, u8 delay, u8 *display){
    connect_time_out = delay;
    total_try_time_out = retry*delay + 10;
    gui_lenh_thanh_cong = 0;
    send_gsm_cmd(cmd);
    while(!gui_lenh_thanh_cong && total_try_time_out && !nosim){ 
            WATCHDOG;
            LCD_guilenh(0x80);
            LCD_guichuoi(display);
            if(GPS_time) LCD_guigio(0xc0,"  GPS  ",hour,minute,second,flip_pulse);
            else if(!eep_gpson) LCD_guigio(0xc0," ASIA  ",hour,minute,second,flip_pulse);
            else LCD_guigio(0xc0,"   DS  ",hour,minute,second,flip_pulse);
            if(skip_gsm_cmd){skip_gsm_cmd = 0;return 0;}
            if(!connect || error){
                error = 0;
                if(!retry--) break;
                connect_time_out = connect = delay;
                if(*(cmd+2) == '+' && *(cmd+7)!='?' && *(cmd+8)!='?') send_gsm_cmd("A/\r"); 
                else send_gsm_cmd(cmd);
            } 
        
    }
    LCD_xoa(TREN);
    gsm_serial_cmd = NORMAL;
    return gui_lenh_thanh_cong;
}


__bit gsm_quay_so(u8 *phone){
    send_gsm_cmd("ATD");
    send_gsm_cmd(phone);
    return gsm_sendandcheck(";\r",1,60,"    CALLING     ");
}


__bit send_sms(__bit chinh){
    if(lenh_sms[0] && !lenh_sms[3]){gsm_sendandcheck("\032",3,1,"TK<1000 K BAOCAO"); return 0;}
    send_gsm_cmd("AT+CMGS=\"");
    if(chinh) send_gsm_cmd(phone_chinh);
    else send_gsm_cmd(eep_phonephu);
    gsm_serial_cmd = CMGS;
    return gsm_sendandcheck("\"\r",5,61,"   SENDING   ");
}

__bit kiemtrataikhoan(){
    lenh_sms[0] = 0;
    have_cusd = 0;
    gsm_serial_cmd = CUSD;
    gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA TK   ");
    gsm_serial_cmd = NORMAL;
    return lenh_sms[0];
}

__bit kiemtrasodienthoai(){
    // lenh_sms[0] = 0;
    have_cusd = 0;
    gsm_serial_cmd = SDT;
    switch(nha_mang){
        case VIETTEL:
            return gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA SDT   ");
        case VINAPHONE:
            return gsm_sendandcheck("AT+CUSD=1,\"*110#\",\r",3,30,"  KIEM TRA SDT   ");
        case MOBIFONE:
           return gsm_sendandcheck("AT+CUSD=1,\"*0#\",\r",3,30,"  KIEM TRA SDT   ");
        case VIETNAM:
           return gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA SDT   ");
    }
    // gsm_serial_cmd = NORMAL;
    // return lenh_sms[0];
    return 0;
}

void kiemtratinhieu(){
    gsm_serial_cmd = CSQ;
    clear_sms_buffer(0);
    sms_index  = 0;
    if(gsm_sendandcheck("AT+CSQ\r",15,1," SONG ")){
        u8 i = 0;
        signal = 0;
        while(lenh_sms[i]!=',')signal = lenh_sms[i++]-48 + signal*10;    
    }
}

void send_gio_kim(){
    u8 i = 0;
    send_gsm_cmd(atmel_phat?"\r89C55":"\rSTC15");
    do{
        send_gsm_cmd(may_dc?" DC":" ST");
        send_gsm_byte(i+'1');
        send_gsm_byte('=');
        if(!thoi_gian_doi_doc_cam[i])send_gsm_byte('E');
        send_gsm_byte(gio[i]/10+'0');
        send_gsm_byte(gio[i]%10+'0');
        send_gsm_byte(':');
        send_gsm_byte(phut[i]/10+'0');
        send_gsm_byte(phut[i]%10+'0');
    }while(++i!=so_motor);
}

void send_gio_thuc(__bit chinh){
    send_gsm_cmd(" T=");
    send_gsm_byte(hour/10+'0');
    send_gsm_byte(hour%10+'0');
    send_gsm_byte(':');
    send_gsm_byte(minute/10+'0');
    send_gsm_byte(minute%10+'0');
    if(date == 1) send_gsm_cmd(" CN,");
    else{
        send_gsm_cmd(" T");
        send_gsm_byte(date+'0');
        send_gsm_byte(',');
    }
    send_gsm_byte(day/10+'0');
    send_gsm_byte(day%10+'0');
    send_gsm_byte('/');
    send_gsm_byte(month/10+'0');
    send_gsm_byte(month%10+'0');
    send_gsm_byte('/');
    send_gsm_byte(year/10+'0');
    send_gsm_byte(year%10+'0');

    if(chinh){
        send_gsm_cmd(" GPS=");
        send_gsm_byte((GPS_time?'1':'0')+eep_gpson);
    }
}

void send_thong_so(__bit chinh){
    u8 dien_ap = dien_ap_nguon*28/256;
    if(chinh){
        send_gsm_cmd(" DH=");
        send_gsm_byte(motor_dung?'0':'1');
        send_gsm_cmd(" BC=");
        send_gsm_byte(eep_baocao+'0');
        send_gsm_cmd(" XG=");
        send_gsm_byte(xung_giay_check?'1':'0');
        send_gsm_cmd(" RS=");
        send_gsm_byte(ngay_reset_con_lai+'0');
        send_gsm_byte('/');
        send_gsm_byte(eep_ngayreset+'0');
        send_gsm_cmd(" TR=");
        send_gsm_byte(eep_gioreset/10+'0');
        send_gsm_byte(eep_gioreset%10+'0');
        send_gsm_cmd(":06");
    }
    send_gsm_cmd(" DEN=");
    send_gsm_byte(DenRelay?'1':'0');
    send_gsm_cmd(" VOL=");
    send_gsm_byte(dien_ap/10+'0');
    send_gsm_byte(dien_ap%10+'0');
    if(eep_mp3 || chinh){
        send_gsm_cmd(" MP3=");
        send_gsm_byte(eep_mp3+(mp3_playing?'0':47));
    }
    if(!chinh) return;
    //send signal
    send_gsm_cmd(" SIG=");
    send_gsm_byte(signal/10+'0');
    send_gsm_byte(signal%10+'0');
    send_gsm_cmd(" DT=");
    send_gsm_byte(eep_phonephu[11]+'0');
    if(eep_phonephu[11]==2) return;
    send_gsm_byte(',');
    send_gsm_cmd(eep_phonephu);

}


void baocaosms(__bit chinh, u8  *noidung){
    if(!sms_on) return;
    gsm_sendandcheck("AT\r", 15, 1,ver);
    kiemtratinhieu();    
    if(*(noidung+1)!='*') kiemtrataikhoan();
    else lenh_sms[0]=0;

    if(!send_sms(chinh)) return;
    
    send_gsm_cmd(ver);

    send_gio_kim();
    send_gio_thuc(chinh);
    send_thong_so(chinh);

  
    if(*(noidung+1)!='*' && lenh_sms[0]){
        send_gsm_cmd("\rTK Chinh=");
        send_gsm_cmd(lenh_sms);
        if(chinh && !lenh_sms[4]) send_gsm_cmd("\rTai khoan con duoi 10000");
        lenh_sms[1] = lenh_sms[2] = lenh_sms[3] = lenh_sms[4] = 0;
    }
    send_gsm_cmd(noidung);

    if(*(noidung+1)=='*') send_gsm_cmd("\032");
    else gsm_sendandcheck("\032",50,1,"DANG GUI BAO CAO");
    
    
}

void send_thong_so_den(){
    u8 i;
    send_gsm_cmd(" DEN=");
    send_gsm_byte(DenRelay?'1':'0');
    send_gsm_cmd("\rMODEN=");
    send_gsm_byte(eep_tatmoden[0]+'0');
    if(!eep_tatmoden[0]){send_gsm_cmd("\rKhong co gio mo den"); return;}
    send_gsm_cmd("\rGio Mo Den:");
    i = eep_tatmoden[0];
    send_gsm_byte('\r');
    send_gsm_byte(eep_tatmoden[i]/60 +'0');
    send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
    send_gsm_byte(':');
    send_gsm_byte(eep_tatmoden[i]%6 +'0');
    send_gsm_cmd("0 - ");
    send_gsm_byte(eep_tatmoden[1]/60 +'0');
    send_gsm_byte(eep_tatmoden[1]/6%10 +'0');
    send_gsm_byte(':');
    send_gsm_byte(eep_tatmoden[1]%6 +'0');
    send_gsm_byte('0');
    for(i=2;i<eep_tatmoden[0];i+=2){
        send_gsm_byte('\r');
        send_gsm_byte(eep_tatmoden[i]/60 +'0');
        send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
        send_gsm_byte(':');
        send_gsm_byte(eep_tatmoden[i]%6 +'0');
        send_gsm_cmd("0 - ");
        send_gsm_byte(eep_tatmoden[i+1]/60 +'0');
        send_gsm_byte(eep_tatmoden[i+1]/6%10 +'0');
        send_gsm_byte(':');
        send_gsm_byte(eep_tatmoden[i+1]%6 +'0');
        send_gsm_byte('0');
    }
}

void baocaoden(__bit chinh, u8 *noidung){
    if(!sms_on) return;
    gsm_sendandcheck("AT\r", 15, 1,ver);
    if(!send_sms(chinh)) return;
    send_gio_thuc(chinh);
    send_thong_so(chinh);
    send_thong_so_den();
    send_gsm_cmd(noidung);
    gsm_sendandcheck("\032",50,1,"GUI BAO CAO DEN ");
}

void gui_huong_dan(){
    lenh_sms[0]=0;
    if(!send_sms(CHINH)) return;
    send_gsm_cmd(huongdan);
    gsm_sendandcheck("\032",50,1," GUI HUONG DAN  ");
}

__bit gsm_thietlapsim800(){
    if(gsm_sendandcheck("AT\r", 15, 1,ver)){      
        clear_sms_buffer(0);
        sms_index = 0;
        gsm_serial_cmd = CSPN;
        if(gsm_sendandcheck("AT+CSPN?\r",15,1," TEN TONG DAI  ")){
            nha_mang = lenh_sms[4];
        }
        return 1;
    }
    return 0;
}

void gsm_thietlapngaygiothuc(){
    __bit GPS_time_temp = 0;
    if(sim_test_sec==61) return;
    if(gsm_sendandcheck("AT+CLTS=1\r",15,1,"BAT CHE DO GPS ")){
        if(gsm_sendandcheck("AT+COPS=2\r",15,1," KHOI DONG GPS ")){
            gsm_serial_cmd = COPS;
            if(gsm_sendandcheck("AT+COPS=0\r",10,60,"  KET NOI GPS  ")){
                clear_sms_buffer(0);
                sms_index = 0;
                gsm_serial_cmd = CLK;
                if(gsm_sendandcheck("AT+CCLK?\r",15,1," LAY TIME GPS  ")){
                    year   = (lenh_sms[3] -48)*10 + lenh_sms[4]  - 48;
                    month  = (lenh_sms[6] -48)*10 + lenh_sms[7]  - 48;
                    day    = (lenh_sms[9] -48)*10 + lenh_sms[10] - 48;
                    hour   = (lenh_sms[12]-48)*10 + lenh_sms[13] - 48;
                    minute = (lenh_sms[15]-48)*10 + lenh_sms[16] - 48;
                    second = (lenh_sms[18]-48)*10 + lenh_sms[19] - 48;
                    rtc_settime(hour,minute,second);
                    u16 check = (23*month/9 + day + (month>2?!(year%4):2) + year + (year+3)/4 + 1) ;
                    date = check%7+1;
                    rtc_setdate(date,day,month,year);
                    GPS_time_temp = 1;
                }
            }
        }
    }
    GPS_time = GPS_time_temp;
    gsm_serial_cmd = NORMAL;
}

__bit gsm_thietlapgoidien(){
   
    if(gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ")){
        clear_sms_buffer(0);
        sms_index = 0;
        gsm_serial_cmd = CALR;
        if(gsm_sendandcheck("AT+CCALR?\r",15,1," THIET LAP GOI ")){
            return 1;
        }
    }
    return 0;
	
}

__bit gsm_thietlapnhantin(){
    if(!gsm_pw || !sms_on) return 0;
    if(gsm_sendandcheck("AT+CMGF=1\r", 15, 1,"  SENDING CMGF  ")){
        if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
            if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  THIET LAP TN  ")){
                kiemtratinhieu();
                return 1;
            }
        }
    }	
    return 0;
}

__bit gsm_thietlapnhantin1(){
    if(!gsm_pw || !sms_on) return 0;
    if(!gsm_sendandcheck("AT\r", 15, 1,ver)) return 0;
    if(gsm_sendandcheck("AT+CMGF=1\r", 15, 2,"  SENDING CMGF  ")){
        if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
            if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 20, 3,"  SENDING CMGDA  ")){
                return 1;
            }
        }
    }	
    return 0;
}


void gsm_laygio_gps(){
    __bit GPS_time_temp = 0;
    if(sim_test_sec==61) return;
    if(gsm_sendandcheck("AT\r", 15, 1,ver)){
		if(gsm_sendandcheck("AT+IPR=0\r", 15, 1,"  SENDING IPR   ")){
		    gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ");
			if(eep_gpson){
                if(gsm_sendandcheck("AT+CLTS=1\r", 15, 1,"  SENDING CLTS  ")){
                    if(gsm_sendandcheck("AT+CFUN=0\r", 15, 1,"  SENDING CFUN0  ")){
                        gsm_serial_cmd = CFUN1;
                        if(gsm_sendandcheck("AT+CFUN=1\r", 15, 2,"  SENDING CFUN1  ")){
                            if(have_time == CFUN){
                                u8 phay=0,i=0;
                                while((date_str[i++]!=',' || ++phay<3) && i<11)WATCHDOG;
                                if(phay>2){
                                    if(date_str[i+1]==',') hour = (date_str[i++]-'0');
                                    else hour = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
                                    if(date_str[++i+1]==',') minute = (date_str[i++]-'0');
                                    else minute = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
                                    if(date_str[++i+1]==',') second = (date_str[i++]-'0');
                                    else second = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
                                    hour = (hour+7>23) ? hour-17 : hour+7;
                                    rtc_settime(hour,minute,second);
                                    GPS_time_temp = 1;
                                }
                            }
                        }
                    }
                }
            }
		}
	}
    GPS_time = GPS_time_temp;
    gsm_serial_cmd = NORMAL;
}





void gsm_serial_interrupt() __interrupt gsm_SERIAL_INT __using SERIAL_MEM{
	if(gsm_RI){
        WATCHDOG;
	 	connect = connect_time_out;
        gsm_receive_buf[gsm_receive_pointer] = SBUF;
        
        if((gsm_receive_buf[gsm_receive_pointer]=='N' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
        gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
        gsm_receive_buf[(gsm_receive_pointer+9)%13] =='O' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='N')){
                                
            nosim = 1;

        }
        

        switch(gsm_serial_cmd){
            case CSQ:
                lenh_sms[sms_index++] = SBUF;
                if(SBUF==' ' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':')sms_index = 0;
                if(SBUF==',')sms_index = gsm_serial_cmd = NORMAL;
                break;
            case COPS:
                if(SBUF=='T' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='S' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='D')
                    gui_lenh_thanh_cong = 1;
                else if(SBUF=='R' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='R')
                    connect = 0;
                break;
            case CSPN:
                lenh_sms[sms_index++] = SBUF;
                if(SBUF=='"' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ')sms_index = 0;
                if(SBUF==',' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
                break;
            case CALR:
                if(SBUF=='1')gui_lenh_thanh_cong = 1;
                // else if(SBUF=='0') connect = 0;
                break;
            case CLK:
                lenh_sms[sms_index++] = SBUF;
                if(SBUF=='K' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='L' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C')sms_index = 0;
                if(SBUF=='\r' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
                break;
            case NORMAL:
                if(SBUF=='>'){
                    send_gsm_cmd("\032");
                
                }else if((gsm_receive_buf[gsm_receive_pointer]=='G' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='N' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='I' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='R')){
                                        
                    send_gsm_cmd("ATH\r");
                    
                /*SMS buoc 1: khi co tin nhan toi se co lenh CMTI bat co tin nhan moi new_message = 1
                                khi co tin nhan moi thi gui lenh CMGL ALL de liet ke tat ca tin nhan toi*/
                }else if((gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='M' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='+')){
                                        
                    co_tin_nhan_moi = 1;
                    
                /*SMS buoc 2: sau khi kiem duoc CMGL thi chuyen qua tim kiem so dien thoai phu hop
                                neu nhu da nhan duoc tin nhan can xu ly thi khong doc tin nhan khac tiep tuc*/
                }else if((gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='L' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='G' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='M'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
                gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')||(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='I' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
                gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')){
                    co_cuoc_goi_toi = gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L';
                    if(!co_cuoc_goi_toi && sms_dang_xu_ly) break;
                    
                    
                    phone_header = 0;
                    phone_phu_so_sanh_that_bai = 0;
                    phone_chinh_so_sanh_that_bai = 0;
                    gsm_serial_cmd = PHONE;

                }else if(gsm_receive_buf[gsm_receive_pointer]=='K' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O'){
                    if(gsm_serial_cmd==CLK) sms_index = 0;
                    gui_lenh_thanh_cong = !have_not;
                    have_not = 0;
                    if(sms_index){
                        sms_index = 0;
                        send_gsm_cmd("AT+CMGDA=\"DEL ALL\"\r");
                    }


                }else if(gsm_receive_buf[gsm_receive_pointer]=='T' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='N'){

                    have_not = 1;

                }
                break;
            case CFUN1:
                if(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='Z' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='U' &&
                gsm_receive_buf[(gsm_receive_pointer+7)%13] =='S' && gsm_receive_buf[(gsm_receive_pointer+6)%13] =='P' &&
                gsm_receive_buf[(gsm_receive_pointer+5)%13] =='*'){
                    
                    date_pointer = 0;
                    gsm_serial_cmd = CFUN;
                    
                }
                break;
            // case CLK:
            case CFUN:
                if(SBUF!='\r' && date_pointer<30)
                    date_str[date_pointer++] = SBUF;
                else{
                    date_str[date_pointer-1] = 0;
                    have_time = gsm_serial_cmd;
                    gsm_serial_cmd = 0;
                    gui_lenh_thanh_cong = 1;
                }
                break;
            case PHONE:
                /*SMS buoc 4: khi da tim thay +84 thi se so sanh so dien thoai xem co trung khop khong
                                neu khong trung khop thi quay lai tim CMGL hoac OK*/
                if(phone_header){
                    if(!sms_index){
                        if(SBUF=='\r'){
                            if(co_cuoc_goi_toi){
                                delay_cuoc_goi_ke_tiep = 2;
                                so_lan_goi_dien++;
                            } 
                            gsm_serial_cmd = CMD;
                        }
                        
                    }
                    else if(sms_index==PHONE_LENGTH && gsm_SBUF == '"') {/*SMS buoc 5: neu tat ca chu so dt deu trung chuyen qua tim lenh */
                        sms_index = 0;
                        
                    }//neu co mot chu so khong trung thi reset sms_index phone_header va chuyen ve tim CMGL hoac OK
                    else{
                        // if(phone_chinh[sms_index++] != gsm_SBUF)gsm_serial_cmd = NORMAL;
                        if(!phone_chinh_so_sanh_that_bai && phone_chinh[sms_index] != gsm_SBUF)phone_chinh_so_sanh_that_bai = 1;
                        if(!bat_phone_phu || (!phone_phu_so_sanh_that_bai && eep_phonephu[sms_index] != gsm_SBUF))phone_phu_so_sanh_that_bai = 1;
                        sms_index++;
                        if(phone_chinh_so_sanh_that_bai && phone_phu_so_sanh_that_bai) gsm_serial_cmd = NORMAL;
                    }
                    
                }/*SMS buoc 3: sau khi thay CMGL thi se vao day luc nay se tim kiem +84 la dau so chuan
                                neu khong tim duoc truoc khi co ky tu xuong dong thi quay ve tim CMGL hoac OK*/
                else {
                    if((co_cuoc_goi_toi && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"') || (gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8' &&
                        gsm_receive_buf[(gsm_receive_pointer+11)%13] =='+' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='"')){
                            phone_header = 1;
                            sms_index = 1;
                    }
                    if(SBUF=='\r') gsm_serial_cmd = NORMAL;
                }
                break;
            case CMD:/*SMS buoc 7: tim duoc pin chinh xac tien hanh lay lenh trong tin nhan
                                    khi gap ; hoac xuong dong hoac het 160 ky tu tin nhan
                                    thi chuyen qua xu ly lenh thong bao gui lenh thanh cong*/
                if(pin_chinh_xac){
                     
                    if(SBUF!=';' && SBUF!='\r' && sms_index<160){
                       
                        lenh_sms[sms_index++] = SBUF;    
                    }
                    else{
                        sms_index = 0;
                        pin_chinh_xac = 0;
                        gsm_serial_cmd = NORMAL;
                        sms_dang_xu_ly = 1;
                    }
                }
                else {/*SMS buoc 6: tim xem co ma pin trung khop khong neu khong co truoc khi gap ky tu xuong dong thi quay ve NORMAL*/
                    pin_chinh_xac = gsm_receive_buf[gsm_receive_pointer]==',' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='U' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='D' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='*';
                    if(SBUF=='\r'){sms_index =1; gsm_serial_cmd = NORMAL;}
                }
                break;
            case CMGS:
                if(SBUF=='>'){
                    gsm_serial_cmd = NORMAL;
                    gui_lenh_thanh_cong = 1;
                }else if(gsm_receive_buf[gsm_receive_pointer]=='R' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E') connect  = 0;
                break;
            case CUSD:
                if(have_cusd){
                        if((((nha_mang == VINAPHONE || nha_mang == MOBIFONE) && SBUF !=' ') || ((nha_mang==VIETTEL || nha_mang==VIETNAM) && SBUF!='d'))  && sms_index<160){
                            if(SBUF!='.')lenh_sms[sms_index++] = SBUF;
                        } 
                        else{
                            have_quote = have_cusd = 0;
                            lenh_sms[sms_index] = 0;
                            sms_index = 0;
                            // gsm_serial_cmd = NORMAL;
                            gui_lenh_thanh_cong = 1;
                        }
                    
                }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]=='=' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='h' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='n' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='i' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] =='h' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='c') ||
                        (nha_mang == VIETTEL && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='G' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] ==' ') ||
                        (nha_mang == MOBIFONE && gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='K' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='.') ||
                        (nha_mang == VIETNAM && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T'))
                                    {have_cusd = 1;}
                break;
            case SDT:
                if(have_cusd){
                        if((((nha_mang == VINAPHONE || nha_mang == VIETNAM) && SBUF !='\n') || (nha_mang == MOBIFONE && SBUF !='"') || (nha_mang == VIETTEL && SBUF !='.'))  && sms_index<10) 
                            if(sms_index<9) phone[1+sms_index++] = SBUF;
                            else sms_index++;
                        else{
                            have_quote = have_cusd = 0;                            
                            if(sms_index<10){
                                gui_lenh_thanh_cong = 1;
                                phone[sms_index+1] = 0;
                            }
                            else connect =0;
                            sms_index = 0;
                        }
                    
                }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==')') ||
                         (nha_mang == VIETNAM   && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ') ||
                         ((nha_mang == MOBIFONE || nha_mang == VIETTEL)  && gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8'))
                                    have_cusd = 1;
                else if((SBUF=='5' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='1' && gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] ==',') ||
                        (SBUF=='R'  && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E'))
                                    error = 1;
                break;
            default: break;
        }
        if(++gsm_receive_pointer>12) gsm_receive_pointer = 0;
        gsm_RI = 0;
	}
}

// 23:17