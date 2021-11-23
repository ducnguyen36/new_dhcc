#define		DS1307WRITE			0xd0
#define		DS1307READ			0xd1
#define     DS1307CONTROLADDRESS    0x07
#define     DS1307TIMEADDRESS    0x00
#define     DS1307DATEADDRESS    0x03
#define     ACK                 1
#define     NACK                0

void rtc_init();

// u8 rtc_getdate();
void rtc_getdate(u8 *pdate, u8 *pday, u8 *pmonth, u8 *pyear);
void rtc_setdate(u8 date, u8 day, u8 month, u8 year);
void rtc_gettime(u8 *phour, u8 *pminute, u8 *psecond);
void rtc_settime(u8 hour, u8 minute, u8 second);