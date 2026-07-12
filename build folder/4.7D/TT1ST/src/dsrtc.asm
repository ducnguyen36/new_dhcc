;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module dsrtc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bcd2hex
	.globl _hex2bcd
	.globl _i2c_read
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_write
	.globl _rtc_setdate_PARM_4
	.globl _rtc_setdate_PARM_3
	.globl _rtc_setdate_PARM_2
	.globl _rtc_settime_PARM_3
	.globl _rtc_settime_PARM_2
	.globl _rtc_gettime_PARM_3
	.globl _rtc_gettime_PARM_2
	.globl _rtc_getdate_PARM_4
	.globl _rtc_getdate_PARM_3
	.globl _rtc_getdate_PARM_2
	.globl _rtc_init
	.globl _rtc_getdate
	.globl _rtc_gettime
	.globl _rtc_settime
	.globl _rtc_setdate
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rtc_getdate_PARM_2:
	.ds 3
_rtc_getdate_PARM_3:
	.ds 3
_rtc_getdate_PARM_4:
	.ds 3
_rtc_gettime_PARM_2:
	.ds 3
_rtc_gettime_PARM_3:
	.ds 3
_rtc_settime_PARM_2:
	.ds 1
_rtc_settime_PARM_3:
	.ds 1
_rtc_setdate_PARM_2:
	.ds 1
_rtc_setdate_PARM_3:
	.ds 1
_rtc_setdate_PARM_4:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'hex2bcd'
;------------------------------------------------------------
;hex                       Allocated to registers r7 
;------------------------------------------------------------
;	src\dsrtc.c:3: u8 hex2bcd(u8 hex){
;	-----------------------------------------
;	 function hex2bcd
;	-----------------------------------------
_hex2bcd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src\dsrtc.c:4: return ((hex / 10) << 4) | (hex % 10);
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
	mov	a,r6
	orl	a,r4
	mov	dpl,a
;	src\dsrtc.c:5: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bcd2hex'
;------------------------------------------------------------
;bcd                       Allocated to registers r7 
;------------------------------------------------------------
;	src\dsrtc.c:7: u8 bcd2hex(u8 bcd){
;	-----------------------------------------
;	 function bcd2hex
;	-----------------------------------------
_bcd2hex:
;	src\dsrtc.c:8: return ((bcd>>4)*10) + (bcd & 0x0f);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,#0x0f
	anl	a,r7
	add	a,r6
	mov	dpl,a
;	src\dsrtc.c:9: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_init'
;------------------------------------------------------------
;	src\dsrtc.c:11: void rtc_init(){
;	-----------------------------------------
;	 function rtc_init
;	-----------------------------------------
_rtc_init:
;	src\dsrtc.c:12: i2c_start();
	lcall	_i2c_start
;	src\dsrtc.c:13: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:14: i2c_write(DS3231CONTROLADDRESS);
	mov	dpl,#0x0e
	lcall	_i2c_write
;	src\dsrtc.c:15: i2c_write(0x18);//ds3231 0x18 ds1307 0x10
	mov	dpl,#0x18
	lcall	_i2c_write
;	src\dsrtc.c:16: i2c_stop();
	lcall	_i2c_stop
;	src\dsrtc.c:17: i2c_start();
	lcall	_i2c_start
;	src\dsrtc.c:18: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:19: i2c_write(DS1307CONTROLADDRESS);
	mov	dpl,#0x0e
	lcall	_i2c_write
;	src\dsrtc.c:20: i2c_write(0x10);//ds3231 0x18 ds1307 0x10
	mov	dpl,#0x10
	lcall	_i2c_write
;	src\dsrtc.c:21: i2c_stop();
;	src\dsrtc.c:22: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_getdate'
;------------------------------------------------------------
;pday                      Allocated with name '_rtc_getdate_PARM_2'
;pmonth                    Allocated with name '_rtc_getdate_PARM_3'
;pyear                     Allocated with name '_rtc_getdate_PARM_4'
;pdate                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src\dsrtc.c:24: void rtc_getdate(u8 *pdate,u8 *pday, u8 *pmonth, u8 *pyear){
;	-----------------------------------------
;	 function rtc_getdate
;	-----------------------------------------
_rtc_getdate:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src\dsrtc.c:26: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	src\dsrtc.c:27: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:28: i2c_write(DS1307DATEADDRESS);
	mov	dpl,#0x03
	lcall	_i2c_write
;	src\dsrtc.c:29: i2c_stop();
	lcall	_i2c_stop
;	src\dsrtc.c:30: i2c_start();
	lcall	_i2c_start
;	src\dsrtc.c:31: i2c_write(DS1307READ);
	mov	dpl,#0xd1
	lcall	_i2c_write
;	src\dsrtc.c:32: *pdate  = i2c_read(ACK);
;	assignBit
	setb	_i2c_read_PARM_1
	lcall	_i2c_read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src\dsrtc.c:33: *pday 	= bcd2hex(i2c_read(ACK));
	mov	r5,_rtc_getdate_PARM_2
	mov	r6,(_rtc_getdate_PARM_2 + 1)
	mov	r7,(_rtc_getdate_PARM_2 + 2)
;	assignBit
	setb	_i2c_read_PARM_1
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src\dsrtc.c:34: *pmonth = bcd2hex(i2c_read(ACK));
	mov	r5,_rtc_getdate_PARM_3
	mov	r6,(_rtc_getdate_PARM_3 + 1)
	mov	r7,(_rtc_getdate_PARM_3 + 2)
;	assignBit
	setb	_i2c_read_PARM_1
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src\dsrtc.c:35: *pyear 	= bcd2hex(i2c_read(NACK));
	mov	r5,_rtc_getdate_PARM_4
	mov	r6,(_rtc_getdate_PARM_4 + 1)
	mov	r7,(_rtc_getdate_PARM_4 + 2)
;	assignBit
	clr	_i2c_read_PARM_1
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src\dsrtc.c:36: i2c_stop();
;	src\dsrtc.c:37: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_gettime'
;------------------------------------------------------------
;pminute                   Allocated with name '_rtc_gettime_PARM_2'
;psecond                   Allocated with name '_rtc_gettime_PARM_3'
;phour                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src\dsrtc.c:38: void rtc_gettime(u8 *phour, u8 *pminute, u8 *psecond){
;	-----------------------------------------
;	 function rtc_gettime
;	-----------------------------------------
_rtc_gettime:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src\dsrtc.c:39: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	src\dsrtc.c:40: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:41: i2c_write(DS1307TIMEADDRESS);
	mov	dpl,#0x00
	lcall	_i2c_write
;	src\dsrtc.c:42: i2c_stop();
	lcall	_i2c_stop
;	src\dsrtc.c:43: i2c_start();
	lcall	_i2c_start
;	src\dsrtc.c:44: i2c_write(DS1307READ);
	mov	dpl,#0xd1
	lcall	_i2c_write
;	src\dsrtc.c:45: *psecond = bcd2hex(i2c_read(ACK));
	mov	r2,_rtc_gettime_PARM_3
	mov	r3,(_rtc_gettime_PARM_3 + 1)
	mov	r4,(_rtc_gettime_PARM_3 + 2)
;	assignBit
	setb	_i2c_read_PARM_1
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	src\dsrtc.c:46: *pminute = bcd2hex(i2c_read(ACK));
	mov	r2,_rtc_gettime_PARM_2
	mov	r3,(_rtc_gettime_PARM_2 + 1)
	mov	r4,(_rtc_gettime_PARM_2 + 2)
;	assignBit
	setb	_i2c_read_PARM_1
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	src\dsrtc.c:47: *phour   = bcd2hex(i2c_read(NACK));
;	assignBit
	clr	_i2c_read_PARM_1
	lcall	_i2c_read
	lcall	_bcd2hex
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	src\dsrtc.c:48: i2c_stop();
;	src\dsrtc.c:49: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_settime'
;------------------------------------------------------------
;minute                    Allocated with name '_rtc_settime_PARM_2'
;second                    Allocated with name '_rtc_settime_PARM_3'
;hour                      Allocated to registers r7 
;------------------------------------------------------------
;	src\dsrtc.c:51: void rtc_settime(u8 hour, u8 minute, u8 second){
;	-----------------------------------------
;	 function rtc_settime
;	-----------------------------------------
_rtc_settime:
	mov	r7,dpl
;	src\dsrtc.c:52: i2c_start();
	push	ar7
	lcall	_i2c_start
;	src\dsrtc.c:53: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:54: i2c_write(DS1307TIMEADDRESS);
	mov	dpl,#0x00
	lcall	_i2c_write
;	src\dsrtc.c:55: i2c_write(hex2bcd(second));
	mov	dpl,_rtc_settime_PARM_3
	lcall	_hex2bcd
	lcall	_i2c_write
;	src\dsrtc.c:56: i2c_write(hex2bcd(minute));
	mov	dpl,_rtc_settime_PARM_2
	lcall	_hex2bcd
	lcall	_i2c_write
	pop	ar7
;	src\dsrtc.c:57: i2c_write(hex2bcd(hour));
	mov	dpl,r7
	lcall	_hex2bcd
	lcall	_i2c_write
;	src\dsrtc.c:58: i2c_stop();
;	src\dsrtc.c:59: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc_setdate'
;------------------------------------------------------------
;day                       Allocated with name '_rtc_setdate_PARM_2'
;month                     Allocated with name '_rtc_setdate_PARM_3'
;year                      Allocated with name '_rtc_setdate_PARM_4'
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	src\dsrtc.c:60: void rtc_setdate(u8 date, u8 day, u8 month, u8 year){
;	-----------------------------------------
;	 function rtc_setdate
;	-----------------------------------------
_rtc_setdate:
	mov	r7,dpl
;	src\dsrtc.c:61: i2c_start();
	push	ar7
	lcall	_i2c_start
;	src\dsrtc.c:62: i2c_write(DS1307WRITE);
	mov	dpl,#0xd0
	lcall	_i2c_write
;	src\dsrtc.c:63: i2c_write(DS1307DATEADDRESS);
	mov	dpl,#0x03
	lcall	_i2c_write
	pop	ar7
;	src\dsrtc.c:64: i2c_write(date);
	mov	dpl,r7
	lcall	_i2c_write
;	src\dsrtc.c:65: i2c_write(hex2bcd(day));
	mov	dpl,_rtc_setdate_PARM_2
	lcall	_hex2bcd
	lcall	_i2c_write
;	src\dsrtc.c:66: i2c_write(hex2bcd(month));
	mov	dpl,_rtc_setdate_PARM_3
	lcall	_hex2bcd
	lcall	_i2c_write
;	src\dsrtc.c:67: i2c_write(hex2bcd(year));
	mov	dpl,_rtc_setdate_PARM_4
	lcall	_hex2bcd
	lcall	_i2c_write
;	src\dsrtc.c:68: i2c_stop();
;	src\dsrtc.c:69: }
	ljmp	_i2c_stop
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
