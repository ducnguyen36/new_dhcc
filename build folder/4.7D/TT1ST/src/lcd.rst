                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CCF0
                                     12 	.globl _CCF1
                                     13 	.globl _CCF2
                                     14 	.globl _CR
                                     15 	.globl _CF
                                     16 	.globl _RI
                                     17 	.globl _TI
                                     18 	.globl _RB8
                                     19 	.globl _TB8
                                     20 	.globl _REN
                                     21 	.globl _SM2
                                     22 	.globl _SM1
                                     23 	.globl _SM0
                                     24 	.globl _IT0
                                     25 	.globl _IE0
                                     26 	.globl _IT1
                                     27 	.globl _IE1
                                     28 	.globl _TR0
                                     29 	.globl _TF0
                                     30 	.globl _TR1
                                     31 	.globl _TF1
                                     32 	.globl _PX0
                                     33 	.globl _PT0
                                     34 	.globl _PX1
                                     35 	.globl _PT1
                                     36 	.globl _PS
                                     37 	.globl _PADC
                                     38 	.globl _PLVD
                                     39 	.globl _PPCA
                                     40 	.globl _EX0
                                     41 	.globl _ET0
                                     42 	.globl _EX1
                                     43 	.globl _ET1
                                     44 	.globl _ES
                                     45 	.globl _EADC
                                     46 	.globl _ELVD
                                     47 	.globl _EA
                                     48 	.globl _P77
                                     49 	.globl _P76
                                     50 	.globl _P75
                                     51 	.globl _P74
                                     52 	.globl _P73
                                     53 	.globl _P72
                                     54 	.globl _P71
                                     55 	.globl _P70
                                     56 	.globl _P67
                                     57 	.globl _P66
                                     58 	.globl _P65
                                     59 	.globl _P64
                                     60 	.globl _P63
                                     61 	.globl _P62
                                     62 	.globl _P61
                                     63 	.globl _P60
                                     64 	.globl _P57
                                     65 	.globl _P56
                                     66 	.globl _P55
                                     67 	.globl _P54
                                     68 	.globl _P53
                                     69 	.globl _P52
                                     70 	.globl _P51
                                     71 	.globl _P50
                                     72 	.globl _P47
                                     73 	.globl _P46
                                     74 	.globl _P45
                                     75 	.globl _P44
                                     76 	.globl _P43
                                     77 	.globl _P42
                                     78 	.globl _P41
                                     79 	.globl _P40
                                     80 	.globl _P37
                                     81 	.globl _P36
                                     82 	.globl _P35
                                     83 	.globl _P34
                                     84 	.globl _P33
                                     85 	.globl _P32
                                     86 	.globl _P31
                                     87 	.globl _P30
                                     88 	.globl _P27
                                     89 	.globl _P26
                                     90 	.globl _P25
                                     91 	.globl _P24
                                     92 	.globl _P23
                                     93 	.globl _P22
                                     94 	.globl _P21
                                     95 	.globl _P20
                                     96 	.globl _P17
                                     97 	.globl _P16
                                     98 	.globl _P15
                                     99 	.globl _P14
                                    100 	.globl _P13
                                    101 	.globl _P12
                                    102 	.globl _P11
                                    103 	.globl _P10
                                    104 	.globl _P07
                                    105 	.globl _P06
                                    106 	.globl _P05
                                    107 	.globl _P04
                                    108 	.globl _P03
                                    109 	.globl _P02
                                    110 	.globl _P01
                                    111 	.globl _P00
                                    112 	.globl _P
                                    113 	.globl _F1
                                    114 	.globl _OV
                                    115 	.globl _RS0
                                    116 	.globl _RS1
                                    117 	.globl _F0
                                    118 	.globl _AC
                                    119 	.globl _CY
                                    120 	.globl _PWMFDCR
                                    121 	.globl _PWMIF
                                    122 	.globl _PWMCR
                                    123 	.globl _PWMCFG
                                    124 	.globl _CMPCR2
                                    125 	.globl _CMPCR1
                                    126 	.globl _CCAP2H
                                    127 	.globl _CCAP1H
                                    128 	.globl _CCAP0H
                                    129 	.globl _PCA_PWM2
                                    130 	.globl _PCA_PWM1
                                    131 	.globl _PCA_PWM0
                                    132 	.globl _CCAP2L
                                    133 	.globl _CCAP1L
                                    134 	.globl _CCAP0L
                                    135 	.globl _CCAPM2
                                    136 	.globl _CCAPM1
                                    137 	.globl _CCAPM0
                                    138 	.globl _CH
                                    139 	.globl _CL
                                    140 	.globl _CMOD
                                    141 	.globl _CCON
                                    142 	.globl _IAP_CONTR
                                    143 	.globl _IAP_TRIG
                                    144 	.globl _IAP_CMD
                                    145 	.globl _IAP_ADDRL
                                    146 	.globl _IAP_ADDRH
                                    147 	.globl _IAP_DATA
                                    148 	.globl _SPDAT
                                    149 	.globl _SPCTL
                                    150 	.globl _SPSTAT
                                    151 	.globl _ADC_RESL
                                    152 	.globl _ADC_RES
                                    153 	.globl _ADC_CONTR
                                    154 	.globl _SADEN
                                    155 	.globl _SADDR
                                    156 	.globl _S4BUF
                                    157 	.globl _S4CON
                                    158 	.globl _S3BUF
                                    159 	.globl _S3CON
                                    160 	.globl _S2BUF
                                    161 	.globl _S2CON
                                    162 	.globl _SBUF
                                    163 	.globl _SCON
                                    164 	.globl _WDT_CONTR
                                    165 	.globl _WKTCH
                                    166 	.globl _WKTCL
                                    167 	.globl _T2L
                                    168 	.globl _T2H
                                    169 	.globl _T3L
                                    170 	.globl _T3H
                                    171 	.globl _T4L
                                    172 	.globl _T4H
                                    173 	.globl _T4T3M
                                    174 	.globl _TH1
                                    175 	.globl _TH0
                                    176 	.globl _TL1
                                    177 	.globl _TL0
                                    178 	.globl _TMOD
                                    179 	.globl _TCON
                                    180 	.globl _INT_CLKO
                                    181 	.globl _IP2
                                    182 	.globl _IE2
                                    183 	.globl _IP
                                    184 	.globl _IE
                                    185 	.globl _P_SW2
                                    186 	.globl _P1ASF
                                    187 	.globl _BUS_SPEED
                                    188 	.globl _CLK_DIV
                                    189 	.globl _P_SW1
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _PCON
                                    193 	.globl _P7M1
                                    194 	.globl _P7M0
                                    195 	.globl _P6M1
                                    196 	.globl _P6M0
                                    197 	.globl _P5M1
                                    198 	.globl _P5M0
                                    199 	.globl _P4M1
                                    200 	.globl _P4M0
                                    201 	.globl _P3M1
                                    202 	.globl _P3M0
                                    203 	.globl _P2M1
                                    204 	.globl _P2M0
                                    205 	.globl _P1M1
                                    206 	.globl _P1M0
                                    207 	.globl _P0M1
                                    208 	.globl _P0M0
                                    209 	.globl _P7
                                    210 	.globl _P6
                                    211 	.globl _P5
                                    212 	.globl _P4
                                    213 	.globl _P3
                                    214 	.globl _P2
                                    215 	.globl _P1
                                    216 	.globl _P0
                                    217 	.globl _DPH
                                    218 	.globl _DPL
                                    219 	.globl _SP
                                    220 	.globl _PSW
                                    221 	.globl _B
                                    222 	.globl _ACC
                                    223 	.globl _LCD_guigio_PARM_6
                                    224 	.globl _LCD_guigio_PARM_5
                                    225 	.globl _LCD_guigio_PARM_4
                                    226 	.globl _LCD_guigio_PARM_3
                                    227 	.globl _LCD_guigio_PARM_2
                                    228 	.globl _LCD_chop_PARM_2
                                    229 	.globl _LCD_blinkXY_PARM_2
                                    230 	.globl _delay_us
                                    231 	.globl _delay_ms
                                    232 	.globl _LCD_blinkXY
                                    233 	.globl _LCD_chop
                                    234 	.globl _LCD_guidulieu
                                    235 	.globl _LCD_guilenh
                                    236 	.globl _LCD_noblink
                                    237 	.globl _LCD_xoa
                                    238 	.globl _LCD_guichuoi
                                    239 	.globl _LCD_Init
                                    240 	.globl _LCD_guigio
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           0000E0   246 _ACC	=	0x00e0
                           0000F0   247 _B	=	0x00f0
                           0000D0   248 _PSW	=	0x00d0
                           000081   249 _SP	=	0x0081
                           000082   250 _DPL	=	0x0082
                           000083   251 _DPH	=	0x0083
                           000080   252 _P0	=	0x0080
                           000090   253 _P1	=	0x0090
                           0000A0   254 _P2	=	0x00a0
                           0000B0   255 _P3	=	0x00b0
                           0000C0   256 _P4	=	0x00c0
                           0000C8   257 _P5	=	0x00c8
                           0000E8   258 _P6	=	0x00e8
                           0000F8   259 _P7	=	0x00f8
                           000094   260 _P0M0	=	0x0094
                           000093   261 _P0M1	=	0x0093
                           000092   262 _P1M0	=	0x0092
                           000091   263 _P1M1	=	0x0091
                           000096   264 _P2M0	=	0x0096
                           000095   265 _P2M1	=	0x0095
                           0000B2   266 _P3M0	=	0x00b2
                           0000B1   267 _P3M1	=	0x00b1
                           0000B4   268 _P4M0	=	0x00b4
                           0000B3   269 _P4M1	=	0x00b3
                           0000CA   270 _P5M0	=	0x00ca
                           0000C9   271 _P5M1	=	0x00c9
                           0000CC   272 _P6M0	=	0x00cc
                           0000CB   273 _P6M1	=	0x00cb
                           0000E2   274 _P7M0	=	0x00e2
                           0000E1   275 _P7M1	=	0x00e1
                           000087   276 _PCON	=	0x0087
                           00008E   277 _AUXR	=	0x008e
                           0000A2   278 _AUXR1	=	0x00a2
                           0000A2   279 _P_SW1	=	0x00a2
                           000097   280 _CLK_DIV	=	0x0097
                           0000A1   281 _BUS_SPEED	=	0x00a1
                           00009D   282 _P1ASF	=	0x009d
                           0000BA   283 _P_SW2	=	0x00ba
                           0000A8   284 _IE	=	0x00a8
                           0000B8   285 _IP	=	0x00b8
                           0000AF   286 _IE2	=	0x00af
                           0000B5   287 _IP2	=	0x00b5
                           00008F   288 _INT_CLKO	=	0x008f
                           000088   289 _TCON	=	0x0088
                           000089   290 _TMOD	=	0x0089
                           00008A   291 _TL0	=	0x008a
                           00008B   292 _TL1	=	0x008b
                           00008C   293 _TH0	=	0x008c
                           00008D   294 _TH1	=	0x008d
                           0000D1   295 _T4T3M	=	0x00d1
                           0000D2   296 _T4H	=	0x00d2
                           0000D3   297 _T4L	=	0x00d3
                           0000D4   298 _T3H	=	0x00d4
                           0000D5   299 _T3L	=	0x00d5
                           0000D6   300 _T2H	=	0x00d6
                           0000D7   301 _T2L	=	0x00d7
                           0000AA   302 _WKTCL	=	0x00aa
                           0000AB   303 _WKTCH	=	0x00ab
                           0000C1   304 _WDT_CONTR	=	0x00c1
                           000098   305 _SCON	=	0x0098
                           000099   306 _SBUF	=	0x0099
                           00009A   307 _S2CON	=	0x009a
                           00009B   308 _S2BUF	=	0x009b
                           0000AC   309 _S3CON	=	0x00ac
                           0000AD   310 _S3BUF	=	0x00ad
                           000084   311 _S4CON	=	0x0084
                           000085   312 _S4BUF	=	0x0085
                           0000A9   313 _SADDR	=	0x00a9
                           0000B9   314 _SADEN	=	0x00b9
                           0000BC   315 _ADC_CONTR	=	0x00bc
                           0000BD   316 _ADC_RES	=	0x00bd
                           0000BE   317 _ADC_RESL	=	0x00be
                           0000CD   318 _SPSTAT	=	0x00cd
                           0000CE   319 _SPCTL	=	0x00ce
                           0000CF   320 _SPDAT	=	0x00cf
                           0000C2   321 _IAP_DATA	=	0x00c2
                           0000C3   322 _IAP_ADDRH	=	0x00c3
                           0000C4   323 _IAP_ADDRL	=	0x00c4
                           0000C5   324 _IAP_CMD	=	0x00c5
                           0000C6   325 _IAP_TRIG	=	0x00c6
                           0000C7   326 _IAP_CONTR	=	0x00c7
                           0000D8   327 _CCON	=	0x00d8
                           0000D9   328 _CMOD	=	0x00d9
                           0000E9   329 _CL	=	0x00e9
                           0000F9   330 _CH	=	0x00f9
                           0000DA   331 _CCAPM0	=	0x00da
                           0000DB   332 _CCAPM1	=	0x00db
                           0000DC   333 _CCAPM2	=	0x00dc
                           0000EA   334 _CCAP0L	=	0x00ea
                           0000EB   335 _CCAP1L	=	0x00eb
                           0000EC   336 _CCAP2L	=	0x00ec
                           0000F2   337 _PCA_PWM0	=	0x00f2
                           0000F3   338 _PCA_PWM1	=	0x00f3
                           0000F4   339 _PCA_PWM2	=	0x00f4
                           0000FA   340 _CCAP0H	=	0x00fa
                           0000FB   341 _CCAP1H	=	0x00fb
                           0000FC   342 _CCAP2H	=	0x00fc
                           0000E6   343 _CMPCR1	=	0x00e6
                           0000E7   344 _CMPCR2	=	0x00e7
                           0000F1   345 _PWMCFG	=	0x00f1
                           0000F5   346 _PWMCR	=	0x00f5
                           0000F6   347 _PWMIF	=	0x00f6
                           0000F7   348 _PWMFDCR	=	0x00f7
                                    349 ;--------------------------------------------------------
                                    350 ; special function bits
                                    351 ;--------------------------------------------------------
                                    352 	.area RSEG    (ABS,DATA)
      000000                        353 	.org 0x0000
                           0000D7   354 _CY	=	0x00d7
                           0000D6   355 _AC	=	0x00d6
                           0000D5   356 _F0	=	0x00d5
                           0000D4   357 _RS1	=	0x00d4
                           0000D3   358 _RS0	=	0x00d3
                           0000D2   359 _OV	=	0x00d2
                           0000D1   360 _F1	=	0x00d1
                           0000D0   361 _P	=	0x00d0
                           000080   362 _P00	=	0x0080
                           000081   363 _P01	=	0x0081
                           000082   364 _P02	=	0x0082
                           000083   365 _P03	=	0x0083
                           000084   366 _P04	=	0x0084
                           000085   367 _P05	=	0x0085
                           000086   368 _P06	=	0x0086
                           000087   369 _P07	=	0x0087
                           000090   370 _P10	=	0x0090
                           000091   371 _P11	=	0x0091
                           000092   372 _P12	=	0x0092
                           000093   373 _P13	=	0x0093
                           000094   374 _P14	=	0x0094
                           000095   375 _P15	=	0x0095
                           000096   376 _P16	=	0x0096
                           000097   377 _P17	=	0x0097
                           0000A0   378 _P20	=	0x00a0
                           0000A1   379 _P21	=	0x00a1
                           0000A2   380 _P22	=	0x00a2
                           0000A3   381 _P23	=	0x00a3
                           0000A4   382 _P24	=	0x00a4
                           0000A5   383 _P25	=	0x00a5
                           0000A6   384 _P26	=	0x00a6
                           0000A7   385 _P27	=	0x00a7
                           0000B0   386 _P30	=	0x00b0
                           0000B1   387 _P31	=	0x00b1
                           0000B2   388 _P32	=	0x00b2
                           0000B3   389 _P33	=	0x00b3
                           0000B4   390 _P34	=	0x00b4
                           0000B5   391 _P35	=	0x00b5
                           0000B6   392 _P36	=	0x00b6
                           0000B7   393 _P37	=	0x00b7
                           0000C0   394 _P40	=	0x00c0
                           0000C1   395 _P41	=	0x00c1
                           0000C2   396 _P42	=	0x00c2
                           0000C3   397 _P43	=	0x00c3
                           0000C4   398 _P44	=	0x00c4
                           0000C5   399 _P45	=	0x00c5
                           0000C6   400 _P46	=	0x00c6
                           0000C7   401 _P47	=	0x00c7
                           0000C8   402 _P50	=	0x00c8
                           0000C9   403 _P51	=	0x00c9
                           0000CA   404 _P52	=	0x00ca
                           0000CB   405 _P53	=	0x00cb
                           0000CC   406 _P54	=	0x00cc
                           0000CD   407 _P55	=	0x00cd
                           0000CE   408 _P56	=	0x00ce
                           0000CF   409 _P57	=	0x00cf
                           0000E8   410 _P60	=	0x00e8
                           0000E9   411 _P61	=	0x00e9
                           0000EA   412 _P62	=	0x00ea
                           0000EB   413 _P63	=	0x00eb
                           0000EC   414 _P64	=	0x00ec
                           0000ED   415 _P65	=	0x00ed
                           0000EE   416 _P66	=	0x00ee
                           0000EF   417 _P67	=	0x00ef
                           0000F8   418 _P70	=	0x00f8
                           0000F9   419 _P71	=	0x00f9
                           0000FA   420 _P72	=	0x00fa
                           0000FB   421 _P73	=	0x00fb
                           0000FC   422 _P74	=	0x00fc
                           0000FD   423 _P75	=	0x00fd
                           0000FE   424 _P76	=	0x00fe
                           0000FF   425 _P77	=	0x00ff
                           0000AF   426 _EA	=	0x00af
                           0000AE   427 _ELVD	=	0x00ae
                           0000AD   428 _EADC	=	0x00ad
                           0000AC   429 _ES	=	0x00ac
                           0000AB   430 _ET1	=	0x00ab
                           0000AA   431 _EX1	=	0x00aa
                           0000A9   432 _ET0	=	0x00a9
                           0000A8   433 _EX0	=	0x00a8
                           0000BF   434 _PPCA	=	0x00bf
                           0000BE   435 _PLVD	=	0x00be
                           0000BD   436 _PADC	=	0x00bd
                           0000BC   437 _PS	=	0x00bc
                           0000BB   438 _PT1	=	0x00bb
                           0000BA   439 _PX1	=	0x00ba
                           0000B9   440 _PT0	=	0x00b9
                           0000B8   441 _PX0	=	0x00b8
                           00008F   442 _TF1	=	0x008f
                           00008E   443 _TR1	=	0x008e
                           00008D   444 _TF0	=	0x008d
                           00008C   445 _TR0	=	0x008c
                           00008B   446 _IE1	=	0x008b
                           00008A   447 _IT1	=	0x008a
                           000089   448 _IE0	=	0x0089
                           000088   449 _IT0	=	0x0088
                           00009F   450 _SM0	=	0x009f
                           00009E   451 _SM1	=	0x009e
                           00009D   452 _SM2	=	0x009d
                           00009C   453 _REN	=	0x009c
                           00009B   454 _TB8	=	0x009b
                           00009A   455 _RB8	=	0x009a
                           000099   456 _TI	=	0x0099
                           000098   457 _RI	=	0x0098
                           0000DF   458 _CF	=	0x00df
                           0000DE   459 _CR	=	0x00de
                           0000DA   460 _CCF2	=	0x00da
                           0000D9   461 _CCF1	=	0x00d9
                           0000D8   462 _CCF0	=	0x00d8
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable register banks
                                    465 ;--------------------------------------------------------
                                    466 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        467 	.ds 8
                                    468 ;--------------------------------------------------------
                                    469 ; internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area DSEG    (DATA)
      00003F                        472 _LCD_blinkXY_PARM_2:
      00003F                        473 	.ds 1
      000040                        474 _LCD_chop_PARM_2:
      000040                        475 	.ds 3
      000043                        476 _LCD_guigio_PARM_2:
      000043                        477 	.ds 3
      000046                        478 _LCD_guigio_PARM_3:
      000046                        479 	.ds 1
      000047                        480 _LCD_guigio_PARM_4:
      000047                        481 	.ds 1
      000048                        482 _LCD_guigio_PARM_5:
      000048                        483 	.ds 1
                                    484 ;--------------------------------------------------------
                                    485 ; overlayable items in internal ram
                                    486 ;--------------------------------------------------------
                                    487 	.area	OSEG    (OVR,DATA)
                                    488 ;--------------------------------------------------------
                                    489 ; indirectly addressable internal ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area ISEG    (DATA)
                                    492 ;--------------------------------------------------------
                                    493 ; absolute internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area IABS    (ABS,DATA)
                                    496 	.area IABS    (ABS,DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; bit data
                                    499 ;--------------------------------------------------------
                                    500 	.area BSEG    (BIT)
      000001                        501 _LCD_guigio_PARM_6:
      000001                        502 	.ds 1
                                    503 ;--------------------------------------------------------
                                    504 ; paged external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area PSEG    (PAG,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XSEG    (XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; absolute external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XABS    (ABS,XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; external initialized ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XISEG   (XDATA)
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT0 (CODE)
                                    521 	.area GSINIT1 (CODE)
                                    522 	.area GSINIT2 (CODE)
                                    523 	.area GSINIT3 (CODE)
                                    524 	.area GSINIT4 (CODE)
                                    525 	.area GSINIT5 (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area CSEG    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; global & static initialisations
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT  (CODE)
                                    534 	.area GSFINAL (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 ;--------------------------------------------------------
                                    537 ; Home
                                    538 ;--------------------------------------------------------
                                    539 	.area HOME    (CODE)
                                    540 	.area HOME    (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; code
                                    543 ;--------------------------------------------------------
                                    544 	.area CSEG    (CODE)
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'delay_us'
                                    547 ;------------------------------------------------------------
                                    548 ;t                         Allocated to registers r6 r7 
                                    549 ;i                         Allocated to registers r4 r5 
                                    550 ;------------------------------------------------------------
                                    551 ;	src\lcd.c:4: void delay_us(unsigned int t)
                                    552 ;	-----------------------------------------
                                    553 ;	 function delay_us
                                    554 ;	-----------------------------------------
      0004A1                        555 _delay_us:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      0004A1 AE 82            [24]  564 	mov	r6,dpl
      0004A3 AF 83            [24]  565 	mov	r7,dph
                                    566 ;	src\lcd.c:7: for(i=0;i<t;i++){WATCHDOG;};
      0004A5 7C 00            [12]  567 	mov	r4,#0x00
      0004A7 7D 00            [12]  568 	mov	r5,#0x00
      0004A9                        569 00103$:
      0004A9 C3               [12]  570 	clr	c
      0004AA EC               [12]  571 	mov	a,r4
      0004AB 9E               [12]  572 	subb	a,r6
      0004AC ED               [12]  573 	mov	a,r5
      0004AD 9F               [12]  574 	subb	a,r7
      0004AE 50 0A            [24]  575 	jnc	00105$
      0004B0 43 C1 10         [24]  576 	orl	_WDT_CONTR,#0x10
      0004B3 0C               [12]  577 	inc	r4
      0004B4 BC 00 F2         [24]  578 	cjne	r4,#0x00,00103$
      0004B7 0D               [12]  579 	inc	r5
      0004B8 80 EF            [24]  580 	sjmp	00103$
      0004BA                        581 00105$:
                                    582 ;	src\lcd.c:8: }
      0004BA 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'delay_ms'
                                    586 ;------------------------------------------------------------
                                    587 ;t                         Allocated to registers r6 r7 
                                    588 ;i                         Allocated to registers r4 r5 
                                    589 ;------------------------------------------------------------
                                    590 ;	src\lcd.c:10: void delay_ms(unsigned int t)
                                    591 ;	-----------------------------------------
                                    592 ;	 function delay_ms
                                    593 ;	-----------------------------------------
      0004BB                        594 _delay_ms:
      0004BB AE 82            [24]  595 	mov	r6,dpl
      0004BD AF 83            [24]  596 	mov	r7,dph
                                    597 ;	src\lcd.c:13: for (i = 0; i < t; i++)delay_us(1000);
      0004BF 7C 00            [12]  598 	mov	r4,#0x00
      0004C1 7D 00            [12]  599 	mov	r5,#0x00
      0004C3                        600 00103$:
      0004C3 C3               [12]  601 	clr	c
      0004C4 EC               [12]  602 	mov	a,r4
      0004C5 9E               [12]  603 	subb	a,r6
      0004C6 ED               [12]  604 	mov	a,r5
      0004C7 9F               [12]  605 	subb	a,r7
      0004C8 50 1D            [24]  606 	jnc	00105$
      0004CA 90 03 E8         [24]  607 	mov	dptr,#0x03e8
      0004CD C0 07            [24]  608 	push	ar7
      0004CF C0 06            [24]  609 	push	ar6
      0004D1 C0 05            [24]  610 	push	ar5
      0004D3 C0 04            [24]  611 	push	ar4
      0004D5 12 04 A1         [24]  612 	lcall	_delay_us
      0004D8 D0 04            [24]  613 	pop	ar4
      0004DA D0 05            [24]  614 	pop	ar5
      0004DC D0 06            [24]  615 	pop	ar6
      0004DE D0 07            [24]  616 	pop	ar7
      0004E0 0C               [12]  617 	inc	r4
      0004E1 BC 00 DF         [24]  618 	cjne	r4,#0x00,00103$
      0004E4 0D               [12]  619 	inc	r5
      0004E5 80 DC            [24]  620 	sjmp	00103$
      0004E7                        621 00105$:
                                    622 ;	src\lcd.c:15: }
      0004E7 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'LCD_blinkXY'
                                    626 ;------------------------------------------------------------
                                    627 ;cot                       Allocated with name '_LCD_blinkXY_PARM_2'
                                    628 ;hang                      Allocated to registers r7 
                                    629 ;------------------------------------------------------------
                                    630 ;	src\lcd.c:17: void LCD_blinkXY(u8 hang, u8 cot){
                                    631 ;	-----------------------------------------
                                    632 ;	 function LCD_blinkXY
                                    633 ;	-----------------------------------------
      0004E8                        634 _LCD_blinkXY:
      0004E8 AF 82            [24]  635 	mov	r7,dpl
                                    636 ;	src\lcd.c:18: LCD_guilenh(hang|cot);
      0004EA E5 3F            [12]  637 	mov	a,_LCD_blinkXY_PARM_2
      0004EC 4F               [12]  638 	orl	a,r7
      0004ED F5 82            [12]  639 	mov	dpl,a
      0004EF 12 05 71         [24]  640 	lcall	_LCD_guilenh
                                    641 ;	src\lcd.c:19: LCD_guilenh(0x0d);
      0004F2 75 82 0D         [24]  642 	mov	dpl,#0x0d
                                    643 ;	src\lcd.c:21: }
      0004F5 02 05 71         [24]  644 	ljmp	_LCD_guilenh
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'LCD_chop'
                                    647 ;------------------------------------------------------------
                                    648 ;vanban                    Allocated with name '_LCD_chop_PARM_2'
                                    649 ;hang                      Allocated to registers r7 
                                    650 ;------------------------------------------------------------
                                    651 ;	src\lcd.c:22: void LCD_chop(u8 hang,u8 *vanban){
                                    652 ;	-----------------------------------------
                                    653 ;	 function LCD_chop
                                    654 ;	-----------------------------------------
      0004F8                        655 _LCD_chop:
      0004F8 AF 82            [24]  656 	mov	r7,dpl
                                    657 ;	src\lcd.c:23: if(chop){
      0004FA 30 2D 11         [24]  658 	jnb	_chop,00102$
                                    659 ;	src\lcd.c:24: LCD_guilenh(hang);
      0004FD 8F 82            [24]  660 	mov	dpl,r7
      0004FF 12 05 71         [24]  661 	lcall	_LCD_guilenh
                                    662 ;	src\lcd.c:25: LCD_guichuoi(vanban);
      000502 85 40 82         [24]  663 	mov	dpl,_LCD_chop_PARM_2
      000505 85 41 83         [24]  664 	mov	dph,(_LCD_chop_PARM_2 + 1)
      000508 85 42 F0         [24]  665 	mov	b,(_LCD_chop_PARM_2 + 2)
      00050B 02 05 F1         [24]  666 	ljmp	_LCD_guichuoi
      00050E                        667 00102$:
                                    668 ;	src\lcd.c:26: }else LCD_xoa(hang);
      00050E 8F 82            [24]  669 	mov	dpl,r7
                                    670 ;	src\lcd.c:27: }
      000510 02 05 D2         [24]  671 	ljmp	_LCD_xoa
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'LCD_guidulieu'
                                    674 ;------------------------------------------------------------
                                    675 ;dulieu                    Allocated to registers r7 
                                    676 ;------------------------------------------------------------
                                    677 ;	src\lcd.c:29: void LCD_guidulieu(u8 dulieu){
                                    678 ;	-----------------------------------------
                                    679 ;	 function LCD_guidulieu
                                    680 ;	-----------------------------------------
      000513                        681 _LCD_guidulieu:
      000513 AF 82            [24]  682 	mov	r7,dpl
                                    683 ;	src\lcd.c:31: LCD_rs=1;
                                    684 ;	assignBit
      000515 D2 85            [12]  685 	setb	_P05
                                    686 ;	src\lcd.c:32: LCD_D4=(dulieu>>4)&1;
      000517 EF               [12]  687 	mov	a,r7
      000518 C4               [12]  688 	swap	a
      000519 54 01            [12]  689 	anl	a,#0x01
                                    690 ;	assignBit
      00051B 24 FF            [12]  691 	add	a,#0xff
      00051D 92 83            [24]  692 	mov	_P03,c
                                    693 ;	src\lcd.c:33: LCD_D5=(dulieu>>5)&1;
      00051F EF               [12]  694 	mov	a,r7
      000520 A2 E5            [12]  695 	mov	c,acc[5]
      000522 E4               [12]  696 	clr	a
      000523 33               [12]  697 	rlc	a
                                    698 ;	assignBit
      000524 24 FF            [12]  699 	add	a,#0xff
      000526 92 82            [24]  700 	mov	_P02,c
                                    701 ;	src\lcd.c:34: LCD_D6=(dulieu>>6)&1;
      000528 EF               [12]  702 	mov	a,r7
      000529 23               [12]  703 	rl	a
      00052A 23               [12]  704 	rl	a
      00052B 54 01            [12]  705 	anl	a,#0x01
                                    706 ;	assignBit
      00052D 24 FF            [12]  707 	add	a,#0xff
      00052F 92 81            [24]  708 	mov	_P01,c
                                    709 ;	src\lcd.c:35: LCD_D7=(dulieu>>7)&1;
      000531 EF               [12]  710 	mov	a,r7
      000532 23               [12]  711 	rl	a
      000533 54 01            [12]  712 	anl	a,#0x01
                                    713 ;	assignBit
      000535 FE               [12]  714 	mov	r6,a
      000536 24 FF            [12]  715 	add	a,#0xff
      000538 92 80            [24]  716 	mov	_P00,c
                                    717 ;	src\lcd.c:36: LCD_en =1;
                                    718 ;	assignBit
      00053A D2 84            [12]  719 	setb	_P04
                                    720 ;	src\lcd.c:37: _nop_();
      00053C 00               [12]  721 	NOP	
                                    722 ;	src\lcd.c:38: LCD_en=0;
                                    723 ;	assignBit
      00053D C2 84            [12]  724 	clr	_P04
                                    725 ;	src\lcd.c:39: _nop_();
      00053F 00               [12]  726 	NOP	
                                    727 ;	src\lcd.c:40: LCD_D4=dulieu 	  &1;
      000540 EF               [12]  728 	mov	a,r7
      000541 54 01            [12]  729 	anl	a,#0x01
                                    730 ;	assignBit
      000543 24 FF            [12]  731 	add	a,#0xff
      000545 92 83            [24]  732 	mov	_P03,c
                                    733 ;	src\lcd.c:41: LCD_D5=(dulieu>>1)&1;
      000547 EF               [12]  734 	mov	a,r7
      000548 03               [12]  735 	rr	a
      000549 54 01            [12]  736 	anl	a,#0x01
                                    737 ;	assignBit
      00054B 24 FF            [12]  738 	add	a,#0xff
      00054D 92 82            [24]  739 	mov	_P02,c
                                    740 ;	src\lcd.c:42: LCD_D6=(dulieu>>2)&1;
      00054F EF               [12]  741 	mov	a,r7
      000550 03               [12]  742 	rr	a
      000551 03               [12]  743 	rr	a
      000552 54 01            [12]  744 	anl	a,#0x01
                                    745 ;	assignBit
      000554 FE               [12]  746 	mov	r6,a
      000555 24 FF            [12]  747 	add	a,#0xff
      000557 92 81            [24]  748 	mov	_P01,c
                                    749 ;	src\lcd.c:43: LCD_D7=(dulieu>>3)&1;
      000559 EF               [12]  750 	mov	a,r7
      00055A A2 E3            [12]  751 	mov	c,acc[3]
      00055C E4               [12]  752 	clr	a
      00055D 33               [12]  753 	rlc	a
                                    754 ;	assignBit
      00055E FF               [12]  755 	mov	r7,a
      00055F 24 FF            [12]  756 	add	a,#0xff
      000561 92 80            [24]  757 	mov	_P00,c
                                    758 ;	src\lcd.c:44: LCD_en =1;
                                    759 ;	assignBit
      000563 D2 84            [12]  760 	setb	_P04
                                    761 ;	src\lcd.c:45: _nop_();
      000565 00               [12]  762 	NOP	
                                    763 ;	src\lcd.c:46: LCD_en=0;
                                    764 ;	assignBit
      000566 C2 84            [12]  765 	clr	_P04
                                    766 ;	src\lcd.c:47: delay_us(100);
      000568 90 00 64         [24]  767 	mov	dptr,#0x0064
      00056B 12 04 A1         [24]  768 	lcall	_delay_us
                                    769 ;	src\lcd.c:48: LCD_rs=0;
                                    770 ;	assignBit
      00056E C2 85            [12]  771 	clr	_P05
                                    772 ;	src\lcd.c:49: }
      000570 22               [24]  773 	ret
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'LCD_guilenh'
                                    776 ;------------------------------------------------------------
                                    777 ;lenh                      Allocated to registers r7 
                                    778 ;------------------------------------------------------------
                                    779 ;	src\lcd.c:51: void LCD_guilenh(u8 lenh){
                                    780 ;	-----------------------------------------
                                    781 ;	 function LCD_guilenh
                                    782 ;	-----------------------------------------
      000571                        783 _LCD_guilenh:
      000571 AF 82            [24]  784 	mov	r7,dpl
                                    785 ;	src\lcd.c:53: LCD_rs=0;
                                    786 ;	assignBit
      000573 C2 85            [12]  787 	clr	_P05
                                    788 ;	src\lcd.c:54: LCD_D4=(lenh>>4)&1;
      000575 EF               [12]  789 	mov	a,r7
      000576 C4               [12]  790 	swap	a
      000577 54 01            [12]  791 	anl	a,#0x01
                                    792 ;	assignBit
      000579 24 FF            [12]  793 	add	a,#0xff
      00057B 92 83            [24]  794 	mov	_P03,c
                                    795 ;	src\lcd.c:55: LCD_D5=(lenh>>5)&1;
      00057D EF               [12]  796 	mov	a,r7
      00057E A2 E5            [12]  797 	mov	c,acc[5]
      000580 E4               [12]  798 	clr	a
      000581 33               [12]  799 	rlc	a
                                    800 ;	assignBit
      000582 24 FF            [12]  801 	add	a,#0xff
      000584 92 82            [24]  802 	mov	_P02,c
                                    803 ;	src\lcd.c:56: LCD_D6=(lenh>>6)&1;
      000586 EF               [12]  804 	mov	a,r7
      000587 23               [12]  805 	rl	a
      000588 23               [12]  806 	rl	a
      000589 54 01            [12]  807 	anl	a,#0x01
                                    808 ;	assignBit
      00058B 24 FF            [12]  809 	add	a,#0xff
      00058D 92 81            [24]  810 	mov	_P01,c
                                    811 ;	src\lcd.c:57: LCD_D7=(lenh>>7)&1;
      00058F EF               [12]  812 	mov	a,r7
      000590 23               [12]  813 	rl	a
      000591 54 01            [12]  814 	anl	a,#0x01
                                    815 ;	assignBit
      000593 FE               [12]  816 	mov	r6,a
      000594 24 FF            [12]  817 	add	a,#0xff
      000596 92 80            [24]  818 	mov	_P00,c
                                    819 ;	src\lcd.c:58: LCD_en =1;
                                    820 ;	assignBit
      000598 D2 84            [12]  821 	setb	_P04
                                    822 ;	src\lcd.c:59: _nop_();
      00059A 00               [12]  823 	NOP	
                                    824 ;	src\lcd.c:60: LCD_en=0;
                                    825 ;	assignBit
      00059B C2 84            [12]  826 	clr	_P04
                                    827 ;	src\lcd.c:61: _nop_();
      00059D 00               [12]  828 	NOP	
                                    829 ;	src\lcd.c:62: LCD_D4=lenh 	  &1;
      00059E EF               [12]  830 	mov	a,r7
      00059F 54 01            [12]  831 	anl	a,#0x01
                                    832 ;	assignBit
      0005A1 24 FF            [12]  833 	add	a,#0xff
      0005A3 92 83            [24]  834 	mov	_P03,c
                                    835 ;	src\lcd.c:63: LCD_D5=(lenh>>1)&1;
      0005A5 EF               [12]  836 	mov	a,r7
      0005A6 03               [12]  837 	rr	a
      0005A7 54 01            [12]  838 	anl	a,#0x01
                                    839 ;	assignBit
      0005A9 24 FF            [12]  840 	add	a,#0xff
      0005AB 92 82            [24]  841 	mov	_P02,c
                                    842 ;	src\lcd.c:64: LCD_D6=(lenh>>2)&1;
      0005AD EF               [12]  843 	mov	a,r7
      0005AE 03               [12]  844 	rr	a
      0005AF 03               [12]  845 	rr	a
      0005B0 54 01            [12]  846 	anl	a,#0x01
                                    847 ;	assignBit
      0005B2 FE               [12]  848 	mov	r6,a
      0005B3 24 FF            [12]  849 	add	a,#0xff
      0005B5 92 81            [24]  850 	mov	_P01,c
                                    851 ;	src\lcd.c:65: LCD_D7=(lenh>>3)&1;
      0005B7 EF               [12]  852 	mov	a,r7
      0005B8 A2 E3            [12]  853 	mov	c,acc[3]
      0005BA E4               [12]  854 	clr	a
      0005BB 33               [12]  855 	rlc	a
                                    856 ;	assignBit
      0005BC FF               [12]  857 	mov	r7,a
      0005BD 24 FF            [12]  858 	add	a,#0xff
      0005BF 92 80            [24]  859 	mov	_P00,c
                                    860 ;	src\lcd.c:66: LCD_en =1;
                                    861 ;	assignBit
      0005C1 D2 84            [12]  862 	setb	_P04
                                    863 ;	src\lcd.c:67: _nop_();
      0005C3 00               [12]  864 	NOP	
                                    865 ;	src\lcd.c:68: LCD_en=0;
                                    866 ;	assignBit
      0005C4 C2 84            [12]  867 	clr	_P04
                                    868 ;	src\lcd.c:69: delay_us(100);
      0005C6 90 00 64         [24]  869 	mov	dptr,#0x0064
                                    870 ;	src\lcd.c:70: }
      0005C9 02 04 A1         [24]  871 	ljmp	_delay_us
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'LCD_noblink'
                                    874 ;------------------------------------------------------------
                                    875 ;	src\lcd.c:72: void LCD_noblink(){
                                    876 ;	-----------------------------------------
                                    877 ;	 function LCD_noblink
                                    878 ;	-----------------------------------------
      0005CC                        879 _LCD_noblink:
                                    880 ;	src\lcd.c:73: LCD_guilenh(0x0c);
      0005CC 75 82 0C         [24]  881 	mov	dpl,#0x0c
                                    882 ;	src\lcd.c:74: }
      0005CF 02 05 71         [24]  883 	ljmp	_LCD_guilenh
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'LCD_xoa'
                                    886 ;------------------------------------------------------------
                                    887 ;hang                      Allocated to registers r7 
                                    888 ;------------------------------------------------------------
                                    889 ;	src\lcd.c:76: void LCD_xoa(u8 hang){
                                    890 ;	-----------------------------------------
                                    891 ;	 function LCD_xoa
                                    892 ;	-----------------------------------------
      0005D2                        893 _LCD_xoa:
                                    894 ;	src\lcd.c:77: if(hang){
      0005D2 E5 82            [12]  895 	mov	a,dpl
      0005D4 FF               [12]  896 	mov	r7,a
      0005D5 60 0E            [24]  897 	jz	00102$
                                    898 ;	src\lcd.c:78: LCD_guilenh(hang);
      0005D7 8F 82            [24]  899 	mov	dpl,r7
      0005D9 12 05 71         [24]  900 	lcall	_LCD_guilenh
                                    901 ;	src\lcd.c:79: LCD_guichuoi("                ");
      0005DC 90 84 D8         [24]  902 	mov	dptr,#___str_0
      0005DF 75 F0 80         [24]  903 	mov	b,#0x80
      0005E2 02 05 F1         [24]  904 	ljmp	_LCD_guichuoi
      0005E5                        905 00102$:
                                    906 ;	src\lcd.c:81: LCD_guilenh(0x01);
      0005E5 75 82 01         [24]  907 	mov	dpl,#0x01
      0005E8 12 05 71         [24]  908 	lcall	_LCD_guilenh
                                    909 ;	src\lcd.c:82: delay_us(1600);
      0005EB 90 06 40         [24]  910 	mov	dptr,#0x0640
                                    911 ;	src\lcd.c:84: }
      0005EE 02 04 A1         [24]  912 	ljmp	_delay_us
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'LCD_guichuoi'
                                    915 ;------------------------------------------------------------
                                    916 ;vanban                    Allocated to registers r5 r6 r7 
                                    917 ;i                         Allocated to registers r4 
                                    918 ;------------------------------------------------------------
                                    919 ;	src\lcd.c:93: void LCD_guichuoi(u8 *vanban) __reentrant {
                                    920 ;	-----------------------------------------
                                    921 ;	 function LCD_guichuoi
                                    922 ;	-----------------------------------------
      0005F1                        923 _LCD_guichuoi:
      0005F1 AD 82            [24]  924 	mov	r5,dpl
      0005F3 AE 83            [24]  925 	mov	r6,dph
      0005F5 AF F0            [24]  926 	mov	r7,b
                                    927 ;	src\lcd.c:95: while (*vanban && i<16)
      0005F7 7C 00            [12]  928 	mov	r4,#0x00
      0005F9                        929 00107$:
      0005F9 8D 82            [24]  930 	mov	dpl,r5
      0005FB 8E 83            [24]  931 	mov	dph,r6
      0005FD 8F F0            [24]  932 	mov	b,r7
      0005FF 12 84 4A         [24]  933 	lcall	__gptrget
      000602 FB               [12]  934 	mov	r3,a
      000603 60 55            [24]  935 	jz	00110$
      000605 BC 10 00         [24]  936 	cjne	r4,#0x10,00138$
      000608                        937 00138$:
      000608 50 50            [24]  938 	jnc	00110$
                                    939 ;	src\lcd.c:96: if(*vanban<128 && *vanban>31 && ++i)LCD_guidulieu(*vanban++);
      00060A BB 80 00         [24]  940 	cjne	r3,#0x80,00140$
      00060D                        941 00140$:
      00060D 50 25            [24]  942 	jnc	00102$
      00060F EB               [12]  943 	mov	a,r3
      000610 24 E0            [12]  944 	add	a,#0xff - 0x1f
      000612 50 20            [24]  945 	jnc	00102$
      000614 0C               [12]  946 	inc	r4
      000615 EC               [12]  947 	mov	a,r4
      000616 60 1C            [24]  948 	jz	00102$
      000618 0D               [12]  949 	inc	r5
      000619 BD 00 01         [24]  950 	cjne	r5,#0x00,00144$
      00061C 0E               [12]  951 	inc	r6
      00061D                        952 00144$:
      00061D 8B 82            [24]  953 	mov	dpl,r3
      00061F C0 07            [24]  954 	push	ar7
      000621 C0 06            [24]  955 	push	ar6
      000623 C0 05            [24]  956 	push	ar5
      000625 C0 04            [24]  957 	push	ar4
      000627 12 05 13         [24]  958 	lcall	_LCD_guidulieu
      00062A D0 04            [24]  959 	pop	ar4
      00062C D0 05            [24]  960 	pop	ar5
      00062E D0 06            [24]  961 	pop	ar6
      000630 D0 07            [24]  962 	pop	ar7
      000632 80 C5            [24]  963 	sjmp	00107$
      000634                        964 00102$:
                                    965 ;	src\lcd.c:97: else LCD_guilenh(*vanban++);
      000634 8D 82            [24]  966 	mov	dpl,r5
      000636 8E 83            [24]  967 	mov	dph,r6
      000638 8F F0            [24]  968 	mov	b,r7
      00063A 12 84 4A         [24]  969 	lcall	__gptrget
      00063D FB               [12]  970 	mov	r3,a
      00063E A3               [24]  971 	inc	dptr
      00063F AD 82            [24]  972 	mov	r5,dpl
      000641 AE 83            [24]  973 	mov	r6,dph
      000643 8B 82            [24]  974 	mov	dpl,r3
      000645 C0 07            [24]  975 	push	ar7
      000647 C0 06            [24]  976 	push	ar6
      000649 C0 05            [24]  977 	push	ar5
      00064B C0 04            [24]  978 	push	ar4
      00064D 12 05 71         [24]  979 	lcall	_LCD_guilenh
      000650 D0 04            [24]  980 	pop	ar4
      000652 D0 05            [24]  981 	pop	ar5
      000654 D0 06            [24]  982 	pop	ar6
      000656 D0 07            [24]  983 	pop	ar7
      000658 80 9F            [24]  984 	sjmp	00107$
      00065A                        985 00110$:
                                    986 ;	src\lcd.c:98: }
      00065A 22               [24]  987 	ret
                                    988 ;------------------------------------------------------------
                                    989 ;Allocation info for local variables in function 'LCD_Init'
                                    990 ;------------------------------------------------------------
                                    991 ;	src\lcd.c:100: void LCD_Init(){
                                    992 ;	-----------------------------------------
                                    993 ;	 function LCD_Init
                                    994 ;	-----------------------------------------
      00065B                        995 _LCD_Init:
                                    996 ;	src\lcd.c:101: lcd_pw = 0;delay_us(15000);
                                    997 ;	assignBit
      00065B C2 86            [12]  998 	clr	_P06
      00065D 90 3A 98         [24]  999 	mov	dptr,#0x3a98
      000660 12 04 A1         [24] 1000 	lcall	_delay_us
                                   1001 ;	src\lcd.c:102: P0=0x1c;_nop_();
      000663 75 80 1C         [24] 1002 	mov	_P0,#0x1c
      000666 00               [12] 1003 	NOP	
                                   1004 ;	src\lcd.c:103: LCD_en=0;delay_us(4000);
                                   1005 ;	assignBit
      000667 C2 84            [12] 1006 	clr	_P04
      000669 90 0F A0         [24] 1007 	mov	dptr,#0x0fa0
      00066C 12 04 A1         [24] 1008 	lcall	_delay_us
                                   1009 ;	src\lcd.c:104: LCD_en=1;_nop_();
                                   1010 ;	assignBit
      00066F D2 84            [12] 1011 	setb	_P04
      000671 00               [12] 1012 	NOP	
                                   1013 ;	src\lcd.c:105: LCD_en=0;delay_us(160);
                                   1014 ;	assignBit
      000672 C2 84            [12] 1015 	clr	_P04
      000674 90 00 A0         [24] 1016 	mov	dptr,#0x00a0
      000677 12 04 A1         [24] 1017 	lcall	_delay_us
                                   1018 ;	src\lcd.c:106: LCD_en=1;_nop_();
                                   1019 ;	assignBit
      00067A D2 84            [12] 1020 	setb	_P04
      00067C 00               [12] 1021 	NOP	
                                   1022 ;	src\lcd.c:107: LCD_en=0;delay_us(160);
                                   1023 ;	assignBit
      00067D C2 84            [12] 1024 	clr	_P04
      00067F 90 00 A0         [24] 1025 	mov	dptr,#0x00a0
      000682 12 04 A1         [24] 1026 	lcall	_delay_us
                                   1027 ;	src\lcd.c:108: P0=0x14;_nop_();
      000685 75 80 14         [24] 1028 	mov	_P0,#0x14
      000688 00               [12] 1029 	NOP	
                                   1030 ;	src\lcd.c:109: LCD_en=0;delay_us(1000);
                                   1031 ;	assignBit
      000689 C2 84            [12] 1032 	clr	_P04
      00068B 90 03 E8         [24] 1033 	mov	dptr,#0x03e8
      00068E 12 04 A1         [24] 1034 	lcall	_delay_us
                                   1035 ;	src\lcd.c:110: LCD_en=1;_nop_();
                                   1036 ;	assignBit
      000691 D2 84            [12] 1037 	setb	_P04
      000693 00               [12] 1038 	NOP	
                                   1039 ;	src\lcd.c:111: LCD_en=0;_nop_();
                                   1040 ;	assignBit
      000694 C2 84            [12] 1041 	clr	_P04
      000696 00               [12] 1042 	NOP	
                                   1043 ;	src\lcd.c:112: P0=0x11;_nop_();
      000697 75 80 11         [24] 1044 	mov	_P0,#0x11
      00069A 00               [12] 1045 	NOP	
                                   1046 ;	src\lcd.c:113: LCD_en=0;delay_us(40);
                                   1047 ;	assignBit
      00069B C2 84            [12] 1048 	clr	_P04
      00069D 90 00 28         [24] 1049 	mov	dptr,#0x0028
      0006A0 12 04 A1         [24] 1050 	lcall	_delay_us
                                   1051 ;	src\lcd.c:114: P0=0x10;_nop_();
      0006A3 75 80 10         [24] 1052 	mov	_P0,#0x10
      0006A6 00               [12] 1053 	NOP	
                                   1054 ;	src\lcd.c:115: LCD_en=0;_nop_();
                                   1055 ;	assignBit
      0006A7 C2 84            [12] 1056 	clr	_P04
      0006A9 00               [12] 1057 	NOP	
                                   1058 ;	src\lcd.c:116: P0=0x13;_nop_();
      0006AA 75 80 13         [24] 1059 	mov	_P0,#0x13
      0006AD 00               [12] 1060 	NOP	
                                   1061 ;	src\lcd.c:117: LCD_en=0;delay_us(40);
                                   1062 ;	assignBit
      0006AE C2 84            [12] 1063 	clr	_P04
      0006B0 90 00 28         [24] 1064 	mov	dptr,#0x0028
      0006B3 12 04 A1         [24] 1065 	lcall	_delay_us
                                   1066 ;	src\lcd.c:118: P0=0x10;_nop_();
      0006B6 75 80 10         [24] 1067 	mov	_P0,#0x10
      0006B9 00               [12] 1068 	NOP	
                                   1069 ;	src\lcd.c:119: LCD_en=0;_nop_();
                                   1070 ;	assignBit
      0006BA C2 84            [12] 1071 	clr	_P04
      0006BC 00               [12] 1072 	NOP	
                                   1073 ;	src\lcd.c:120: P0=0x16;_nop_();
      0006BD 75 80 16         [24] 1074 	mov	_P0,#0x16
      0006C0 00               [12] 1075 	NOP	
                                   1076 ;	src\lcd.c:121: LCD_en=0;delay_us(40);
                                   1077 ;	assignBit
      0006C1 C2 84            [12] 1078 	clr	_P04
      0006C3 90 00 28         [24] 1079 	mov	dptr,#0x0028
      0006C6 12 04 A1         [24] 1080 	lcall	_delay_us
                                   1081 ;	src\lcd.c:122: P0=0x10;_nop_();
      0006C9 75 80 10         [24] 1082 	mov	_P0,#0x10
      0006CC 00               [12] 1083 	NOP	
                                   1084 ;	src\lcd.c:123: LCD_en=0;_nop_();
                                   1085 ;	assignBit
      0006CD C2 84            [12] 1086 	clr	_P04
      0006CF 00               [12] 1087 	NOP	
                                   1088 ;	src\lcd.c:124: P0=0x18;_nop_();
      0006D0 75 80 18         [24] 1089 	mov	_P0,#0x18
      0006D3 00               [12] 1090 	NOP	
                                   1091 ;	src\lcd.c:125: LCD_en=0;delay_us(1000);
                                   1092 ;	assignBit
      0006D4 C2 84            [12] 1093 	clr	_P04
      0006D6 90 03 E8         [24] 1094 	mov	dptr,#0x03e8
                                   1095 ;	src\lcd.c:127: }
      0006D9 02 04 A1         [24] 1096 	ljmp	_delay_us
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'LCD_guigio'
                                   1099 ;------------------------------------------------------------
                                   1100 ;chuoi                     Allocated with name '_LCD_guigio_PARM_2'
                                   1101 ;gio                       Allocated with name '_LCD_guigio_PARM_3'
                                   1102 ;phut                      Allocated with name '_LCD_guigio_PARM_4'
                                   1103 ;giay                      Allocated with name '_LCD_guigio_PARM_5'
                                   1104 ;vitri                     Allocated to registers r7 
                                   1105 ;------------------------------------------------------------
                                   1106 ;	src\lcd.c:129: void LCD_guigio(u8 vitri, u8 *chuoi, u8 gio, u8 phut, u8 giay,__bit haicham){
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function LCD_guigio
                                   1109 ;	-----------------------------------------
      0006DC                       1110 _LCD_guigio:
      0006DC AF 82            [24] 1111 	mov	r7,dpl
                                   1112 ;	src\lcd.c:131: if(giay>250){
      0006DE E5 48            [12] 1113 	mov	a,_LCD_guigio_PARM_5
      0006E0 24 05            [12] 1114 	add	a,#0xff - 0xfa
      0006E2 40 03            [24] 1115 	jc	00158$
      0006E4 02 07 91         [24] 1116 	ljmp	00108$
      0006E7                       1117 00158$:
                                   1118 ;	src\lcd.c:132: LCD_guilenh(vitri);
      0006E7 8F 82            [24] 1119 	mov	dpl,r7
      0006E9 12 05 71         [24] 1120 	lcall	_LCD_guilenh
                                   1121 ;	src\lcd.c:133: LCD_guichuoi(chuoi);
      0006EC 85 43 82         [24] 1122 	mov	dpl,_LCD_guigio_PARM_2
      0006EF 85 44 83         [24] 1123 	mov	dph,(_LCD_guigio_PARM_2 + 1)
      0006F2 85 45 F0         [24] 1124 	mov	b,(_LCD_guigio_PARM_2 + 2)
      0006F5 12 05 F1         [24] 1125 	lcall	_LCD_guichuoi
                                   1126 ;	src\lcd.c:134: LCD_guidulieu(gio<10?' ':(gio/10+'0'));
      0006F8 74 F6            [12] 1127 	mov	a,#0x100 - 0x0a
      0006FA 25 46            [12] 1128 	add	a,_LCD_guigio_PARM_3
      0006FC 40 06            [24] 1129 	jc	00112$
      0006FE 7D 20            [12] 1130 	mov	r5,#0x20
      000700 7E 00            [12] 1131 	mov	r6,#0x00
      000702 80 1D            [24] 1132 	sjmp	00113$
      000704                       1133 00112$:
      000704 AB 46            [24] 1134 	mov	r3,_LCD_guigio_PARM_3
      000706 7C 00            [12] 1135 	mov	r4,#0x00
      000708 75 1B 0A         [24] 1136 	mov	__divsint_PARM_2,#0x0a
                                   1137 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00070B 8C 1C            [24] 1138 	mov	(__divsint_PARM_2 + 1),r4
      00070D 8B 82            [24] 1139 	mov	dpl,r3
      00070F 8C 83            [24] 1140 	mov	dph,r4
      000711 12 84 9C         [24] 1141 	lcall	__divsint
      000714 AB 82            [24] 1142 	mov	r3,dpl
      000716 AC 83            [24] 1143 	mov	r4,dph
      000718 74 30            [12] 1144 	mov	a,#0x30
      00071A 2B               [12] 1145 	add	a,r3
      00071B FB               [12] 1146 	mov	r3,a
      00071C FD               [12] 1147 	mov	r5,a
      00071D 33               [12] 1148 	rlc	a
      00071E 95 E0            [12] 1149 	subb	a,acc
      000720 FE               [12] 1150 	mov	r6,a
      000721                       1151 00113$:
      000721 8D 82            [24] 1152 	mov	dpl,r5
      000723 12 05 13         [24] 1153 	lcall	_LCD_guidulieu
                                   1154 ;	src\lcd.c:135: LCD_guidulieu(gio%10+'0');
      000726 AD 46            [24] 1155 	mov	r5,_LCD_guigio_PARM_3
      000728 7E 00            [12] 1156 	mov	r6,#0x00
      00072A 75 1B 0A         [24] 1157 	mov	__modsint_PARM_2,#0x0a
                                   1158 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00072D 8E 1C            [24] 1159 	mov	(__modsint_PARM_2 + 1),r6
      00072F 8D 82            [24] 1160 	mov	dpl,r5
      000731 8E 83            [24] 1161 	mov	dph,r6
      000733 12 84 66         [24] 1162 	lcall	__modsint
      000736 AD 82            [24] 1163 	mov	r5,dpl
      000738 74 30            [12] 1164 	mov	a,#0x30
      00073A 2D               [12] 1165 	add	a,r5
      00073B F5 82            [12] 1166 	mov	dpl,a
      00073D 12 05 13         [24] 1167 	lcall	_LCD_guidulieu
                                   1168 ;	src\lcd.c:136: if(giay>252) LCD_guidulieu(haicham?':':' ');
      000740 E5 48            [12] 1169 	mov	a,_LCD_guigio_PARM_5
      000742 24 03            [12] 1170 	add	a,#0xff - 0xfc
      000744 50 12            [24] 1171 	jnc	00102$
      000746 30 01 06         [24] 1172 	jnb	_LCD_guigio_PARM_6,00114$
      000749 7D 3A            [12] 1173 	mov	r5,#0x3a
      00074B 7E 00            [12] 1174 	mov	r6,#0x00
      00074D 80 04            [24] 1175 	sjmp	00115$
      00074F                       1176 00114$:
      00074F 7D 20            [12] 1177 	mov	r5,#0x20
      000751 7E 00            [12] 1178 	mov	r6,#0x00
      000753                       1179 00115$:
      000753 8D 82            [24] 1180 	mov	dpl,r5
      000755 12 05 13         [24] 1181 	lcall	_LCD_guidulieu
      000758                       1182 00102$:
                                   1183 ;	src\lcd.c:137: LCD_guidulieu(phut/10+'0');
      000758 AD 47            [24] 1184 	mov	r5,_LCD_guigio_PARM_4
      00075A 7E 00            [12] 1185 	mov	r6,#0x00
      00075C 75 1B 0A         [24] 1186 	mov	__divsint_PARM_2,#0x0a
                                   1187 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00075F 8E 1C            [24] 1188 	mov	(__divsint_PARM_2 + 1),r6
      000761 8D 82            [24] 1189 	mov	dpl,r5
      000763 8E 83            [24] 1190 	mov	dph,r6
      000765 C0 06            [24] 1191 	push	ar6
      000767 C0 05            [24] 1192 	push	ar5
      000769 12 84 9C         [24] 1193 	lcall	__divsint
      00076C AB 82            [24] 1194 	mov	r3,dpl
      00076E 74 30            [12] 1195 	mov	a,#0x30
      000770 2B               [12] 1196 	add	a,r3
      000771 F5 82            [12] 1197 	mov	dpl,a
      000773 12 05 13         [24] 1198 	lcall	_LCD_guidulieu
      000776 D0 05            [24] 1199 	pop	ar5
      000778 D0 06            [24] 1200 	pop	ar6
                                   1201 ;	src\lcd.c:138: LCD_guidulieu(phut%10+'0');
      00077A 75 1B 0A         [24] 1202 	mov	__modsint_PARM_2,#0x0a
      00077D 75 1C 00         [24] 1203 	mov	(__modsint_PARM_2 + 1),#0x00
      000780 8D 82            [24] 1204 	mov	dpl,r5
      000782 8E 83            [24] 1205 	mov	dph,r6
      000784 12 84 66         [24] 1206 	lcall	__modsint
      000787 AD 82            [24] 1207 	mov	r5,dpl
      000789 74 30            [12] 1208 	mov	a,#0x30
      00078B 2D               [12] 1209 	add	a,r5
      00078C F5 82            [12] 1210 	mov	dpl,a
      00078E 02 05 13         [24] 1211 	ljmp	_LCD_guidulieu
      000791                       1212 00108$:
                                   1213 ;	src\lcd.c:140: LCD_guilenh(vitri);
      000791 8F 82            [24] 1214 	mov	dpl,r7
      000793 12 05 71         [24] 1215 	lcall	_LCD_guilenh
                                   1216 ;	src\lcd.c:141: LCD_guichuoi(chuoi);
      000796 85 43 82         [24] 1217 	mov	dpl,_LCD_guigio_PARM_2
      000799 85 44 83         [24] 1218 	mov	dph,(_LCD_guigio_PARM_2 + 1)
      00079C 85 45 F0         [24] 1219 	mov	b,(_LCD_guigio_PARM_2 + 2)
      00079F 12 05 F1         [24] 1220 	lcall	_LCD_guichuoi
                                   1221 ;	src\lcd.c:142: LCD_guidulieu(gio<10?' ':(gio/10+'0'));
      0007A2 74 F6            [12] 1222 	mov	a,#0x100 - 0x0a
      0007A4 25 46            [12] 1223 	add	a,_LCD_guigio_PARM_3
      0007A6 40 06            [24] 1224 	jc	00116$
      0007A8 7E 20            [12] 1225 	mov	r6,#0x20
      0007AA 7F 00            [12] 1226 	mov	r7,#0x00
      0007AC 80 1D            [24] 1227 	sjmp	00117$
      0007AE                       1228 00116$:
      0007AE AC 46            [24] 1229 	mov	r4,_LCD_guigio_PARM_3
      0007B0 7D 00            [12] 1230 	mov	r5,#0x00
      0007B2 75 1B 0A         [24] 1231 	mov	__divsint_PARM_2,#0x0a
                                   1232 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0007B5 8D 1C            [24] 1233 	mov	(__divsint_PARM_2 + 1),r5
      0007B7 8C 82            [24] 1234 	mov	dpl,r4
      0007B9 8D 83            [24] 1235 	mov	dph,r5
      0007BB 12 84 9C         [24] 1236 	lcall	__divsint
      0007BE AC 82            [24] 1237 	mov	r4,dpl
      0007C0 AD 83            [24] 1238 	mov	r5,dph
      0007C2 74 30            [12] 1239 	mov	a,#0x30
      0007C4 2C               [12] 1240 	add	a,r4
      0007C5 FC               [12] 1241 	mov	r4,a
      0007C6 FE               [12] 1242 	mov	r6,a
      0007C7 33               [12] 1243 	rlc	a
      0007C8 95 E0            [12] 1244 	subb	a,acc
      0007CA FF               [12] 1245 	mov	r7,a
      0007CB                       1246 00117$:
      0007CB 8E 82            [24] 1247 	mov	dpl,r6
      0007CD 12 05 13         [24] 1248 	lcall	_LCD_guidulieu
                                   1249 ;	src\lcd.c:143: LCD_guidulieu(gio%10+'0');
      0007D0 AE 46            [24] 1250 	mov	r6,_LCD_guigio_PARM_3
      0007D2 7F 00            [12] 1251 	mov	r7,#0x00
      0007D4 75 1B 0A         [24] 1252 	mov	__modsint_PARM_2,#0x0a
                                   1253 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0007D7 8F 1C            [24] 1254 	mov	(__modsint_PARM_2 + 1),r7
      0007D9 8E 82            [24] 1255 	mov	dpl,r6
      0007DB 8F 83            [24] 1256 	mov	dph,r7
      0007DD 12 84 66         [24] 1257 	lcall	__modsint
      0007E0 AE 82            [24] 1258 	mov	r6,dpl
      0007E2 74 30            [12] 1259 	mov	a,#0x30
      0007E4 2E               [12] 1260 	add	a,r6
      0007E5 F5 82            [12] 1261 	mov	dpl,a
      0007E7 12 05 13         [24] 1262 	lcall	_LCD_guidulieu
                                   1263 ;	src\lcd.c:144: if(giay<100)LCD_guidulieu(haicham?':':' ');
      0007EA C3               [12] 1264 	clr	c
      0007EB E5 48            [12] 1265 	mov	a,_LCD_guigio_PARM_5
      0007ED 94 64            [12] 1266 	subb	a,#0x64
      0007EF E4               [12] 1267 	clr	a
      0007F0 33               [12] 1268 	rlc	a
      0007F1 FF               [12] 1269 	mov	r7,a
      0007F2 60 16            [24] 1270 	jz	00104$
      0007F4 30 01 06         [24] 1271 	jnb	_LCD_guigio_PARM_6,00118$
      0007F7 7D 3A            [12] 1272 	mov	r5,#0x3a
      0007F9 7E 00            [12] 1273 	mov	r6,#0x00
      0007FB 80 04            [24] 1274 	sjmp	00119$
      0007FD                       1275 00118$:
      0007FD 7D 20            [12] 1276 	mov	r5,#0x20
      0007FF 7E 00            [12] 1277 	mov	r6,#0x00
      000801                       1278 00119$:
      000801 8D 82            [24] 1279 	mov	dpl,r5
      000803 C0 07            [24] 1280 	push	ar7
      000805 12 05 13         [24] 1281 	lcall	_LCD_guidulieu
      000808 D0 07            [24] 1282 	pop	ar7
      00080A                       1283 00104$:
                                   1284 ;	src\lcd.c:145: LCD_guidulieu(phut/10+'0');
      00080A AD 47            [24] 1285 	mov	r5,_LCD_guigio_PARM_4
      00080C 7E 00            [12] 1286 	mov	r6,#0x00
      00080E 75 1B 0A         [24] 1287 	mov	__divsint_PARM_2,#0x0a
                                   1288 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000811 8E 1C            [24] 1289 	mov	(__divsint_PARM_2 + 1),r6
      000813 8D 82            [24] 1290 	mov	dpl,r5
      000815 8E 83            [24] 1291 	mov	dph,r6
      000817 C0 07            [24] 1292 	push	ar7
      000819 C0 06            [24] 1293 	push	ar6
      00081B C0 05            [24] 1294 	push	ar5
      00081D 12 84 9C         [24] 1295 	lcall	__divsint
      000820 AB 82            [24] 1296 	mov	r3,dpl
      000822 74 30            [12] 1297 	mov	a,#0x30
      000824 2B               [12] 1298 	add	a,r3
      000825 F5 82            [12] 1299 	mov	dpl,a
      000827 12 05 13         [24] 1300 	lcall	_LCD_guidulieu
      00082A D0 05            [24] 1301 	pop	ar5
      00082C D0 06            [24] 1302 	pop	ar6
                                   1303 ;	src\lcd.c:146: LCD_guidulieu(phut%10+'0');
      00082E 75 1B 0A         [24] 1304 	mov	__modsint_PARM_2,#0x0a
      000831 75 1C 00         [24] 1305 	mov	(__modsint_PARM_2 + 1),#0x00
      000834 8D 82            [24] 1306 	mov	dpl,r5
      000836 8E 83            [24] 1307 	mov	dph,r6
      000838 12 84 66         [24] 1308 	lcall	__modsint
      00083B AD 82            [24] 1309 	mov	r5,dpl
      00083D 74 30            [12] 1310 	mov	a,#0x30
      00083F 2D               [12] 1311 	add	a,r5
      000840 F5 82            [12] 1312 	mov	dpl,a
      000842 12 05 13         [24] 1313 	lcall	_LCD_guidulieu
      000845 D0 07            [24] 1314 	pop	ar7
                                   1315 ;	src\lcd.c:147: if(giay<100)LCD_guidulieu(haicham?':':' ');
      000847 EF               [12] 1316 	mov	a,r7
      000848 60 12            [24] 1317 	jz	00106$
      00084A 30 01 06         [24] 1318 	jnb	_LCD_guigio_PARM_6,00120$
      00084D 7E 3A            [12] 1319 	mov	r6,#0x3a
      00084F 7F 00            [12] 1320 	mov	r7,#0x00
      000851 80 04            [24] 1321 	sjmp	00121$
      000853                       1322 00120$:
      000853 7E 20            [12] 1323 	mov	r6,#0x20
      000855 7F 00            [12] 1324 	mov	r7,#0x00
      000857                       1325 00121$:
      000857 8E 82            [24] 1326 	mov	dpl,r6
      000859 12 05 13         [24] 1327 	lcall	_LCD_guidulieu
      00085C                       1328 00106$:
                                   1329 ;	src\lcd.c:148: LCD_guidulieu((giay%100)/10+'0');
      00085C AE 48            [24] 1330 	mov	r6,_LCD_guigio_PARM_5
      00085E 7F 00            [12] 1331 	mov	r7,#0x00
      000860 75 1B 64         [24] 1332 	mov	__modsint_PARM_2,#0x64
                                   1333 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000863 8F 1C            [24] 1334 	mov	(__modsint_PARM_2 + 1),r7
      000865 8E 82            [24] 1335 	mov	dpl,r6
      000867 8F 83            [24] 1336 	mov	dph,r7
      000869 C0 07            [24] 1337 	push	ar7
      00086B C0 06            [24] 1338 	push	ar6
      00086D 12 84 66         [24] 1339 	lcall	__modsint
      000870 75 1B 0A         [24] 1340 	mov	__divsint_PARM_2,#0x0a
      000873 75 1C 00         [24] 1341 	mov	(__divsint_PARM_2 + 1),#0x00
      000876 12 84 9C         [24] 1342 	lcall	__divsint
      000879 AC 82            [24] 1343 	mov	r4,dpl
      00087B 74 30            [12] 1344 	mov	a,#0x30
      00087D 2C               [12] 1345 	add	a,r4
      00087E F5 82            [12] 1346 	mov	dpl,a
      000880 12 05 13         [24] 1347 	lcall	_LCD_guidulieu
      000883 D0 06            [24] 1348 	pop	ar6
      000885 D0 07            [24] 1349 	pop	ar7
                                   1350 ;	src\lcd.c:149: LCD_guidulieu(giay%10+'0');
      000887 75 1B 0A         [24] 1351 	mov	__modsint_PARM_2,#0x0a
      00088A 75 1C 00         [24] 1352 	mov	(__modsint_PARM_2 + 1),#0x00
      00088D 8E 82            [24] 1353 	mov	dpl,r6
      00088F 8F 83            [24] 1354 	mov	dph,r7
      000891 12 84 66         [24] 1355 	lcall	__modsint
      000894 AE 82            [24] 1356 	mov	r6,dpl
      000896 74 30            [12] 1357 	mov	a,#0x30
      000898 2E               [12] 1358 	add	a,r6
      000899 F5 82            [12] 1359 	mov	dpl,a
      00089B 12 05 13         [24] 1360 	lcall	_LCD_guidulieu
                                   1361 ;	src\lcd.c:150: LCD_guidulieu(' ');
      00089E 75 82 20         [24] 1362 	mov	dpl,#0x20
                                   1363 ;	src\lcd.c:164: }
      0008A1 02 05 13         [24] 1364 	ljmp	_LCD_guidulieu
                                   1365 	.area CSEG    (CODE)
                                   1366 	.area CONST   (CODE)
                                   1367 	.area CONST   (CODE)
      0084D8                       1368 ___str_0:
      0084D8 20 20 20 20 20 20 20  1369 	.ascii "                "
             20 20 20 20 20 20 20
             20 20
      0084E8 00                    1370 	.db 0x00
                                   1371 	.area CSEG    (CODE)
                                   1372 	.area XINIT   (CODE)
                                   1373 	.area CABS    (ABS,CODE)
