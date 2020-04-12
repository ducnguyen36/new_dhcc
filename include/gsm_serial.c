#include "help.h"

__bit gsm_sendandcheck(u8 *cmd, u8 retry, u8 delay, u8 *display){
    connect_time_out = delay;
    gui_lenh_thanh_cong = 0;
    while(!gui_lenh_thanh_cong){ 
            
            LCD_guilenh(0x80);
            LCD_guichuoi(display);
            if(GPS_time) LCD_guigio(0xc0,"  GPS  ",hour,minute,second,flip_pulse);
            else if(!eep_gpson) LCD_guigio(0xc0," ASIA  ",hour,minute,second,flip_pulse);
            else LCD_guigio(0xc0,"   DS  ",hour,minute,second,flip_pulse);
            if(!connect){
                if(!retry--) break;
                connect_time_out = connect = delay;
                send_gsm_cmd(cmd);
            }
        
    }
    LCD_xoa(TREN);
    return gui_lenh_thanh_cong;
}



__bit send_sms(__bit chinh){
    if(lenh_sms[0] && !lenh_sms[3]){gsm_sendandcheck("\032",3,1,"TK<1000 K BAOCAO"); return 0;}
    send_gsm_cmd("AT+CMGS=\"");
    send_gsm_cmd(chinh?phone_chinh:eep_phonephu);
    send_gsm_cmd("\"\r");
    delay_ms(5);
    return 1;
}

__bit kiemtrataikhoan(){
    lenh_sms[0] = 0;
    have_cusd = 0;
    gsm_serial_cmd = CUSD;
    gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",15,1,"  KIEM TRA TK   ");
    gsm_serial_cmd = NORMAL;
    return lenh_sms[0];
}





void baocaosms(__bit chinh, u8  *noidung){
    u8 __xdata kim[]   = {' ','K','=',gio/10+'0',gio%10+'0',':',phut/10+'0',phut%10+'0',0};
    u8 __xdata thuc[]  = {' ','T','=',hour/10+'0',hour%10+'0',':',minute/10+'0',minute%10+'0',' ','G','P','S','=',GPS_time+eep_gpson+'0',0};
    u8 __xdata dien_ap = dien_ap_nguon*28/256;
    u8 __xdata param[] = {' ','D','H','=',eep_motor+'0',' ','B','C','=',eep_baocao+'0',' ','D','C','=',thoi_gian_doi_doc_cam?'1':'0'
                ,' ','S','T','=',thoi_gian_doi_doc_cam_step?'1':'0',' ','X','G','=',xung_giay_check?'1':'0',' ','R','S','=',ngay_reset_con_lai+'0'
                ,'/',eep_ngayreset+'0',' ','T','R','=',eep_gioreset/10+'0',eep_gioreset%10+'0',' ','D','E','N','=',DenRelay+'0'
                ,' ','V','O','L','=',dien_ap/10+'0',dien_ap%10+'0',' ','M','P','3','=',eep_mp3+'0',chinh?' ':0,'D','T','=',eep_phonephu[11]+'0',0};
                
    if(*(noidung+1)!='*') 
        kiemtrataikhoan();
    else lenh_sms[0]=0;
    if(!send_sms(chinh)) return;

    send_gsm_cmd(ver);
    send_gsm_cmd(kim);
    send_gsm_cmd(thuc);
    send_gsm_cmd(param);
    if(eep_phonephu[11]<2 && chinh){
        send_gsm_cmd(",");
        send_gsm_cmd(eep_phonephu);
    }
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
void baocaoden(__bit chinh, u8 *noidung){
    u8 __xdata thuc[]  = {'T','=',hour/10+'0',hour%10+'0',':',minute/10+'0',minute%10+'0',' ','G','P','S','=',GPS_time+eep_gpson+'0'
                            ,' ','D','E','N','=',DenRelay+'0',0};
    u8 __xdata den[9] = {'\r','M','O','D','E','N','=',eep_tatmoden[0]+'0',0};
    u8 __data i;
    if(!send_sms(chinh)) return;
    send_gsm_cmd(thuc);
    send_gsm_cmd(den);
    if(eep_tatmoden[0]){
        send_gsm_cmd("\rGio Mo Den:");
        i = eep_tatmoden[0];
        den[1] = eep_tatmoden[i]/60 +'0';
        den[2] = eep_tatmoden[i]/6%10 +'0';
        den[3] = ':';
        den[4] = eep_tatmoden[i]%6 +'0';
        den[5] = '0';
        den[6] = ' ';
        den[7] = '-';
        send_gsm_cmd(den);
        den[0] = ' ';
        den[1] = eep_tatmoden[1]/60 +'0';
        den[2] = eep_tatmoden[1]/6%10 +'0';
        den[4] = eep_tatmoden[1]%6 +'0';
        den[6] = 0;
        send_gsm_cmd(den);
        for(i=2;i<eep_tatmoden[0];i++){
            den[1] = eep_tatmoden[i]/60 + '0';
            den[2] = eep_tatmoden[i]/6%10 + '0';
            den[4] = eep_tatmoden[i]%6 + '0';
            if(i%2){
                den[0] = ' ';
                den[6] = 0;
            }else{
                den[0] = '\r';
                den[6] = ' ';
            }
            send_gsm_cmd(den); 
        }
    }else{
        send_gsm_cmd("\rKhong co gio mo den");
    }
    
    send_gsm_cmd(noidung);
    gsm_sendandcheck("\032",50,1,"GUI BAO CAO DEN ");
}

void gui_huong_dan(){
    lenh_sms[0]=0;
    if(!send_sms(CHINH)) return;
    send_gsm_cmd(huongdan);
    gsm_sendandcheck("\032",50,1," GUI HUONG DAN  ");
}

__bit gsm_laygioGPSCCLK(){
    gsm_serial_cmd = NORMAL;
    if(gsm_sendandcheck("AT+CCLK?\r", 15, 2,"  SENDING CCLK  ")){
        if(have_time == CLK){
            hour=(date_str[9]-'0')*10+date_str[10]-'0';
            hour12=hour%12;
            minute = (date_str[12]-'0')*10+date_str[13]-'0';
            second = (date_str[15]-'0')*10+date_str[16]-'0';
            rtc_settime(hour,minute,second);
            return 1;
        }
    }
    return 0;
}
void gsm_laygio_gps(){
    __bit GPS_time_temp = 0;
    if(gsm_sendandcheck("AT\r", 15, 1,ver)){
		if(gsm_sendandcheck("AT+IPR=0\r", 15, 1,"  SENDING IPR   ")){
			if(eep_gpson){
                if(gsm_sendandcheck("AT+CLTS=1\r", 15, 1,"  SENDING CLTS  ")){
                    if(gsm_sendandcheck("AT+CFUN=0\r", 15, 1,"  SENDING CFUN0  ")){
                        gsm_serial_cmd = CFUN1;
                        if(gsm_sendandcheck("AT+CFUN=1\r", 15, 2,"  SENDING CFUN1  ")){
                            if(have_time == CFUN){
                                u8 phay=0,i=0;
                                while((date_str[i++]!=',' || ++phay<3) && i<11);
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


__bit gsm_thietlapnhantin(){
    if(!gsm_pw) return 0;
    if(gsm_sendandcheck("AT+CMGF=1\r", 15, 2,"  SENDING CMGF  ")){
        if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
            if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  SENDING CMGDA  ")){
                return 1;
            }
        }
    }	
    return 0;
}


void gsm_serial_interrupt() __interrupt gsm_SERIAL_INT __using SERIAL_MEM{
	if(gsm_RI){
	 	connect = connect_time_out;
        gsm_receive_buf[gsm_receive_pointer] = SBUF;
        
        

        switch(gsm_serial_cmd){
            case NORMAL:
                if(gsm_receive_buf[gsm_receive_pointer]=='"' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] ==':' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
                gsm_receive_buf[(gsm_receive_pointer+7)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+6)%13] =='+'){
                    
                    gsm_serial_cmd = CLK;
                /*SMS buoc 1: khi co tin nhan toi se co lenh CMTI bat co tin nhan moi new_message = 1
                                khi co tin nhan moi thi gui lenh CMGL ALL de liet ke tat ca tin nhan toi*/
                }else if((gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='M' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='+')){
                                        
                    send_gsm_cmd("AT+CMGL=\"ALL\"\r");
                    
                /*SMS buoc 2: sau khi kiem duoc CMGL thi chuyen qua tim kiem so dien thoai phu hop
                                neu nhu da nhan duoc tin nhan can xu ly thi khong doc tin nhan khac tiep tuc*/
                }else if(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
                gsm_receive_buf[(gsm_receive_pointer+11)%13] =='L' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='G' &&
                gsm_receive_buf[(gsm_receive_pointer+9)%13] =='M'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
                gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+'){
                    if(sms_dang_xu_ly) break;
                    
                    message_receive++;
                    
                    phone_header = 0;
                    phone_phu_so_sanh_that_bai = 0;
                    phone_chinh_so_sanh_that_bai = 0;
                    gsm_serial_cmd = PHONE;

                }else if(gsm_receive_buf[gsm_receive_pointer]=='K' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O'){
                    
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
            case CLK:
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
                    if(gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8' &&
                        gsm_receive_buf[(gsm_receive_pointer+11)%13] =='+' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='"'){
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
                    if(SBUF=='\r') gsm_serial_cmd = NORMAL;
                }
                break;
            case CUSD:
                if(have_cusd){
                        if(SBUF !=' '  && sms_index<160) lenh_sms[sms_index++] = SBUF;
                        else{
                            have_quote = have_cusd = 0;
                            lenh_sms[sms_index] = 0;
                            sms_index = 0;
                            gsm_serial_cmd = NORMAL;
                            gui_lenh_thanh_cong = 1;
                        }
                    
                }else if(gsm_receive_buf[gsm_receive_pointer]=='=' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='h' &&
                                    gsm_receive_buf[(gsm_receive_pointer+11)%13] =='n' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='i' &&
                                    gsm_receive_buf[(gsm_receive_pointer+9)%13] =='h' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='c')
                                    have_cusd = 1;
                break;
            default: break;
        }
        if(++gsm_receive_pointer>12) gsm_receive_pointer = 0;
        gsm_RI = 0;
	}
}

// 23:17