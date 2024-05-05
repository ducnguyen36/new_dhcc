#include "true.h"
#include "common.h"
#include "lcd.h"
void delay_us(unsigned int t)
{
        unsigned int i;
		for(i=0;i<t;i++){WATCHDOG;};
}

void delay_ms(unsigned int t)
{
        unsigned int i;
		for (i = 0; i < t; i++)delay_us(1000);
			
}




void LCD_guidulieu(u8 dulieu){
	
	LCD_rs=1;
	LCD_D4=(dulieu>>4)&1;
	LCD_D5=(dulieu>>5)&1;
	LCD_D6=(dulieu>>6)&1;
	LCD_D7=(dulieu>>7)&1;
	LCD_en =1;
	_nop_();
	LCD_en=0;
	_nop_();
	LCD_D4=dulieu 	  &1;
	LCD_D5=(dulieu>>1)&1;
	LCD_D6=(dulieu>>2)&1;
	LCD_D7=(dulieu>>3)&1;
	LCD_en =1;
	_nop_();
	LCD_en=0;
	delay_us(100);
	LCD_rs=0;
}

void LCD_guilenh(u8 lenh){
	
	LCD_rs=0;
	LCD_D4=(lenh>>4)&1;
	LCD_D5=(lenh>>5)&1;
	LCD_D6=(lenh>>6)&1;
	LCD_D7=(lenh>>7)&1;
	LCD_en =1;
	_nop_();
	LCD_en=0;
	_nop_();
	LCD_D4=lenh 	  &1;
	LCD_D5=(lenh>>1)&1;
	LCD_D6=(lenh>>2)&1;
	LCD_D7=(lenh>>3)&1;
	LCD_en =1;
	_nop_();
	LCD_en=0;
	delay_us(100);
}



void LCD_xoa(u8 hang){
	if(hang){
		LCD_guilenh(hang);
		LCD_guichuoi("                ");
	}else{
		LCD_guilenh(0x01);
		delay_us(1600);
	}			  
}


/**************Ctr giao tiep LCD 16x2 4bit**********************/





void LCD_guichuoi(u8 *vanban) __reentrant {
	u8 i=0;
	while (*vanban && i<16)
		if(*vanban<128 && *vanban>31 && ++i)LCD_guidulieu(*vanban++);
		else LCD_guilenh(*vanban++);
}

void LCD_Init(){
	lcd_pw = 0;delay_us(15000);
	P0=0x1c;_nop_();
	LCD_en=0;delay_us(4000);
	LCD_en=1;_nop_();
	LCD_en=0;delay_us(160);
	LCD_en=1;_nop_();
	LCD_en=0;delay_us(160);
	P0=0x14;_nop_();
	LCD_en=0;delay_us(1000);
	LCD_en=1;_nop_();
	LCD_en=0;_nop_();
	P0=0x11;_nop_();
	LCD_en=0;delay_us(40);
	P0=0x10;_nop_();
	LCD_en=0;_nop_();
	P0=0x13;_nop_();
	LCD_en=0;delay_us(40);
	P0=0x10;_nop_();
	LCD_en=0;_nop_();
	P0=0x16;_nop_();
	LCD_en=0;delay_us(40);
	P0=0x10;_nop_();
	LCD_en=0;_nop_();
	P0=0x18;_nop_();
	LCD_en=0;delay_us(1000);
	
}
