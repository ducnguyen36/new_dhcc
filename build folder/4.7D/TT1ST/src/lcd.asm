;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CR
	.globl _CF
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EADC
	.globl _ELVD
	.globl _EA
	.globl _P77
	.globl _P76
	.globl _P75
	.globl _P74
	.globl _P73
	.globl _P72
	.globl _P71
	.globl _P70
	.globl _P67
	.globl _P66
	.globl _P65
	.globl _P64
	.globl _P63
	.globl _P62
	.globl _P61
	.globl _P60
	.globl _P57
	.globl _P56
	.globl _P55
	.globl _P54
	.globl _P53
	.globl _P52
	.globl _P51
	.globl _P50
	.globl _P47
	.globl _P46
	.globl _P45
	.globl _P44
	.globl _P43
	.globl _P42
	.globl _P41
	.globl _P40
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _PWMFDCR
	.globl _PWMIF
	.globl _PWMCR
	.globl _PWMCFG
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _PCA_PWM2
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _SADEN
	.globl _SADDR
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _SBUF
	.globl _SCON
	.globl _WDT_CONTR
	.globl _WKTCH
	.globl _WKTCL
	.globl _T2L
	.globl _T2H
	.globl _T3L
	.globl _T3H
	.globl _T4L
	.globl _T4H
	.globl _T4T3M
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _INT_CLKO
	.globl _IP2
	.globl _IE2
	.globl _IP
	.globl _IE
	.globl _P_SW2
	.globl _P1ASF
	.globl _BUS_SPEED
	.globl _CLK_DIV
	.globl _P_SW1
	.globl _AUXR1
	.globl _AUXR
	.globl _PCON
	.globl _P7M1
	.globl _P7M0
	.globl _P6M1
	.globl _P6M0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P7
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _PSW
	.globl _B
	.globl _ACC
	.globl _LCD_guigio_PARM_6
	.globl _LCD_guigio_PARM_5
	.globl _LCD_guigio_PARM_4
	.globl _LCD_guigio_PARM_3
	.globl _LCD_guigio_PARM_2
	.globl _LCD_chop_PARM_2
	.globl _LCD_blinkXY_PARM_2
	.globl _delay_us
	.globl _delay_ms
	.globl _LCD_blinkXY
	.globl _LCD_chop
	.globl _LCD_guidulieu
	.globl _LCD_guilenh
	.globl _LCD_noblink
	.globl _LCD_xoa
	.globl _LCD_guichuoi
	.globl _LCD_Init
	.globl _LCD_guigio
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_PSW	=	0x00d0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_P4	=	0x00c0
_P5	=	0x00c8
_P6	=	0x00e8
_P7	=	0x00f8
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_P6M0	=	0x00cc
_P6M1	=	0x00cb
_P7M0	=	0x00e2
_P7M1	=	0x00e1
_PCON	=	0x0087
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_P_SW1	=	0x00a2
_CLK_DIV	=	0x0097
_BUS_SPEED	=	0x00a1
_P1ASF	=	0x009d
_P_SW2	=	0x00ba
_IE	=	0x00a8
_IP	=	0x00b8
_IE2	=	0x00af
_IP2	=	0x00b5
_INT_CLKO	=	0x008f
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T4T3M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T2H	=	0x00d6
_T2L	=	0x00d7
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WDT_CONTR	=	0x00c1
_SCON	=	0x0098
_SBUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_PCA_PWM2	=	0x00f4
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_PWMCFG	=	0x00f1
_PWMCR	=	0x00f5
_PWMIF	=	0x00f6
_PWMFDCR	=	0x00f7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_P40	=	0x00c0
_P41	=	0x00c1
_P42	=	0x00c2
_P43	=	0x00c3
_P44	=	0x00c4
_P45	=	0x00c5
_P46	=	0x00c6
_P47	=	0x00c7
_P50	=	0x00c8
_P51	=	0x00c9
_P52	=	0x00ca
_P53	=	0x00cb
_P54	=	0x00cc
_P55	=	0x00cd
_P56	=	0x00ce
_P57	=	0x00cf
_P60	=	0x00e8
_P61	=	0x00e9
_P62	=	0x00ea
_P63	=	0x00eb
_P64	=	0x00ec
_P65	=	0x00ed
_P66	=	0x00ee
_P67	=	0x00ef
_P70	=	0x00f8
_P71	=	0x00f9
_P72	=	0x00fa
_P73	=	0x00fb
_P74	=	0x00fc
_P75	=	0x00fd
_P76	=	0x00fe
_P77	=	0x00ff
_EA	=	0x00af
_ELVD	=	0x00ae
_EADC	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_CF	=	0x00df
_CR	=	0x00de
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LCD_blinkXY_PARM_2:
	.ds 1
_LCD_chop_PARM_2:
	.ds 3
_LCD_guigio_PARM_2:
	.ds 3
_LCD_guigio_PARM_3:
	.ds 1
_LCD_guigio_PARM_4:
	.ds 1
_LCD_guigio_PARM_5:
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
_LCD_guigio_PARM_6:
	.ds 1
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
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	src\lcd.c:4: void delay_us(unsigned int t)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	src\lcd.c:7: for(i=0;i<t;i++){WATCHDOG;};
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	orl	_WDT_CONTR,#0x10
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	src\lcd.c:8: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	src\lcd.c:10: void delay_ms(unsigned int t)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	src\lcd.c:13: for (i = 0; i < t; i++)delay_us(1000);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	src\lcd.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_blinkXY'
;------------------------------------------------------------
;cot                       Allocated with name '_LCD_blinkXY_PARM_2'
;hang                      Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:17: void LCD_blinkXY(u8 hang, u8 cot){
;	-----------------------------------------
;	 function LCD_blinkXY
;	-----------------------------------------
_LCD_blinkXY:
	mov	r7,dpl
;	src\lcd.c:18: LCD_guilenh(hang|cot);
	mov	a,_LCD_blinkXY_PARM_2
	orl	a,r7
	mov	dpl,a
	lcall	_LCD_guilenh
;	src\lcd.c:19: LCD_guilenh(0x0d);
	mov	dpl,#0x0d
;	src\lcd.c:21: }
	ljmp	_LCD_guilenh
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_chop'
;------------------------------------------------------------
;vanban                    Allocated with name '_LCD_chop_PARM_2'
;hang                      Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:22: void LCD_chop(u8 hang,u8 *vanban){
;	-----------------------------------------
;	 function LCD_chop
;	-----------------------------------------
_LCD_chop:
	mov	r7,dpl
;	src\lcd.c:23: if(chop){
	jnb	_chop,00102$
;	src\lcd.c:24: LCD_guilenh(hang);
	mov	dpl,r7
	lcall	_LCD_guilenh
;	src\lcd.c:25: LCD_guichuoi(vanban);
	mov	dpl,_LCD_chop_PARM_2
	mov	dph,(_LCD_chop_PARM_2 + 1)
	mov	b,(_LCD_chop_PARM_2 + 2)
	ljmp	_LCD_guichuoi
00102$:
;	src\lcd.c:26: }else LCD_xoa(hang);
	mov	dpl,r7
;	src\lcd.c:27: }
	ljmp	_LCD_xoa
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_guidulieu'
;------------------------------------------------------------
;dulieu                    Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:29: void LCD_guidulieu(u8 dulieu){
;	-----------------------------------------
;	 function LCD_guidulieu
;	-----------------------------------------
_LCD_guidulieu:
	mov	r7,dpl
;	src\lcd.c:31: LCD_rs=1;
;	assignBit
	setb	_P05
;	src\lcd.c:32: LCD_D4=(dulieu>>4)&1;
	mov	a,r7
	swap	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P03,c
;	src\lcd.c:33: LCD_D5=(dulieu>>5)&1;
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_P02,c
;	src\lcd.c:34: LCD_D6=(dulieu>>6)&1;
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P01,c
;	src\lcd.c:35: LCD_D7=(dulieu>>7)&1;
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	mov	r6,a
	add	a,#0xff
	mov	_P00,c
;	src\lcd.c:36: LCD_en =1;
;	assignBit
	setb	_P04
;	src\lcd.c:37: _nop_();
	NOP	
;	src\lcd.c:38: LCD_en=0;
;	assignBit
	clr	_P04
;	src\lcd.c:39: _nop_();
	NOP	
;	src\lcd.c:40: LCD_D4=dulieu 	  &1;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P03,c
;	src\lcd.c:41: LCD_D5=(dulieu>>1)&1;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P02,c
;	src\lcd.c:42: LCD_D6=(dulieu>>2)&1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	mov	r6,a
	add	a,#0xff
	mov	_P01,c
;	src\lcd.c:43: LCD_D7=(dulieu>>3)&1;
	mov	a,r7
	mov	c,acc[3]
	clr	a
	rlc	a
;	assignBit
	mov	r7,a
	add	a,#0xff
	mov	_P00,c
;	src\lcd.c:44: LCD_en =1;
;	assignBit
	setb	_P04
;	src\lcd.c:45: _nop_();
	NOP	
;	src\lcd.c:46: LCD_en=0;
;	assignBit
	clr	_P04
;	src\lcd.c:47: delay_us(100);
	mov	dptr,#0x0064
	lcall	_delay_us
;	src\lcd.c:48: LCD_rs=0;
;	assignBit
	clr	_P05
;	src\lcd.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_guilenh'
;------------------------------------------------------------
;lenh                      Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:51: void LCD_guilenh(u8 lenh){
;	-----------------------------------------
;	 function LCD_guilenh
;	-----------------------------------------
_LCD_guilenh:
	mov	r7,dpl
;	src\lcd.c:53: LCD_rs=0;
;	assignBit
	clr	_P05
;	src\lcd.c:54: LCD_D4=(lenh>>4)&1;
	mov	a,r7
	swap	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P03,c
;	src\lcd.c:55: LCD_D5=(lenh>>5)&1;
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
	mov	_P02,c
;	src\lcd.c:56: LCD_D6=(lenh>>6)&1;
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P01,c
;	src\lcd.c:57: LCD_D7=(lenh>>7)&1;
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	mov	r6,a
	add	a,#0xff
	mov	_P00,c
;	src\lcd.c:58: LCD_en =1;
;	assignBit
	setb	_P04
;	src\lcd.c:59: _nop_();
	NOP	
;	src\lcd.c:60: LCD_en=0;
;	assignBit
	clr	_P04
;	src\lcd.c:61: _nop_();
	NOP	
;	src\lcd.c:62: LCD_D4=lenh 	  &1;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P03,c
;	src\lcd.c:63: LCD_D5=(lenh>>1)&1;
	mov	a,r7
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P02,c
;	src\lcd.c:64: LCD_D6=(lenh>>2)&1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	mov	r6,a
	add	a,#0xff
	mov	_P01,c
;	src\lcd.c:65: LCD_D7=(lenh>>3)&1;
	mov	a,r7
	mov	c,acc[3]
	clr	a
	rlc	a
;	assignBit
	mov	r7,a
	add	a,#0xff
	mov	_P00,c
;	src\lcd.c:66: LCD_en =1;
;	assignBit
	setb	_P04
;	src\lcd.c:67: _nop_();
	NOP	
;	src\lcd.c:68: LCD_en=0;
;	assignBit
	clr	_P04
;	src\lcd.c:69: delay_us(100);
	mov	dptr,#0x0064
;	src\lcd.c:70: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_noblink'
;------------------------------------------------------------
;	src\lcd.c:72: void LCD_noblink(){
;	-----------------------------------------
;	 function LCD_noblink
;	-----------------------------------------
_LCD_noblink:
;	src\lcd.c:73: LCD_guilenh(0x0c);
	mov	dpl,#0x0c
;	src\lcd.c:74: }
	ljmp	_LCD_guilenh
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_xoa'
;------------------------------------------------------------
;hang                      Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:76: void LCD_xoa(u8 hang){
;	-----------------------------------------
;	 function LCD_xoa
;	-----------------------------------------
_LCD_xoa:
;	src\lcd.c:77: if(hang){
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	src\lcd.c:78: LCD_guilenh(hang);
	mov	dpl,r7
	lcall	_LCD_guilenh
;	src\lcd.c:79: LCD_guichuoi("                ");
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_LCD_guichuoi
00102$:
;	src\lcd.c:81: LCD_guilenh(0x01);
	mov	dpl,#0x01
	lcall	_LCD_guilenh
;	src\lcd.c:82: delay_us(1600);
	mov	dptr,#0x0640
;	src\lcd.c:84: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_guichuoi'
;------------------------------------------------------------
;vanban                    Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	src\lcd.c:93: void LCD_guichuoi(u8 *vanban) __reentrant {
;	-----------------------------------------
;	 function LCD_guichuoi
;	-----------------------------------------
_LCD_guichuoi:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src\lcd.c:95: while (*vanban && i<16)
	mov	r4,#0x00
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jz	00110$
	cjne	r4,#0x10,00138$
00138$:
	jnc	00110$
;	src\lcd.c:96: if(*vanban<128 && *vanban>31 && ++i)LCD_guidulieu(*vanban++);
	cjne	r3,#0x80,00140$
00140$:
	jnc	00102$
	mov	a,r3
	add	a,#0xff - 0x1f
	jnc	00102$
	inc	r4
	mov	a,r4
	jz	00102$
	inc	r5
	cjne	r5,#0x00,00144$
	inc	r6
00144$:
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_LCD_guidulieu
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00107$
00102$:
;	src\lcd.c:97: else LCD_guilenh(*vanban++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_LCD_guilenh
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00107$
00110$:
;	src\lcd.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Init'
;------------------------------------------------------------
;	src\lcd.c:100: void LCD_Init(){
;	-----------------------------------------
;	 function LCD_Init
;	-----------------------------------------
_LCD_Init:
;	src\lcd.c:101: lcd_pw = 0;delay_us(15000);
;	assignBit
	clr	_P06
	mov	dptr,#0x3a98
	lcall	_delay_us
;	src\lcd.c:102: P0=0x1c;_nop_();
	mov	_P0,#0x1c
	NOP	
;	src\lcd.c:103: LCD_en=0;delay_us(4000);
;	assignBit
	clr	_P04
	mov	dptr,#0x0fa0
	lcall	_delay_us
;	src\lcd.c:104: LCD_en=1;_nop_();
;	assignBit
	setb	_P04
	NOP	
;	src\lcd.c:105: LCD_en=0;delay_us(160);
;	assignBit
	clr	_P04
	mov	dptr,#0x00a0
	lcall	_delay_us
;	src\lcd.c:106: LCD_en=1;_nop_();
;	assignBit
	setb	_P04
	NOP	
;	src\lcd.c:107: LCD_en=0;delay_us(160);
;	assignBit
	clr	_P04
	mov	dptr,#0x00a0
	lcall	_delay_us
;	src\lcd.c:108: P0=0x14;_nop_();
	mov	_P0,#0x14
	NOP	
;	src\lcd.c:109: LCD_en=0;delay_us(1000);
;	assignBit
	clr	_P04
	mov	dptr,#0x03e8
	lcall	_delay_us
;	src\lcd.c:110: LCD_en=1;_nop_();
;	assignBit
	setb	_P04
	NOP	
;	src\lcd.c:111: LCD_en=0;_nop_();
;	assignBit
	clr	_P04
	NOP	
;	src\lcd.c:112: P0=0x11;_nop_();
	mov	_P0,#0x11
	NOP	
;	src\lcd.c:113: LCD_en=0;delay_us(40);
;	assignBit
	clr	_P04
	mov	dptr,#0x0028
	lcall	_delay_us
;	src\lcd.c:114: P0=0x10;_nop_();
	mov	_P0,#0x10
	NOP	
;	src\lcd.c:115: LCD_en=0;_nop_();
;	assignBit
	clr	_P04
	NOP	
;	src\lcd.c:116: P0=0x13;_nop_();
	mov	_P0,#0x13
	NOP	
;	src\lcd.c:117: LCD_en=0;delay_us(40);
;	assignBit
	clr	_P04
	mov	dptr,#0x0028
	lcall	_delay_us
;	src\lcd.c:118: P0=0x10;_nop_();
	mov	_P0,#0x10
	NOP	
;	src\lcd.c:119: LCD_en=0;_nop_();
;	assignBit
	clr	_P04
	NOP	
;	src\lcd.c:120: P0=0x16;_nop_();
	mov	_P0,#0x16
	NOP	
;	src\lcd.c:121: LCD_en=0;delay_us(40);
;	assignBit
	clr	_P04
	mov	dptr,#0x0028
	lcall	_delay_us
;	src\lcd.c:122: P0=0x10;_nop_();
	mov	_P0,#0x10
	NOP	
;	src\lcd.c:123: LCD_en=0;_nop_();
;	assignBit
	clr	_P04
	NOP	
;	src\lcd.c:124: P0=0x18;_nop_();
	mov	_P0,#0x18
	NOP	
;	src\lcd.c:125: LCD_en=0;delay_us(1000);
;	assignBit
	clr	_P04
	mov	dptr,#0x03e8
;	src\lcd.c:127: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_guigio'
;------------------------------------------------------------
;chuoi                     Allocated with name '_LCD_guigio_PARM_2'
;gio                       Allocated with name '_LCD_guigio_PARM_3'
;phut                      Allocated with name '_LCD_guigio_PARM_4'
;giay                      Allocated with name '_LCD_guigio_PARM_5'
;vitri                     Allocated to registers r7 
;------------------------------------------------------------
;	src\lcd.c:129: void LCD_guigio(u8 vitri, u8 *chuoi, u8 gio, u8 phut, u8 giay,__bit haicham){
;	-----------------------------------------
;	 function LCD_guigio
;	-----------------------------------------
_LCD_guigio:
	mov	r7,dpl
;	src\lcd.c:131: if(giay>250){
	mov	a,_LCD_guigio_PARM_5
	add	a,#0xff - 0xfa
	jc	00158$
	ljmp	00108$
00158$:
;	src\lcd.c:132: LCD_guilenh(vitri);
	mov	dpl,r7
	lcall	_LCD_guilenh
;	src\lcd.c:133: LCD_guichuoi(chuoi);
	mov	dpl,_LCD_guigio_PARM_2
	mov	dph,(_LCD_guigio_PARM_2 + 1)
	mov	b,(_LCD_guigio_PARM_2 + 2)
	lcall	_LCD_guichuoi
;	src\lcd.c:134: LCD_guidulieu(gio<10?' ':(gio/10+'0'));
	mov	a,#0x100 - 0x0a
	add	a,_LCD_guigio_PARM_3
	jc	00112$
	mov	r5,#0x20
	mov	r6,#0x00
	sjmp	00113$
00112$:
	mov	r3,_LCD_guigio_PARM_3
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	mov	a,#0x30
	add	a,r3
	mov	r3,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
00113$:
	mov	dpl,r5
	lcall	_LCD_guidulieu
;	src\lcd.c:135: LCD_guidulieu(gio%10+'0');
	mov	r5,_LCD_guigio_PARM_3
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\lcd.c:136: if(giay>252) LCD_guidulieu(haicham?':':' ');
	mov	a,_LCD_guigio_PARM_5
	add	a,#0xff - 0xfc
	jnc	00102$
	jnb	_LCD_guigio_PARM_6,00114$
	mov	r5,#0x3a
	mov	r6,#0x00
	sjmp	00115$
00114$:
	mov	r5,#0x20
	mov	r6,#0x00
00115$:
	mov	dpl,r5
	lcall	_LCD_guidulieu
00102$:
;	src\lcd.c:137: LCD_guidulieu(phut/10+'0');
	mov	r5,_LCD_guigio_PARM_4
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar5
	pop	ar6
;	src\lcd.c:138: LCD_guidulieu(phut%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	ljmp	_LCD_guidulieu
00108$:
;	src\lcd.c:140: LCD_guilenh(vitri);
	mov	dpl,r7
	lcall	_LCD_guilenh
;	src\lcd.c:141: LCD_guichuoi(chuoi);
	mov	dpl,_LCD_guigio_PARM_2
	mov	dph,(_LCD_guigio_PARM_2 + 1)
	mov	b,(_LCD_guigio_PARM_2 + 2)
	lcall	_LCD_guichuoi
;	src\lcd.c:142: LCD_guidulieu(gio<10?' ':(gio/10+'0'));
	mov	a,#0x100 - 0x0a
	add	a,_LCD_guigio_PARM_3
	jc	00116$
	mov	r6,#0x20
	mov	r7,#0x00
	sjmp	00117$
00116$:
	mov	r4,_LCD_guigio_PARM_3
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
00117$:
	mov	dpl,r6
	lcall	_LCD_guidulieu
;	src\lcd.c:143: LCD_guidulieu(gio%10+'0');
	mov	r6,_LCD_guigio_PARM_3
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\lcd.c:144: if(giay<100)LCD_guidulieu(haicham?':':' ');
	clr	c
	mov	a,_LCD_guigio_PARM_5
	subb	a,#0x64
	clr	a
	rlc	a
	mov	r7,a
	jz	00104$
	jnb	_LCD_guigio_PARM_6,00118$
	mov	r5,#0x3a
	mov	r6,#0x00
	sjmp	00119$
00118$:
	mov	r5,#0x20
	mov	r6,#0x00
00119$:
	mov	dpl,r5
	push	ar7
	lcall	_LCD_guidulieu
	pop	ar7
00104$:
;	src\lcd.c:145: LCD_guidulieu(phut/10+'0');
	mov	r5,_LCD_guigio_PARM_4
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar5
	pop	ar6
;	src\lcd.c:146: LCD_guidulieu(phut%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar7
;	src\lcd.c:147: if(giay<100)LCD_guidulieu(haicham?':':' ');
	mov	a,r7
	jz	00106$
	jnb	_LCD_guigio_PARM_6,00120$
	mov	r6,#0x3a
	mov	r7,#0x00
	sjmp	00121$
00120$:
	mov	r6,#0x20
	mov	r7,#0x00
00121$:
	mov	dpl,r6
	lcall	_LCD_guidulieu
00106$:
;	src\lcd.c:148: LCD_guidulieu((giay%100)/10+'0');
	mov	r6,_LCD_guigio_PARM_5
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\lcd.c:149: LCD_guidulieu(giay%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\lcd.c:150: LCD_guidulieu(' ');
	mov	dpl,#0x20
;	src\lcd.c:164: }
	ljmp	_LCD_guidulieu
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "                "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
