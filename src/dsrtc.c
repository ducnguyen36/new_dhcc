#include "i2c.h"
#include "dsrtc.h"
u8 hex2bcd(u8 hex){
	return ((hex / 10) << 4) | (hex % 10);
}

u8 bcd2hex(u8 bcd){
	return ((bcd>>4)*10) + (bcd & 0x0f);
}

void rtc_init(){
	// i2c_start();
	// i2c_write(DS1307WRITE);
	// i2c_write(DS3231CONTROLADDRESS);
	// i2c_write(0x18);//ds3231 0x18 ds1307 0x10
	// i2c_stop();
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307CONTROLADDRESS);
	i2c_write(0x10);//ds3231 0x18 ds1307 0x10
	i2c_stop();
}

void rtc_getdate(u8 *pdate,u8 *pday, u8 *pmonth, u8 *pyear){
	// u8 __data day;
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307DATEADDRESS);
	i2c_stop();
	i2c_start();
	i2c_write(DS1307READ);
	*pdate  = i2c_read(ACK);
	*pday 	= bcd2hex(i2c_read(ACK));
	*pmonth = bcd2hex(i2c_read(ACK));
	*pyear 	= bcd2hex(i2c_read(NACK));
	i2c_stop();
}
void rtc_gettime(u8 *phour, u8 *pminute, u8 *psecond){
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307TIMEADDRESS);
	i2c_stop();
	i2c_start();
	i2c_write(DS1307READ);
	*psecond = bcd2hex(i2c_read(ACK));
	*pminute = bcd2hex(i2c_read(ACK));
	*phour   = bcd2hex(i2c_read(NACK));
	i2c_stop();
}

void rtc_settime(u8 hour, u8 minute, u8 second){
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307TIMEADDRESS);
	i2c_write(hex2bcd(second));
	i2c_write(hex2bcd(minute));
	i2c_write(hex2bcd(hour));
	i2c_stop();
}
void rtc_setdate(u8 date, u8 day, u8 month, u8 year){
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307DATEADDRESS);
	i2c_write(date);
	i2c_write(hex2bcd(day));
	i2c_write(hex2bcd(month));
	i2c_write(hex2bcd(year));
	i2c_stop();
}


