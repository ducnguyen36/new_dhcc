
/*kiem tra xem gio  phat den hay khong*/
void kiem_tra_den(){
    u8 __data i,now = hour*6+minute/10;
    for(i=1;i<eep_tatmoden[0];i++)
        if((1+(eep_tatmoden[i]<eep_tatmoden[i+1]) + (now<eep_tatmoden[i]) + (now<eep_tatmoden[i+1]))%2){
            DenRelay = (i+1)%2; break;
        }
    
    if( i==eep_tatmoden[0] && (1+(eep_tatmoden[i]<eep_tatmoden[1]) + (now<eep_tatmoden[i]) + (now<eep_tatmoden[1]))%2)
        DenRelay = (i+1)%2;   
}

void kiem_tra_nhac(){
    switch(mp3_status){
        case mp3_IDLE:
            if( mp3_hour != hour || mp3_minute!=minute ){
                mp3_hour = hour;
                mp3_minute = minute;
                // mp3_date = date;
                mp3_play(date, mp3_hour,mp3_minute);
                mp3_doi_start = 90;
                mp3_status = mp3_START;
            }
            break;
        case mp3_START:
            if(mp3_playing) mp3_status = AmplyRelay = mp3_END;
            else if(mp3_doi_start--) break;
        case mp3_END:
            if(!mp3_playing) AmplyRelay = mp3_status = mp3_IDLE;
    }
    
}