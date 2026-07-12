#ifndef MP3_H
#define MP3_H
#include "common.h"
#include "true.h"

#define mp3_TI ((S2CON & 2) != 0)
#define mp3_SBUF S2BUF
#define MP3_BAUD 9600

void mp3_serial_init();
void mp3_phat(u16 track); // phat file /MP3/xxxx.mp3 tren the nho

#endif
