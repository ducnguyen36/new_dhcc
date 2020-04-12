#include "i2c.h"
#include "ds1307.h"
u8 hex2bcd(u8 hex){
	return ((hex / 10) << 4) | (hex % 10);
}

u8 bcd2hex(u8 bcd){
	return ((bcd>>4)*10) + (bcd & 0x0f);
}

void rtc_init(){
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307CONTROLADDRESS);
	i2c_write(0x10);
	i2c_stop();
}

u8 rtc_getdate(){
	u8 __data day;
	i2c_start();
	i2c_write(DS1307WRITE);
	i2c_write(DS1307DATEADDRESS);
	i2c_stop();
	i2c_start();
	i2c_write(DS1307READ);
	day = bcd2hex(i2c_read(NACK));
	i2c_stop();
	return day;
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


