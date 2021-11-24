#include "true.h"
#include "common.h"

#define     mp3_TI          (S2CON & 2) != 0
#define     mp3_RI          (S2CON & 1) != 0
#define		mp3_SBUF		S2BUF
#define     mp3_BAUD        9600

#define		mp3_playing		P12
#define		AmplyRelay		P42

#define     mp3_IDLE        0
#define     mp3_END         1
#define     mp3_START       2


void mp3_serial_init();
void mp3_play(u8 date, u8 hour, u8 minute);