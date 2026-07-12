#include "main.h"
#include "gsm.h"
#include "lcd.h"

/* Gui SMS bao loi qua module A7680C. Chi GUI, khong doc phan hoi
   (gui "mu" kem thoi gian doi) nen khong can ngat serial. */

static u8 __code sdt_bao_loi[] = SDT_BAO_LOI;

void gsm_serial_init()
{
    SCON = 0x50;  // UART1: 8 bit, baudrate thay doi
    AUXR |= 0x40; // Timer1 chay 1T
    AUXR &= 0xFE; // Timer1 lam baudrate cho UART1
    TL1 = (65536 - (FOSC / 4 / GSM_BAUD));
    TH1 = (65536 - (FOSC / 4 / GSM_BAUD)) >> 8;
    ET1 = 0;
    TR1 = 1;
    ES = 0;     // khong dung ngat serial
    gsm_pw = 1; // cap nguon module SIM (P2.0)
}

static void gsm_gui_byte(u8 dulieu)
{
    gsm_TI = 0;
    gsm_SBUF = dulieu;
    while (!gsm_TI)
        WATCHDOG;
    gsm_TI = 0;
}

void gsm_gui_chuoi(u8 *s)
{
    while (*s)
        gsm_gui_byte(*s++);
}

void gsm_khoi_tao()
{
    gsm_gui_chuoi("AT\r\n"); // dong bo autobaud
    delay_ms(300);
    gsm_gui_chuoi("AT\r\n");
    delay_ms(300);
    gsm_gui_chuoi("ATE0\r\n"); // tat echo
    delay_ms(300);
    gsm_gui_chuoi("AT+CMGF=1\r\n"); // SMS che do text
    delay_ms(300);
}

void gsm_sms_batdau()
{
    // gui lai cau hinh phong khi module moi khoi dong xong mang
    gsm_gui_chuoi("AT\r\n");
    delay_ms(300);
    gsm_gui_chuoi("AT+CMGF=1\r\n");
    delay_ms(500);
    gsm_gui_chuoi("AT+CMGS=\"");
    gsm_gui_chuoi(sdt_bao_loi);
    gsm_gui_chuoi("\"\r");
    delay_ms(1000); // doi dau nhac '>'
}

void gsm_sms_so(u8 so)
{
    gsm_gui_byte(so + '0');
}

void gsm_sms_ketthuc()
{
    gsm_gui_byte(26); // Ctrl-Z
    delay_ms(5000);   // doi module gui SMS xong
}
