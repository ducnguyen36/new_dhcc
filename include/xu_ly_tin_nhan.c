void xu_ly_tin_nhan(){
    //lenh DH
    lenh_khong_hop_le = 0;
    u8 giodelta,phutdelta;
    u8 __xdata i;
    if((lenh_sms[0]=='?'||lenh_sms[1]=='?') && !phone_chinh_so_sanh_that_bai)gui_huong_dan();
    else{ 
        switch(lenh_sms[1]){
            case 'h':
            case 'H':
                if(lenh_sms[3]=='+'){
                    if (lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
                        lenh_sms[6]>47 && lenh_sms[6]<54 && lenh_sms[7]>47 && lenh_sms[7]<58 &&
                        lenh_sms[9]>47 && lenh_sms[9]<51 && lenh_sms[10]>47 && lenh_sms[10]<58 &&
                        lenh_sms[11]>47 && lenh_sms[11]<54 && lenh_sms[12]>47 && lenh_sms[12]<58){
                            giodelta = 2+lenh_sms[4]-lenh_sms[9];
                            giodelta = giodelta*10 + 4 + hour + lenh_sms[5]-lenh_sms[10];
                            phutdelta = 6+lenh_sms[11]-lenh_sms[6];
                            phutdelta = phutdelta*10 + lenh_sms[12]-lenh_sms[7];
                            gio  = (giodelta - (minute+60<phutdelta))%12;
                            phutdelta = minute+120-phutdelta;
                            phut = phutdelta%60;
                    }else if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
                        phutdelta = (lenh_sms[4] - '0')*10 +lenh_sms[5]-'0';
                        giodelta = 12 + gio - (phut<phutdelta);
                        gio = giodelta%12;
                        phut = (60+phut-phutdelta)%60;
                    }else lenh_khong_hop_le=1;
                }else if(lenh_sms[3]=='-'){
                    if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
                        phut = phut + (lenh_sms[4]-'0')*10 + lenh_sms[5]-'0';
                        if(phut>59){
                            gio++;
                            phut-=60;
                        }
                    }else lenh_khong_hop_le=1;
                }else if(lenh_sms[4]=='N' || lenh_sms[4]=='n'){
                    //eeprom dh on
                        if(phone_chinh_so_sanh_that_bai)break;
                        IAP_docxoasector1();
                        eeprom_buf[MOTOR_EEPROM] = 1;
                        IAP_ghisector1();
                        mp3_status = mp3_IDLE;
                        mp3_hour= 24;
                        mp3_minute = 60;
                }else if(lenh_sms[4]=='F' || lenh_sms[4]=='f'){
                    //eeprom dh off
                        if(phone_chinh_so_sanh_that_bai)break;
                        IAP_docxoasector1();
                        eeprom_buf[MOTOR_EEPROM] = 0;
                        IAP_ghisector1();
                        AmplyRelay = 0;
                }else {
                    //khong lay gio kim
                    if(lenh_sms[3]==','){
                        if(lenh_sms[4]=='g' || lenh_sms[4]=='G' || lenh_sms[4]=='a' || lenh_sms[4]=='A'){
                            //LAY gio tu dong CCLK
                            AmplyRelay=0;
                            mp3_status = mp3_IDLE;
                            GPS_time = gsm_laygioGPSCCLK();
                            mp3_hour = 24;
                            mp3_minute = 60;
                        }else if(lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
                        lenh_sms[6]>47 && lenh_sms[6]<54 && lenh_sms[7]>47 && lenh_sms[7]<58){
                            giodelta  = (lenh_sms[4]-'0')*10 + lenh_sms[5] - '0';
                            if(giodelta<24){
                                AmplyRelay=0;
                                mp3_status = mp3_IDLE;
                                hour = giodelta;
                                minute = (lenh_sms[6]-'0')*10 + lenh_sms[7] - '0';
                                hour12=hour%12;
                                rtc_settime(hour,minute,second);
                                GPS_time = 0;
                                mp3_hour = 24;
                                mp3_minute = 60;
                            }else lenh_khong_hop_le = 1;
                        }else lenh_khong_hop_le = 1;
                    //lay gio kim
                    }else if(lenh_sms[3]>47 && lenh_sms[3]<51 && lenh_sms[4]>47 && lenh_sms[4]<58 &&
                        lenh_sms[5]>47 && lenh_sms[5]<54 && lenh_sms[6]>47 && lenh_sms[6]<58){
                            gio  = ((lenh_sms[3]-'0')*10 + lenh_sms[4] - '0')%12;
                            phut = (lenh_sms[5]-'0')*10 + lenh_sms[6] - '0';
                            if(lenh_sms[8]=='g' || lenh_sms[8]=='G' || lenh_sms[8]=='a' || lenh_sms[8]=='A'){
                            //LAY gio tu dong CCLK
                                if(eep_gpson){
                                    GPS_time = gsm_laygioGPSCCLK();
                                    if(eep_mp3){
                                        AmplyRelay=0;
                                        mp3_status = mp3_IDLE;
                                        mp3_hour = 24;
                                        mp3_minute = 60;
                                    }
                                }
                            }else if(lenh_sms[8]>47 && lenh_sms[8]<51 && lenh_sms[9]>47 && lenh_sms[9]<58 &&
                            lenh_sms[10]>47 && lenh_sms[10]<54 && lenh_sms[11]>47 && lenh_sms[11]<58){
                                giodelta  = (lenh_sms[8]-'0')*10 + lenh_sms[9] - '0';
                                if(giodelta<24){
                                    AmplyRelay=0;
                                    mp3_status = mp3_IDLE;
                                    hour = giodelta;
                                    minute = (lenh_sms[10]-'0')*10 + lenh_sms[11] - '0';
                                    hour12=hour%12;
                                    rtc_settime(hour,minute,second);
                                    mp3_hour = 24;
                                    mp3_minute = 60;
                                    GPS_time = 0;
                                }else lenh_khong_hop_le = 1;
                            }   
                        }else lenh_khong_hop_le = 1;
                }
            
                //gui thong bao: T=xx:xx K=xx:xx GPS=x DH=x
                if(lenh_khong_hop_le){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rlenh khong hop le");
                    else{
                        baocaosms(CHINH,"\rlenh khong hop le\rPhone phu gui lenh");
                        baocaosms(PHU,"\rlenh khong hop le");
                    }
                        //gui tin nhan lenh DH khong hop le
                }else{
                    step_run = motor_run_check_step();
                    motorDC = motor_run_check();
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
                    if(phone_phu_so_sanh_that_bai)
                        baocaoden(CHINH,"\rbao cao den thanh cong");
                    else{
                        baocaoden(CHINH,"\rbao cao den thanh cong\rPhone phu gui lenh");
                        baocaoden(PHU,"\rbao cao den thanh cong");
                    }
                    break;
                }
                else if(lenh_sms[4]=='n' || lenh_sms[4]=='N'){
                    IAP_docxoasector1();
                    eeprom_buf[BAOCAO_EEPROM] = 1;
                    IAP_ghisector1();
                }else if(lenh_sms[4]=='f' || lenh_sms[4]=='F'){
                    IAP_docxoasector1();
                    eeprom_buf[BAOCAO_EEPROM] = 0;
                    IAP_ghisector1();
                }else if(lenh_sms[2] && lenh_sms[3]){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rlenh khong hop le");
                    else{
                        baocaosms(CHINH,"\rlenh khong hop le\rPhone phu gui lenh");
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
                if(lenh_sms[4]=='y' || lenh_sms[4]=='Y' || lenh_sms[4]=='D' || lenh_sms[4]=='d'){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rkhoi dong lai bo dieu khien");
                    else{
                        baocaosms(CHINH,"\rkhoi dong lai bo dieu khien\rPhone phu gui lenh");
                        baocaosms(PHU,"\rkhoi dong lai bo dieu khien");
                    }
                    EA=0;
                    while(1);
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
                        if(phone_phu_so_sanh_that_bai)
                            baocaosms(CHINH,"\rdat ngay gio reset thanh cong");
                        else{
                            baocaosms(CHINH,"\rdat ngay gio reset thanh cong\rPhone phu gui lenh");
                            baocaosms(PHU,"\rdat ngay gio reset thanh cong");
                        }
                    }else {
                        if(phone_phu_so_sanh_that_bai)
                            baocaosms(CHINH,"\rdat ngay gio reset khong hop le");
                        else{
                            baocaosms(CHINH,"\rdat ngay gio reset khong hop le\rPhone phu gui lenh");
                            baocaosms(PHU,"\rdat ngay gio reset khong hop le");
                        }
                        break;
                    }
                }
                //reset sim
                else if(lenh_sms[4] == 'i' || lenh_sms[4] == 'I'){
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rgsm module khoi dong lai sau 10s");
                    else{
                        baocaosms(CHINH,"\rgsm module khoi dong lai sau 10s\rPhone phu gui lenh");
                        baocaosms(PHU,"\rgsm module khoi dong lai sau 10s");
                    }
                    gsm_pw = 0;
                }else {
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rlenh reset khong hop le");
                    else{
                        baocaosms(CHINH,"\rlenh reset khong hop le\rPhone phu gui lenh");
                        baocaosms(PHU,"\rlenh reset khong hop le");
                    }
                }
                //reset dalas
                //reset eeprom
                
                break;
            case 'a':
            case 'A':
                if(lenh_sms[4]>48 && lenh_sms[4]<58 && lenh_sms[6]>48 && lenh_sms[6]<58){
                    IAP_docxoasector1();
                    eeprom_buf[GIOSACXA_EEPROM] = ((lenh_sms[4]-'0')<<4) | (lenh_sms[6]-'0');
                    IAP_ghisector1();
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rthay doi gio sac xa acqui thanh cong");
                    else{
                        baocaosms(CHINH,"\rthay doi gio sac xa acqui thanh cong\rPhone phu gui lenh");
                        baocaosms(PHU,"\rthay doi gio sac xa acqui thanh cong");
                    }
                } else{
                    if(phone_phu_so_sanh_that_bai)
                        baocaosms(CHINH,"\rLenh sac acqui khong hop le");
                    else{
                        baocaosms(CHINH,"\rLenh sac acqui khong hop le\rPhone phu gui lenh");
                        baocaosms(PHU,"\rLenh sac acqui khong hop le");
                    }
                }
                break;
            case 'e':
            case 'E':
                if(lenh_sms[4]=='X' || lenh_sms[4]=='x'){
                    IAP_docxoasector1();
                    eeprom_buf[TATMODEN_EEPROM] = 0;
                    IAP_ghisector1();
                    if(phone_phu_so_sanh_that_bai)
                        baocaoden(CHINH,"\rxoa tat mo den thanh cong");
                    else{
                        baocaoden(CHINH,"\rxoa tat mo den thanh cong\rPhone phu gui lenh");
                        baocaoden(PHU,"\rxoa tat mo den thanh cong");
                    }
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
                        if(phone_phu_so_sanh_that_bai)
                            baocaoden(CHINH,"\rgui lenh tat mo den thanh cong");
                        else{
                            baocaoden(CHINH,"\rgui lenh tat mo den thanh cong\rPhone phu gui lenh");
                            baocaoden(PHU,"\rgui lenh tat mo den thanh cong");
                        }
                    }else
                        if(phone_phu_so_sanh_that_bai)
                            baocaosms(CHINH,"\rthong so tat mo den khong hop le");
                        else{
                            baocaosms(CHINH,"\rthong so tat mo den khong hop le\rPhone phu gui lenh");
                            baocaosms(PHU,"\rthong so tat mo den khong hop le");
                        } 
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
            case 't':
            case 'T':
                if(!phone_chinh_so_sanh_that_bai){
                    if(lenh_sms[3]=='G' || lenh_sms[3]=='g'){
                        IAP_docxoasector1();
                        eeprom_buf[GPSON_EEPROM] = 1;
                        IAP_ghisector1();
                        gsm_laygio_gps();
                        baocaosms(CHINH,"\rBat GPS");
                    }
                    else if(lenh_sms[3]=='A' || lenh_sms[3]=='a'){
                        IAP_docxoasector1();
                        eeprom_buf[GPSON_EEPROM] = 0;
                        IAP_ghisector1();
                        GPS_time = 0;
                        baocaosms(CHINH,"\rTat GPS"); 
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
                            if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 0;
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
                            if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 0;
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