#include "mp3.h"

void mp3_serial_init()
{
    P_SW2 = 0x01;  // UART2 chuyen sang chan P4.6/P4.7 (cong MP3 tren bo)
    S2CON = 0x50;  // 8 bit, baudrate thay doi
    AUXR |= 0x04;  // Timer2 chay 1T
    T2L = (65536 - (FOSC / 4 / MP3_BAUD));
    T2H = (65536 - (FOSC / 4 / MP3_BAUD)) >> 8;
    AUXR |= 0x10;  // chay Timer2
    // khong dung ngat UART2, chi gui lenh
}

/* Lenh DFPlayer 0x12: phat file trong thu muc /MP3 theo so track */
void mp3_phat(u16 track)
{
    u16 checksum = 65257 - ((u8)track) - (track >> 8);
    u8 __xdata mp3_buf[10] = {126,   255,          6,        0x12,     0,
                              track >> 8, track, checksum >> 8, checksum, 239};
    u8 __data i;
    for (i = 0; i < 10; i++)
    {
        mp3_SBUF = mp3_buf[i];
        while (!mp3_TI)
            WATCHDOG;
        S2CON &= 0xFD;
    }
}
