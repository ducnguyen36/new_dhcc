#include "common.h"
#define		sda_bit		P40
#define		scl_bit		P55

void i2c_write(u8 dulieu);
void i2c_start();
void i2c_stop();
u8 i2c_read(__bit i2c_ack);
