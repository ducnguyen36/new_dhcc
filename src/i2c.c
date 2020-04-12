#include "true.h"
#include "i2c.h"
void i2c_start(){
    sda_bit = 1;
    WATCHDOG;WATCHDOG;
    scl_bit = 1;
    WATCHDOG;WATCHDOG;
    sda_bit=0;
    WATCHDOG;WATCHDOG;
    scl_bit=0;
}

void i2c_stop(){
    sda_bit = 0;
    WATCHDOG;WATCHDOG;
    scl_bit = 1;
    WATCHDOG;WATCHDOG;
    sda_bit  = 1;
}
void i2c_clock(){
    WATCHDOG;WATCHDOG;
    scl_bit = 1;
    WATCHDOG;WATCHDOG;
    scl_bit = 0;
}

void i2c_write(u8 dulieu){
    u8 i;
    for(i=0;i<8;i++){
        sda_bit = dulieu & 0x80;
        dulieu <<= 1;
        i2c_clock();
    }
    i2c_clock();//receive ACK
}

u8 i2c_read(__bit i2c_ack){
    u8 i,dulieu=0;
    sda_bit = 1;
    for(i=0;i<8;i++){
        WATCHDOG;WATCHDOG;
        scl_bit = 1;
        WATCHDOG;WATCHDOG;
        dulieu<<=1;
        dulieu |= sda_bit;
        scl_bit = 0;
    }
    sda_bit = !i2c_ack;
    i2c_clock();
    scl_bit = sda_bit;
    return dulieu;
}

