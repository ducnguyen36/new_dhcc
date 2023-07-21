;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eep_gio4
	.globl _eep_phut4
	.globl _eep_gio3
	.globl _eep_phut3
	.globl _eep_gio2
	.globl _eep_phut2
	.globl _eep_gio1
	.globl _eep_phut1
	.globl _eep_cam
	.globl _eep_debug
	.globl _eep_loithesim
	.globl _eep_phonephu
	.globl _eep_mp3
	.globl _eep_tatmoden
	.globl _eep_giosacxa
	.globl _eep_norreset
	.globl _eep_gioreset
	.globl _eep_ngayreset
	.globl _eep_gpson
	.globl _eep_baocao
	.globl _eep_motor
	.globl _IAP_docbyte
	.globl _IAP_cho
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
	.globl _IAP_ghibyte_PARM_2
	.globl _IAP_ghibyte
	.globl _IAP_xoasector
	.globl _IAP_docxoasector1
	.globl _IAP_ghisector1
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
_IAP_ghibyte_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'IAP_cho'
;------------------------------------------------------------
;	src\eeprom.c:5: void IAP_cho()
;	-----------------------------------------
;	 function IAP_cho
;	-----------------------------------------
_IAP_cho:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src\eeprom.c:7: IAP_CONTR = 0; //Close IAP function
	mov	_IAP_CONTR,#0x00
;	src\eeprom.c:8: IAP_CMD = CMD_IDLE; //Clear command to standby
	mov	_IAP_CMD,#0x00
;	src\eeprom.c:9: IAP_TRIG = 0; //Clear trigger register
	mov	_IAP_TRIG,#0x00
;	src\eeprom.c:10: IAP_ADDRH = 0x80; //Data ptr point to non-EEPROM area
	mov	_IAP_ADDRH,#0x80
;	src\eeprom.c:11: IAP_ADDRL = 0; //Clear IAP address to prevent misuse
	mov	_IAP_ADDRL,#0x00
;	src\eeprom.c:12: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\eeprom.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_docbyte'
;------------------------------------------------------------
;diachi                    Allocated to registers r6 r7 
;dulieu                    Allocated to registers r7 
;------------------------------------------------------------
;	src\eeprom.c:15: u8 IAP_docbyte(u16 diachi){
;	-----------------------------------------
;	 function IAP_docbyte
;	-----------------------------------------
_IAP_docbyte:
	mov	r6,dpl
	mov	r7,dph
;	src\eeprom.c:17: IAP_CONTR = ENABLE_IAP;
	mov	_IAP_CONTR,#0x83
;	src\eeprom.c:18: IAP_CMD = CMD_READ;
	mov	_IAP_CMD,#0x01
;	src\eeprom.c:19: IAP_ADDRL = diachi;
	mov	_IAP_ADDRL,r6
;	src\eeprom.c:20: IAP_ADDRH = diachi>>8;
	mov	_IAP_ADDRH,r7
;	src\eeprom.c:21: IAP_TRIG = 0x5a;
	mov	_IAP_TRIG,#0x5a
;	src\eeprom.c:22: IAP_TRIG = 0xa5;
	mov	_IAP_TRIG,#0xa5
;	src\eeprom.c:23: _nop_();
	NOP	
;	src\eeprom.c:24: dulieu = IAP_DATA;
	mov	r7,_IAP_DATA
;	src\eeprom.c:25: IAP_cho();
	push	ar7
	lcall	_IAP_cho
	pop	ar7
;	src\eeprom.c:26: return dulieu;
	mov	dpl,r7
;	src\eeprom.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_ghibyte'
;------------------------------------------------------------
;dulieu                    Allocated with name '_IAP_ghibyte_PARM_2'
;diachi                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	src\eeprom.c:29: void IAP_ghibyte(u16 diachi,u8 dulieu){
;	-----------------------------------------
;	 function IAP_ghibyte
;	-----------------------------------------
_IAP_ghibyte:
	mov	r6,dpl
	mov	r7,dph
;	src\eeprom.c:30: IAP_CONTR = ENABLE_IAP;
	mov	_IAP_CONTR,#0x83
;	src\eeprom.c:31: IAP_CMD = CMD_PROGRAM;
	mov	_IAP_CMD,#0x02
;	src\eeprom.c:32: IAP_ADDRL = diachi;
	mov	_IAP_ADDRL,r6
;	src\eeprom.c:33: IAP_ADDRH = diachi>>8;
	mov	_IAP_ADDRH,r7
;	src\eeprom.c:34: IAP_DATA = dulieu;
	mov	_IAP_DATA,_IAP_ghibyte_PARM_2
;	src\eeprom.c:35: IAP_TRIG = 0x5a;
	mov	_IAP_TRIG,#0x5a
;	src\eeprom.c:36: IAP_TRIG = 0xa5;
	mov	_IAP_TRIG,#0xa5
;	src\eeprom.c:37: _nop_();
	NOP	
;	src\eeprom.c:38: IAP_cho();
;	src\eeprom.c:39: }
	ljmp	_IAP_cho
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_xoasector'
;------------------------------------------------------------
;sector                    Allocated to registers r6 r7 
;------------------------------------------------------------
;	src\eeprom.c:41: void IAP_xoasector(u16 sector){
;	-----------------------------------------
;	 function IAP_xoasector
;	-----------------------------------------
_IAP_xoasector:
	mov	r6,dpl
	mov	r7,dph
;	src\eeprom.c:42: IAP_CONTR = ENABLE_IAP;
	mov	_IAP_CONTR,#0x83
;	src\eeprom.c:43: IAP_CMD = CMD_ERASE;
	mov	_IAP_CMD,#0x03
;	src\eeprom.c:44: IAP_ADDRL = sector;
	mov	_IAP_ADDRL,r6
;	src\eeprom.c:45: IAP_ADDRH = sector>>8;
	mov	_IAP_ADDRH,r7
;	src\eeprom.c:46: IAP_TRIG = 0x5a;
	mov	_IAP_TRIG,#0x5a
;	src\eeprom.c:47: IAP_TRIG = 0xa5;
	mov	_IAP_TRIG,#0xa5
;	src\eeprom.c:48: _nop_();
	NOP	
;	src\eeprom.c:49: IAP_cho();
;	src\eeprom.c:51: }
	ljmp	_IAP_cho
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_docxoasector1'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src\eeprom.c:53: void IAP_docxoasector1(){
;	-----------------------------------------
;	 function IAP_docxoasector1
;	-----------------------------------------
_IAP_docxoasector1:
;	src\eeprom.c:56: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\eeprom.c:57: while(i) eeprom_buf[--i] = 0xff;
	mov	r7,#0x20
00101$:
	mov	a,r7
	jz	00112$
	dec	r7
	mov	a,r7
	add	a,#_eeprom_buf
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	src\eeprom.c:59: while(i<SECTOR1_LENGTH) eeprom_buf[i] = *(&eep_motor+i++);
	sjmp	00101$
00112$:
00104$:
	cjne	r7,#0x20,00128$
00128$:
	jnc	00106$
	mov	a,r7
	add	a,#_eeprom_buf
	mov	r5,a
	clr	a
	addc	a,#(_eeprom_buf >> 8)
	mov	r6,a
	mov	dpl,r7
	mov	dph,#(_eep_motor >> 8)
	inc	r7
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
	sjmp	00104$
00106$:
;	src\eeprom.c:61: IAP_xoasector(SECTOR1);
	mov	dptr,#0x0000
;	src\eeprom.c:62: }
	ljmp	_IAP_xoasector
;------------------------------------------------------------
;Allocation info for local variables in function 'IAP_ghisector1'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src\eeprom.c:64: void IAP_ghisector1(){
;	-----------------------------------------
;	 function IAP_ghisector1
;	-----------------------------------------
_IAP_ghisector1:
;	src\eeprom.c:66: while(i<SECTOR1_LENGTH){
	mov	r7,#0x00
00101$:
	cjne	r7,#0x20,00115$
00115$:
	jnc	00104$
;	src\eeprom.c:67: IAP_CONTR = ENABLE_IAP;
	mov	_IAP_CONTR,#0x83
;	src\eeprom.c:68: IAP_CMD = CMD_PROGRAM;
	mov	_IAP_CMD,#0x02
;	src\eeprom.c:69: IAP_ADDRL = i;
	mov	_IAP_ADDRL,r7
;	src\eeprom.c:70: IAP_ADDRH = 0;
	mov	_IAP_ADDRH,#0x00
;	src\eeprom.c:71: IAP_DATA = eeprom_buf[i++];
	mov	a,r7
	add	a,#_eeprom_buf
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	inc	r7
	movx	a,@dptr
	mov	_IAP_DATA,a
;	src\eeprom.c:72: IAP_TRIG = 0x5a;
	mov	_IAP_TRIG,#0x5a
;	src\eeprom.c:73: IAP_TRIG = 0xa5;
	mov	_IAP_TRIG,#0xa5
;	src\eeprom.c:74: _nop_();
	NOP	
;	src\eeprom.c:75: IAP_cho();
	push	ar7
	lcall	_IAP_cho
	pop	ar7
	sjmp	00101$
00104$:
;	src\eeprom.c:77: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_eep_motor	=	0xf000
_eep_baocao	=	0xf001
_eep_gpson	=	0xf002
_eep_ngayreset	=	0xf003
_eep_gioreset	=	0xf004
_eep_norreset	=	0xf005
_eep_giosacxa	=	0xf006
_eep_tatmoden	=	0xf007
_eep_mp3	=	0xf010
_eep_phonephu	=	0xf011
_eep_loithesim	=	0xf01d
_eep_debug	=	0xf01e
_eep_cam	=	0xf01f
_eep_phut1	=	0xf200
_eep_gio1	=	0xf201
_eep_phut2	=	0xf202
_eep_gio2	=	0xf203
_eep_phut3	=	0xf204
_eep_gio3	=	0xf205
_eep_phut4	=	0xf206
_eep_gio4	=	0xf207
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)