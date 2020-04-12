#ifndef TRUE_H
#define TRUE_H
#include "stc15.h"

/*--------Khong duoc phep thay doi-------*/
#define		FOSC		12000000L

#define		PORT_KEY	P3
#define		PORT_OUT 	P2



/*********** Keys ***************/
#define		key_in1		P35
#define		key_in2		P33
#define		key_in3		P34

/************ CAMS ******************/
#define		cam_sign	P36
#define		cam_sign_step	P37

/*********** DALAS ***************/
#define		clock_in	P32


/************ MOTOR STATUS ******************/
#define		motor_run_sign	P41

/************ LED ******************/
#define		over_cur_led	P07



/*********** MOTORS DC ***************/
// Timer 0 = motor control

#define		motorA0		P43
#define		motorA1		P44

#define		MotorDirection()	motorA0 = !motorDir; motorA1 = motorDir


#define	cam_sign_out	cam_out1
#define	zero_sign_out	cam_out2

/* RELAY */
#define		DenRelay		P21
#define		ChargeRelay		P22
#define		RingRelay		P23

#endif
