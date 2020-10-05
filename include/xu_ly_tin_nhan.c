void xu_ly_tin_nhan(){
    //lenh DH
    lenh_khong_hop_le = 0;
    u8 giodelta,phutdelta, kim_index;
    u8 __xdata i = 0;
    while(lenh_sms[i++])WATCHDOG;
    while(i<160)lenh_sms[i++] = 0;
    i=0;
    if((lenh_sms[0]=='?'||lenh_sms[1]=='?') && !phone_chinh_so_sanh_that_bai)gui_huong_dan();
    else{ 
        switch(lenh_sms[1]){
            case 'h':
            case 'H':
                if(lenh_sms[3]>48 && lenh_sms[3]<53 && !lenh_sms[6]){
                    if(lenh_sms[4] =='D' || lenh_sms[4] =='d') phutdelta = 4;
                    else if(lenh_sms[4] != 'S' && lenh_sms[4] !='s' ) lenh_khong_hop_le = 1;
                    if(!lenh_khong_hop_le && (lenh_sms[5] == 'A' || lenh_sms[5] == 'a' || lenh_sms[3]>50)) phutdelta += 8;
                    else if(!lenh_khong_hop_le && lenh_sms[5] != 'S' || lenh_sms[5] != 's') lenh_khong_hop_le = 1;
                    phutdelta += lenh_sms[3]-48;
                    IAP_docxoasector1();
                    eeprom_buf[MOTOR_EEPROM] = phutdelta;
                    IAP_ghisector1();
                    baocaosms(CHINH,"\rthay doi may va reset bo dieu khien");
                    EA=0;
                    IAP_xoasector(SECTOR2);
                    gsm_pw = 0;
                    IAP_ghibyte(NORRESET_EEPROM,0);
                    RingRelay = 1;
                    delay_ms(4000);
                    IAP_CONTR = 0x60;
                }
                else if(lenh_sms[3]=='+'){
                    if (lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
                        lenh_sms[6]>47 && lenh_sms[6]<54 && lenh_sms[7]>47 && lenh_sms[7]<58 &&
                        lenh_sms[9]>47 && lenh_sms[9]<51 && lenh_sms[10]>47 && lenh_sms[10]<58 &&
                        lenh_sms[11]>47 && lenh_sms[11]<54 && lenh_sms[12]>47 && lenh_sms[12]<58){
                            giodelta = 2+lenh_sms[4]-lenh_sms[9];
                            giodelta = giodelta*10 + 4 + hour + lenh_sms[5]-lenh_sms[10];
                            phutdelta = 6+lenh_sms[11]-lenh_sms[6];
                            phutdelta = phutdelta*10 + lenh_sms[12]-lenh_sms[7];
                            gio[0]  = (giodelta - (minute+60<phutdelta))%12;
                            phutdelta = minute+120-phutdelta;
                            phut[0] = phutdelta%60;
                            luu_gio_kim();
                    }else if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
                        phutdelta = (lenh_sms[4] - '0')*10 +lenh_sms[5]-'0';
                        giodelta = 12 + gio[0] - (phut[0]<phutdelta);
                        gio[0] = giodelta%12;
                        phut[0] = (60+phut[0]-phutdelta)%60;
                        luu_gio_kim();
                        
                        
                    }else lenh_khong_hop_le=1;
                }else if(lenh_sms[3]=='-'){
                    if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
                        phut[0] = phut[0] + (lenh_sms[4]-'0')*10 + lenh_sms[5]-'0';
                        if(phut[0]>59){
                            gio[0]++;
                            phut[0]-=60;
                        }
                        luu_gio_kim();
                        
                        
                    }else lenh_khong_hop_le=1;
                }else if(lenh_sms[4]=='N' || lenh_sms[4]=='n'){
                    //eeprom dh on
                    if(phone_chinh_so_sanh_that_bai)break;
                    IAP_docxoasector1();
                    eeprom_buf[MOTOR_EEPROM] &= 0xef;
                    IAP_ghisector1();
                    motor_dung = 0;
                    mp3_status = mp3_IDLE;
                    mp3_hour= 24;
                    mp3_minute = 60;
                }else if(lenh_sms[4]=='F' || lenh_sms[4]=='f'){
                    //eeprom dh off
                    if(phone_chinh_so_sanh_that_bai)break;
                    IAP_docxoasector1();
                    eeprom_buf[MOTOR_EEPROM] |= 0x10;
                    IAP_ghisector1();
                    motor_dung = 1;
                    AmplyRelay = 0;
                }else {
                    //khong lay gio kim
                    i = 3;
                    kim_index = 1;
                    do{
                        if(lenh_sms[i]==','){
                            if(!kim_index)i = 101;
                            else{
                                kim_index = (kim_index+1)%(so_motor+1);
                                i++;
                            }
                        }
                        else if(lenh_sms[i]<48) i = !kim_index?101:202;
                        else if(!kim_index && (lenh_sms[i]=='g' || lenh_sms[i]=='G' || lenh_sms[i]=='a' || lenh_sms[i]=='A')){
                            
                            AmplyRelay=0;
                            mp3_status = mp3_IDLE;
                            // gsm_laygio_gps();
                            gsm_thietlapngaygiothuc();
                            hour12 = hour%12;
                            mp3_hour = 24;
                            mp3_minute = 60;
                            i = 101;
                        }
                        else if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
                            lenh_sms[i+2]>47 && lenh_sms[i+2]<54 && lenh_sms[i+3]>47 && lenh_sms[i+3]<58){
                                if(kim_index){
                                    gio[kim_index-1] = ((lenh_sms[i]-'0')*10 + lenh_sms[i+1] - '0')%12;
                                    phut[kim_index-1] = (lenh_sms[i+2]-'0')*10 + lenh_sms[i+3] - '0';
                                    luu_gio_kim();
                                    kim_index = (kim_index+1)%(so_motor+1);
                                    i+=5;
                                }else{
                                    AmplyRelay=0;
                                    mp3_status = mp3_IDLE;
                                    hour = ((lenh_sms[i]-'0')*10 + lenh_sms[i+1] - '0')%24;
                                    minute = (lenh_sms[i+2]-'0')*10 + lenh_sms[i+3] - '0';
                                    hour12=hour%12;
                                    rtc_settime(hour,minute,second);
                                    GPS_time = 0;
                                    mp3_hour = 24;
                                    mp3_minute = 60;
                                    i= 101;
                                }
                        }else i = 202;
                    }while(i<100);
                    lenh_khong_hop_le = i==202;
                
                }
                
            
                //gui thong bao: T=xx:xx K=xx:xx GPS=x DH=x
                motor_index = motor_run_check();
                motor_index2 = motor_run_check2();
                if(lenh_khong_hop_le){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rlenh khong hop le");
                    else{
                        baocaosms(CHINH,"\rlenh dong ho khong hop le\rPhone phu gui lenh");
                        baocaosms(PHU,"\rlenh khong hop le");
                    }
                        //gui tin nhan lenh DH khong hop le
                }else{
                    // step_run = motor_run_check_step();
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rchinh dong ho thanh cong");
                    else{
                        baocaosms(CHINH,"\rchinh dong ho thanh cong\rPhone phu gui lenh");
                        baocaosms(PHU,"\rchinh dong ho thanh cong");
                    }
                }
                break;
            case 'c':
            case 'C':
                if(lenh_sms[4]=='e' || lenh_sms[4]=='E'){
                    if(phone_chinh_so_sanh_that_bai)break;
                    baocaoden(CHINH,"\rbao cao den thanh cong");
                   
                    break;
                }
                else if(lenh_sms[4]=='n' || lenh_sms[4]=='N'){
                    if(phone_chinh_so_sanh_that_bai)break;
                    IAP_docxoasector1();
                    eeprom_buf[BAOCAO_EEPROM] = 1;
                    IAP_ghisector1();
                }else if(lenh_sms[4]=='f' || lenh_sms[4]=='F'){
                    if(phone_chinh_so_sanh_that_bai)break;
                    IAP_docxoasector1();
                    eeprom_buf[BAOCAO_EEPROM] = 0;
                    IAP_ghisector1();
                }else if(lenh_sms[2] && lenh_sms[3]){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rlenh khong hop le");
                    else{
                        baocaosms(CHINH,"\rlenh khong hop le\rPhone phu gui lenh den");
                        baocaosms(PHU,"\rlenh khong hop le");
                    }
                    break;
                }
                if(phone_phu_so_sanh_that_bai)
                    baocaosms(CHINH,"\rbao cao thanh cong");
                else{
                    baocaosms(CHINH,"\rbao cao thanh cong\rPhone phu gui lenh");
                    baocaosms(PHU,"\rbao cao thanh cong");
                }
                break;
            case 's':
            case 'S':
                //reset system
                if(phone_chinh_so_sanh_that_bai)break;
                if(lenh_sms[4]=='y' || lenh_sms[4]=='Y' || lenh_sms[4]=='D' || lenh_sms[4]=='d'){
                    baocaosms(CHINH,"\rreset bo dieu khien");
                    EA=0;
                    gsm_pw = 0;
                    IAP_ghibyte(NORRESET_EEPROM,0);
                    RingRelay = 1;
                    delay_ms(4000);
                    IAP_CONTR = 0x60;
                }
                //dat ngay gio reset
                else if(lenh_sms[4]=='g' || lenh_sms[4]=='G'){
                    if(lenh_sms[8]>47 && lenh_sms[8]<58){
                        IAP_docxoasector1();
                        ngay_reset_con_lai = eeprom_buf[NGAYRESET_EEPROM] = lenh_sms[8]-'0';
                        if (lenh_sms[10]>47 && lenh_sms[10]<51 && lenh_sms[11]>47 && lenh_sms[11]<58){
                            giodelta = (lenh_sms[10] - '0')*10 + lenh_sms[11] - '0';
                            if(giodelta<24)
                                eeprom_buf[GIORESET_EEPROM] = giodelta;
                        }
                        IAP_ghisector1();
                        baocaosms(CHINH,"\rdat reset thanh cong");
                        
                    }else {
                        baocaosms(CHINH,"\rdat reset khong hop le");   
                        break;
                    }
                }
                //reset sim
                else if(lenh_sms[4] == 'i' || lenh_sms[4] == 'I'){
                    baocaosms(CHINH,"\rreset gsm sau10s");
                    gsm_pw = 0;
                }else baocaosms(CHINH,"\rlenh reset khong hop le");
                
                //reset dalas
                //reset eeprom
                
                break;
            // case 'a':
            // case 'A':
            //     if(phone_chinh_so_sanh_that_bai)break;
            //     if(lenh_sms[4]>48 && lenh_sms[4]<58 && lenh_sms[6]>48 && lenh_sms[6]<58){
            //         IAP_docxoasector1();
            //         eeprom_buf[GIOSACXA_EEPROM] = ((lenh_sms[4]-'0')<<4) | (lenh_sms[6]-'0');
            //         IAP_ghisector1();
            //         baocaosms(CHINH,"\rthay doi gio sac xa acqui thanh cong");
                    
            //     } else baocaosms(CHINH,"\rLenh sac acqui khong hop le");
                    
                
            //     break;
            case 'e':
            case 'E':
                if(phone_chinh_so_sanh_that_bai)break;
                if(lenh_sms[4]=='X' || lenh_sms[4]=='x'){
                    IAP_docxoasector1();
                    eeprom_buf[TATMODEN_EEPROM] = 0;
                    IAP_ghisector1();
                    baocaoden(CHINH,"\rxoa gio den thanh cong");
                   
                }else {
                    IAP_docxoasector1();
                    IAP_ghisector1();
                    eeprom_buf[TATMODEN_EEPROM] = 0;
                    for(i=4;i<75;i+=10){
                        if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
                         lenh_sms[i+2]>47 && lenh_sms[i+2]<54 && lenh_sms[i+3]>47 && lenh_sms[i+3]<58 &&
                         lenh_sms[i+5]>47 && lenh_sms[i+5]<51 && lenh_sms[i+6]>47 && lenh_sms[i+6]<58 &&
                         lenh_sms[i+7]>47 && lenh_sms[i+7]<54 && lenh_sms[i+8]>47 && lenh_sms[i+8]<58 &&
                         lenh_sms[i]*10+lenh_sms[i+1]<552 && lenh_sms[i+5]*10+lenh_sms[i+6]<552){
                            eeprom_buf[TATMODEN_EEPROM+(i-4)/5+1] = ((lenh_sms[i] -'0')*10 + lenh_sms[i+1] -'0')*6 + lenh_sms[i+2]-'0';
                            eeprom_buf[TATMODEN_EEPROM+(i-4)/5+2] = ((lenh_sms[i+5]-'0')*10 + lenh_sms[i+6]-'0')*6 + lenh_sms[i+7]-'0';
                            eeprom_buf[TATMODEN_EEPROM]+=2;
                        }
                        else i = 75;
                    }
                    if(eeprom_buf[TATMODEN_EEPROM]){
                        IAP_xoasector(SECTOR1);
                        IAP_ghisector1();
                        baocaoden(CHINH,"\rlenh den thanh cong");
                        
                    }else baocaosms(CHINH,"\rthong so den khong hop le");
                         
                }
                break;
            case 'p':
            case 'P':
                if(!phone_chinh_so_sanh_that_bai){
                    if(!eep_mp3){
                        baocaosms(CHINH,"\rKhong Co Module Mp3");
                    }
                    else if(lenh_sms[5]=='T' || lenh_sms[5]=='t'){
                        AmplyRelay = 0;
                        baocaosms(CHINH,"\rDung Mp3");    
                    }
                    else if(lenh_sms[5]=='N' || lenh_sms[5]=='n'){
                        if(eep_mp3==1){
                            IAP_docxoasector1();
                            eeprom_buf[MP3_EEPROM] = 2;
                            IAP_ghisector1();
                            mp3_status = mp3_IDLE;
                            mp3_hour= 24;
                            mp3_minute = 60;
                        }
                        baocaosms(CHINH,"\rBat mp3");
                    }else if(lenh_sms[5]=='F' || lenh_sms[5]=='f'){
                        if(eep_mp3==2){
                            AmplyRelay = 0;
                            IAP_docxoasector1();
                            eeprom_buf[MP3_EEPROM] = 1;
                            IAP_ghisector1();
                        }
                        baocaosms(CHINH,"\rTat mp3");
                    }else if(lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
                        lenh_sms[6]>47 && lenh_sms[6]<54 && lenh_sms[7]>47 && lenh_sms[7]<58){
                            if(!mp3_playing){
                                AmplyRelay = 1;
                                mp3_play((lenh_sms[4]-'0')*10+lenh_sms[5]-'0',(lenh_sms[6]-'0')*10+lenh_sms[7]-'0');
                                delay_ms(1500);
                                if(mp3_playing) baocaosms(CHINH,"\rTest mp3 thanh cong");
                                else baocaosms(CHINH,"\rkhong dung gio phat hoac mp3 loi");
                            }else baocaosms(CHINH,"\rMp3 dang choi nhac nen chua the test");
                    }else baocaosms(CHINH,"\rLenh MP3 khong hop le");
                }
                break;
            case 'i':
            case 'I':
                if(!phone_chinh_so_sanh_that_bai){
                    if(lenh_sms[4]=='B' || lenh_sms[4]=='b' || lenh_sms[5]=='N' || lenh_sms[5]=='n' ){
                        IAP_docxoasector1();
                        eeprom_buf[GPSON_EEPROM] = 1;
                        IAP_ghisector1();
                        // gsm_laygio_gps();
                        gsm_thietlapngaygiothuc();
                        baocaosms(CHINH,"\rBat GPS");
                    }
                    else if(lenh_sms[4]=='T' || lenh_sms[4]=='t' || lenh_sms[5]=='B' || lenh_sms[5]=='b' ){
                        IAP_docxoasector1();
                        eeprom_buf[GPSON_EEPROM] = 0;
                        IAP_ghisector1();
                        GPS_time = 0;
                        baocaosms(CHINH,"\rTat GPS"); 
                    }
                }
                break;
            case 't':
            case 'T':
                if(!phone_chinh_so_sanh_that_bai){
                    if(lenh_sms[3]=='G' || lenh_sms[3]=='g' || lenh_sms[3]=='C' || lenh_sms[3]=='c' ){
                        goi_dien_thoai = 1;
                        baocaosms(CHINH,"\rDang goi dien thoai ve ...."); 
                    }
                    else if(lenh_sms[3]=='+' && lenh_sms[4]=='8' && lenh_sms[5]=='4'){
                        if(lenh_sms[6]>='0' && lenh_sms[6]<='9' && lenh_sms[7]>='0' && lenh_sms[7]<='9' &&
                           lenh_sms[8]>='0' && lenh_sms[8]<='9' && lenh_sms[9]>='0' && lenh_sms[9]<='9' &&
                           lenh_sms[10]>='0' && lenh_sms[10]<='9' && lenh_sms[11]>='0' && lenh_sms[11]<='9' &&
                           lenh_sms[12]>='0' && lenh_sms[12]<='9' && lenh_sms[13]>='0' && lenh_sms[13]<='9' &&
                           lenh_sms[14]>='0' && lenh_sms[14]<='9'){
                            IAP_docxoasector1();
                            eeprom_buf[PHONEPHU_EEPROM] = 0;
                            for(i=1;i<10;i++)
                                eeprom_buf[PHONEPHU_EEPROM+i] = lenh_sms[6+i];
                            if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 1;
                            IAP_ghisector1();
                            baocaosms(CHINH,"\rghi phone phu moi thanh cong");
                        }else baocaosms(CHINH,"\rthay doi phone phu khong thanh cong");
                    }
                    else if(lenh_sms[3]=='0'){
                        if(lenh_sms[4]>='0' && lenh_sms[4]<='9' && lenh_sms[5]>='0' && lenh_sms[5]<='9' &&
                           lenh_sms[6]>='0' && lenh_sms[6]<='9' && lenh_sms[7]>='0' && lenh_sms[7]<='9' &&
                           lenh_sms[8]>='0' && lenh_sms[8]<='9' && lenh_sms[9]>='0' && lenh_sms[9]<='9' &&
                           lenh_sms[10]>='0' && lenh_sms[10]<='9' && lenh_sms[11]>='0' && lenh_sms[11]<='9' &&
                           lenh_sms[12]>='0' && lenh_sms[12]<='9'){
                            IAP_docxoasector1();
                            for(i=0;i<10;i++)
                                eeprom_buf[PHONEPHU_EEPROM+i] = lenh_sms[3+i];
                            if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 1;
                            IAP_ghisector1();
                            baocaosms(CHINH,"\rghi phone phu moi thanh cong");
                        }else baocaosms(CHINH,"\rthay doi phone phu khong thanh cong");
                    }else if(lenh_sms[3]=='x' || lenh_sms[3]=='X'){
                        IAP_docxoasector1();
                        eeprom_buf[PHONEPHU_EEPROM+11] = 2;
                        IAP_ghisector1();
                        baocaosms(CHINH,"\rXoa phone phu");
                    }else if(eep_phonephu[11]==2){
                        if(lenh_sms[4]=='n' || lenh_sms[4]=='N'|| lenh_sms[4]=='f'|| lenh_sms[4]=='F')
                            baocaosms(CHINH,"\rlenh khong thanh cong do chua khoi tao phone phu");
                    }else if(lenh_sms[4]=='N' || lenh_sms[4]=='n'){
                        IAP_docxoasector1();
                        eeprom_buf[PHONEPHU_EEPROM+11] = 1;
                        IAP_ghisector1();
                        baocaosms(CHINH,"\rBat phone phu");
                    }else if(lenh_sms[4]=='F' || lenh_sms[4]=='f'){
                    
                        IAP_docxoasector1();
                        eeprom_buf[PHONEPHU_EEPROM+11] = 0;
                        IAP_ghisector1();
                        baocaosms(CHINH,"\rTat phone phu");
                    }else baocaosms(CHINH,"\rLenh phone phu khong hop le");
                }
                bat_phone_phu = eep_phonephu[11]&1;
                break;
            default:
                if(phone_phu_so_sanh_that_bai)
                    baocaosms(CHINH,"\rLenh khong hop le");
                else{
                    baocaosms(CHINH,"\rLenh khong hop le\rPhone phu gui lenh");
                    baocaosms(PHU,"\rLenh khong hop le");
                }
        }
        //reset lenh_sms
        phutdelta = 0;
        WATCHDOG;
        while(lenh_sms[phutdelta])lenh_sms[phutdelta++] = 0;
    }
}