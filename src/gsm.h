#ifndef GSM_H
#define GSM_H
#include "common.h"
#include "true.h"

// UART1 (chan P3.0/P3.1 - cong SIM co san tren bo), Timer1 lam baudrate
#define gsm_TI TI
#define gsm_SBUF SBUF
#define GSM_BAUD 38400

void gsm_serial_init();
void gsm_khoi_tao();          // gui AT dong bo + tat echo + che do text
void gsm_gui_chuoi(u8 *s);
void gsm_sms_batdau();        // mo phien gui SMS toi SDT_BAO_LOI
void gsm_sms_so(u8 so);       // gui 1 chu so 0-9 vao noi dung
void gsm_sms_ketthuc();       // Ctrl-Z + doi module gui xong

#endif
