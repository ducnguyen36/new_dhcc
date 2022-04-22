#include "mp3.h"

void mp3_serial_init(){
    P_SW2 = 0x01; // USART 2 on P4.6 and P4.7 pins
	S2CON = 0x50;		//8bit and variable baudrate
    AUXR |= 0x04;		//Timer2's clock is Fosc (1T)
	T2L = (65536 - (FOSC/4/mp3_BAUD)); //Setthe preload value
	T2H = (65536 - (FOSC/4/mp3_BAUD))>>8;
	AUXR |= 0x10;		//Timer2 running
    IE2 = 0x01;
}

void mp3_play(u8 date, u8 hour, u8 minute){
    
    u16 song = hour*100+minute; //13:47 => 1347 //hour*12 + minute/5 + date*1000
    if(date<10) song = hour*12 + minute/5 + date*1000; //13:47 => 1347 //hour*12 + minute/5 + date*1000
    u16 checksum = 65257-((u8)song)-(song>>8);
    u8 __xdata mp3_buf[] = {126,255,6,0x12,0,song>>8,song,checksum>>8,checksum,239};
    u8 __data i;
    for(i=0;i<10;i++){
        mp3_SBUF = mp3_buf[i];
        while(!mp3_TI)WATCHDOG;
        S2CON &= 0xFD;
    }
}

