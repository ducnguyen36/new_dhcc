                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _eep_gio4
                                     12 	.globl _eep_phut4
                                     13 	.globl _eep_gio3
                                     14 	.globl _eep_phut3
                                     15 	.globl _eep_gio2
                                     16 	.globl _eep_phut2
                                     17 	.globl _eep_gio1
                                     18 	.globl _eep_phut1
                                     19 	.globl _eep_cam
                                     20 	.globl _eep_debug
                                     21 	.globl _eep_loithesim
                                     22 	.globl _eep_phonephu
                                     23 	.globl _eep_mp3
                                     24 	.globl _eep_tatmoden
                                     25 	.globl _eep_giosacxa
                                     26 	.globl _eep_norreset
                                     27 	.globl _eep_gioreset
                                     28 	.globl _eep_ngayreset
                                     29 	.globl _eep_gpson
                                     30 	.globl _eep_baocao
                                     31 	.globl _eep_motor
                                     32 	.globl _IAP_docbyte
                                     33 	.globl _IAP_cho
                                     34 	.globl _CCF0
                                     35 	.globl _CCF1
                                     36 	.globl _CCF2
                                     37 	.globl _CR
                                     38 	.globl _CF
                                     39 	.globl _RI
                                     40 	.globl _TI
                                     41 	.globl _RB8
                                     42 	.globl _TB8
                                     43 	.globl _REN
                                     44 	.globl _SM2
                                     45 	.globl _SM1
                                     46 	.globl _SM0
                                     47 	.globl _IT0
                                     48 	.globl _IE0
                                     49 	.globl _IT1
                                     50 	.globl _IE1
                                     51 	.globl _TR0
                                     52 	.globl _TF0
                                     53 	.globl _TR1
                                     54 	.globl _TF1
                                     55 	.globl _PX0
                                     56 	.globl _PT0
                                     57 	.globl _PX1
                                     58 	.globl _PT1
                                     59 	.globl _PS
                                     60 	.globl _PADC
                                     61 	.globl _PLVD
                                     62 	.globl _PPCA
                                     63 	.globl _EX0
                                     64 	.globl _ET0
                                     65 	.globl _EX1
                                     66 	.globl _ET1
                                     67 	.globl _ES
                                     68 	.globl _EADC
                                     69 	.globl _ELVD
                                     70 	.globl _EA
                                     71 	.globl _P77
                                     72 	.globl _P76
                                     73 	.globl _P75
                                     74 	.globl _P74
                                     75 	.globl _P73
                                     76 	.globl _P72
                                     77 	.globl _P71
                                     78 	.globl _P70
                                     79 	.globl _P67
                                     80 	.globl _P66
                                     81 	.globl _P65
                                     82 	.globl _P64
                                     83 	.globl _P63
                                     84 	.globl _P62
                                     85 	.globl _P61
                                     86 	.globl _P60
                                     87 	.globl _P57
                                     88 	.globl _P56
                                     89 	.globl _P55
                                     90 	.globl _P54
                                     91 	.globl _P53
                                     92 	.globl _P52
                                     93 	.globl _P51
                                     94 	.globl _P50
                                     95 	.globl _P47
                                     96 	.globl _P46
                                     97 	.globl _P45
                                     98 	.globl _P44
                                     99 	.globl _P43
                                    100 	.globl _P42
                                    101 	.globl _P41
                                    102 	.globl _P40
                                    103 	.globl _P37
                                    104 	.globl _P36
                                    105 	.globl _P35
                                    106 	.globl _P34
                                    107 	.globl _P33
                                    108 	.globl _P32
                                    109 	.globl _P31
                                    110 	.globl _P30
                                    111 	.globl _P27
                                    112 	.globl _P26
                                    113 	.globl _P25
                                    114 	.globl _P24
                                    115 	.globl _P23
                                    116 	.globl _P22
                                    117 	.globl _P21
                                    118 	.globl _P20
                                    119 	.globl _P17
                                    120 	.globl _P16
                                    121 	.globl _P15
                                    122 	.globl _P14
                                    123 	.globl _P13
                                    124 	.globl _P12
                                    125 	.globl _P11
                                    126 	.globl _P10
                                    127 	.globl _P07
                                    128 	.globl _P06
                                    129 	.globl _P05
                                    130 	.globl _P04
                                    131 	.globl _P03
                                    132 	.globl _P02
                                    133 	.globl _P01
                                    134 	.globl _P00
                                    135 	.globl _P
                                    136 	.globl _F1
                                    137 	.globl _OV
                                    138 	.globl _RS0
                                    139 	.globl _RS1
                                    140 	.globl _F0
                                    141 	.globl _AC
                                    142 	.globl _CY
                                    143 	.globl _PWMFDCR
                                    144 	.globl _PWMIF
                                    145 	.globl _PWMCR
                                    146 	.globl _PWMCFG
                                    147 	.globl _CMPCR2
                                    148 	.globl _CMPCR1
                                    149 	.globl _CCAP2H
                                    150 	.globl _CCAP1H
                                    151 	.globl _CCAP0H
                                    152 	.globl _PCA_PWM2
                                    153 	.globl _PCA_PWM1
                                    154 	.globl _PCA_PWM0
                                    155 	.globl _CCAP2L
                                    156 	.globl _CCAP1L
                                    157 	.globl _CCAP0L
                                    158 	.globl _CCAPM2
                                    159 	.globl _CCAPM1
                                    160 	.globl _CCAPM0
                                    161 	.globl _CH
                                    162 	.globl _CL
                                    163 	.globl _CMOD
                                    164 	.globl _CCON
                                    165 	.globl _IAP_CONTR
                                    166 	.globl _IAP_TRIG
                                    167 	.globl _IAP_CMD
                                    168 	.globl _IAP_ADDRL
                                    169 	.globl _IAP_ADDRH
                                    170 	.globl _IAP_DATA
                                    171 	.globl _SPDAT
                                    172 	.globl _SPCTL
                                    173 	.globl _SPSTAT
                                    174 	.globl _ADC_RESL
                                    175 	.globl _ADC_RES
                                    176 	.globl _ADC_CONTR
                                    177 	.globl _SADEN
                                    178 	.globl _SADDR
                                    179 	.globl _S4BUF
                                    180 	.globl _S4CON
                                    181 	.globl _S3BUF
                                    182 	.globl _S3CON
                                    183 	.globl _S2BUF
                                    184 	.globl _S2CON
                                    185 	.globl _SBUF
                                    186 	.globl _SCON
                                    187 	.globl _WDT_CONTR
                                    188 	.globl _WKTCH
                                    189 	.globl _WKTCL
                                    190 	.globl _T2L
                                    191 	.globl _T2H
                                    192 	.globl _T3L
                                    193 	.globl _T3H
                                    194 	.globl _T4L
                                    195 	.globl _T4H
                                    196 	.globl _T4T3M
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _INT_CLKO
                                    204 	.globl _IP2
                                    205 	.globl _IE2
                                    206 	.globl _IP
                                    207 	.globl _IE
                                    208 	.globl _P_SW2
                                    209 	.globl _P1ASF
                                    210 	.globl _BUS_SPEED
                                    211 	.globl _CLK_DIV
                                    212 	.globl _P_SW1
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _PCON
                                    216 	.globl _P7M1
                                    217 	.globl _P7M0
                                    218 	.globl _P6M1
                                    219 	.globl _P6M0
                                    220 	.globl _P5M1
                                    221 	.globl _P5M0
                                    222 	.globl _P4M1
                                    223 	.globl _P4M0
                                    224 	.globl _P3M1
                                    225 	.globl _P3M0
                                    226 	.globl _P2M1
                                    227 	.globl _P2M0
                                    228 	.globl _P1M1
                                    229 	.globl _P1M0
                                    230 	.globl _P0M1
                                    231 	.globl _P0M0
                                    232 	.globl _P7
                                    233 	.globl _P6
                                    234 	.globl _P5
                                    235 	.globl _P4
                                    236 	.globl _P3
                                    237 	.globl _P2
                                    238 	.globl _P1
                                    239 	.globl _P0
                                    240 	.globl _DPH
                                    241 	.globl _DPL
                                    242 	.globl _SP
                                    243 	.globl _PSW
                                    244 	.globl _B
                                    245 	.globl _ACC
                                    246 	.globl _IAP_ghibyte_PARM_2
                                    247 	.globl _IAP_ghibyte
                                    248 	.globl _IAP_xoasector
                                    249 	.globl _IAP_docxoasector1
                                    250 	.globl _IAP_ghisector1
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000D0   258 _PSW	=	0x00d0
                           000081   259 _SP	=	0x0081
                           000082   260 _DPL	=	0x0082
                           000083   261 _DPH	=	0x0083
                           000080   262 _P0	=	0x0080
                           000090   263 _P1	=	0x0090
                           0000A0   264 _P2	=	0x00a0
                           0000B0   265 _P3	=	0x00b0
                           0000C0   266 _P4	=	0x00c0
                           0000C8   267 _P5	=	0x00c8
                           0000E8   268 _P6	=	0x00e8
                           0000F8   269 _P7	=	0x00f8
                           000094   270 _P0M0	=	0x0094
                           000093   271 _P0M1	=	0x0093
                           000092   272 _P1M0	=	0x0092
                           000091   273 _P1M1	=	0x0091
                           000096   274 _P2M0	=	0x0096
                           000095   275 _P2M1	=	0x0095
                           0000B2   276 _P3M0	=	0x00b2
                           0000B1   277 _P3M1	=	0x00b1
                           0000B4   278 _P4M0	=	0x00b4
                           0000B3   279 _P4M1	=	0x00b3
                           0000CA   280 _P5M0	=	0x00ca
                           0000C9   281 _P5M1	=	0x00c9
                           0000CC   282 _P6M0	=	0x00cc
                           0000CB   283 _P6M1	=	0x00cb
                           0000E2   284 _P7M0	=	0x00e2
                           0000E1   285 _P7M1	=	0x00e1
                           000087   286 _PCON	=	0x0087
                           00008E   287 _AUXR	=	0x008e
                           0000A2   288 _AUXR1	=	0x00a2
                           0000A2   289 _P_SW1	=	0x00a2
                           000097   290 _CLK_DIV	=	0x0097
                           0000A1   291 _BUS_SPEED	=	0x00a1
                           00009D   292 _P1ASF	=	0x009d
                           0000BA   293 _P_SW2	=	0x00ba
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           0000AF   296 _IE2	=	0x00af
                           0000B5   297 _IP2	=	0x00b5
                           00008F   298 _INT_CLKO	=	0x008f
                           000088   299 _TCON	=	0x0088
                           000089   300 _TMOD	=	0x0089
                           00008A   301 _TL0	=	0x008a
                           00008B   302 _TL1	=	0x008b
                           00008C   303 _TH0	=	0x008c
                           00008D   304 _TH1	=	0x008d
                           0000D1   305 _T4T3M	=	0x00d1
                           0000D2   306 _T4H	=	0x00d2
                           0000D3   307 _T4L	=	0x00d3
                           0000D4   308 _T3H	=	0x00d4
                           0000D5   309 _T3L	=	0x00d5
                           0000D6   310 _T2H	=	0x00d6
                           0000D7   311 _T2L	=	0x00d7
                           0000AA   312 _WKTCL	=	0x00aa
                           0000AB   313 _WKTCH	=	0x00ab
                           0000C1   314 _WDT_CONTR	=	0x00c1
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           00009A   317 _S2CON	=	0x009a
                           00009B   318 _S2BUF	=	0x009b
                           0000AC   319 _S3CON	=	0x00ac
                           0000AD   320 _S3BUF	=	0x00ad
                           000084   321 _S4CON	=	0x0084
                           000085   322 _S4BUF	=	0x0085
                           0000A9   323 _SADDR	=	0x00a9
                           0000B9   324 _SADEN	=	0x00b9
                           0000BC   325 _ADC_CONTR	=	0x00bc
                           0000BD   326 _ADC_RES	=	0x00bd
                           0000BE   327 _ADC_RESL	=	0x00be
                           0000CD   328 _SPSTAT	=	0x00cd
                           0000CE   329 _SPCTL	=	0x00ce
                           0000CF   330 _SPDAT	=	0x00cf
                           0000C2   331 _IAP_DATA	=	0x00c2
                           0000C3   332 _IAP_ADDRH	=	0x00c3
                           0000C4   333 _IAP_ADDRL	=	0x00c4
                           0000C5   334 _IAP_CMD	=	0x00c5
                           0000C6   335 _IAP_TRIG	=	0x00c6
                           0000C7   336 _IAP_CONTR	=	0x00c7
                           0000D8   337 _CCON	=	0x00d8
                           0000D9   338 _CMOD	=	0x00d9
                           0000E9   339 _CL	=	0x00e9
                           0000F9   340 _CH	=	0x00f9
                           0000DA   341 _CCAPM0	=	0x00da
                           0000DB   342 _CCAPM1	=	0x00db
                           0000DC   343 _CCAPM2	=	0x00dc
                           0000EA   344 _CCAP0L	=	0x00ea
                           0000EB   345 _CCAP1L	=	0x00eb
                           0000EC   346 _CCAP2L	=	0x00ec
                           0000F2   347 _PCA_PWM0	=	0x00f2
                           0000F3   348 _PCA_PWM1	=	0x00f3
                           0000F4   349 _PCA_PWM2	=	0x00f4
                           0000FA   350 _CCAP0H	=	0x00fa
                           0000FB   351 _CCAP1H	=	0x00fb
                           0000FC   352 _CCAP2H	=	0x00fc
                           0000E6   353 _CMPCR1	=	0x00e6
                           0000E7   354 _CMPCR2	=	0x00e7
                           0000F1   355 _PWMCFG	=	0x00f1
                           0000F5   356 _PWMCR	=	0x00f5
                           0000F6   357 _PWMIF	=	0x00f6
                           0000F7   358 _PWMFDCR	=	0x00f7
                                    359 ;--------------------------------------------------------
                                    360 ; special function bits
                                    361 ;--------------------------------------------------------
                                    362 	.area RSEG    (ABS,DATA)
      000000                        363 	.org 0x0000
                           0000D7   364 _CY	=	0x00d7
                           0000D6   365 _AC	=	0x00d6
                           0000D5   366 _F0	=	0x00d5
                           0000D4   367 _RS1	=	0x00d4
                           0000D3   368 _RS0	=	0x00d3
                           0000D2   369 _OV	=	0x00d2
                           0000D1   370 _F1	=	0x00d1
                           0000D0   371 _P	=	0x00d0
                           000080   372 _P00	=	0x0080
                           000081   373 _P01	=	0x0081
                           000082   374 _P02	=	0x0082
                           000083   375 _P03	=	0x0083
                           000084   376 _P04	=	0x0084
                           000085   377 _P05	=	0x0085
                           000086   378 _P06	=	0x0086
                           000087   379 _P07	=	0x0087
                           000090   380 _P10	=	0x0090
                           000091   381 _P11	=	0x0091
                           000092   382 _P12	=	0x0092
                           000093   383 _P13	=	0x0093
                           000094   384 _P14	=	0x0094
                           000095   385 _P15	=	0x0095
                           000096   386 _P16	=	0x0096
                           000097   387 _P17	=	0x0097
                           0000A0   388 _P20	=	0x00a0
                           0000A1   389 _P21	=	0x00a1
                           0000A2   390 _P22	=	0x00a2
                           0000A3   391 _P23	=	0x00a3
                           0000A4   392 _P24	=	0x00a4
                           0000A5   393 _P25	=	0x00a5
                           0000A6   394 _P26	=	0x00a6
                           0000A7   395 _P27	=	0x00a7
                           0000B0   396 _P30	=	0x00b0
                           0000B1   397 _P31	=	0x00b1
                           0000B2   398 _P32	=	0x00b2
                           0000B3   399 _P33	=	0x00b3
                           0000B4   400 _P34	=	0x00b4
                           0000B5   401 _P35	=	0x00b5
                           0000B6   402 _P36	=	0x00b6
                           0000B7   403 _P37	=	0x00b7
                           0000C0   404 _P40	=	0x00c0
                           0000C1   405 _P41	=	0x00c1
                           0000C2   406 _P42	=	0x00c2
                           0000C3   407 _P43	=	0x00c3
                           0000C4   408 _P44	=	0x00c4
                           0000C5   409 _P45	=	0x00c5
                           0000C6   410 _P46	=	0x00c6
                           0000C7   411 _P47	=	0x00c7
                           0000C8   412 _P50	=	0x00c8
                           0000C9   413 _P51	=	0x00c9
                           0000CA   414 _P52	=	0x00ca
                           0000CB   415 _P53	=	0x00cb
                           0000CC   416 _P54	=	0x00cc
                           0000CD   417 _P55	=	0x00cd
                           0000CE   418 _P56	=	0x00ce
                           0000CF   419 _P57	=	0x00cf
                           0000E8   420 _P60	=	0x00e8
                           0000E9   421 _P61	=	0x00e9
                           0000EA   422 _P62	=	0x00ea
                           0000EB   423 _P63	=	0x00eb
                           0000EC   424 _P64	=	0x00ec
                           0000ED   425 _P65	=	0x00ed
                           0000EE   426 _P66	=	0x00ee
                           0000EF   427 _P67	=	0x00ef
                           0000F8   428 _P70	=	0x00f8
                           0000F9   429 _P71	=	0x00f9
                           0000FA   430 _P72	=	0x00fa
                           0000FB   431 _P73	=	0x00fb
                           0000FC   432 _P74	=	0x00fc
                           0000FD   433 _P75	=	0x00fd
                           0000FE   434 _P76	=	0x00fe
                           0000FF   435 _P77	=	0x00ff
                           0000AF   436 _EA	=	0x00af
                           0000AE   437 _ELVD	=	0x00ae
                           0000AD   438 _EADC	=	0x00ad
                           0000AC   439 _ES	=	0x00ac
                           0000AB   440 _ET1	=	0x00ab
                           0000AA   441 _EX1	=	0x00aa
                           0000A9   442 _ET0	=	0x00a9
                           0000A8   443 _EX0	=	0x00a8
                           0000BF   444 _PPCA	=	0x00bf
                           0000BE   445 _PLVD	=	0x00be
                           0000BD   446 _PADC	=	0x00bd
                           0000BC   447 _PS	=	0x00bc
                           0000BB   448 _PT1	=	0x00bb
                           0000BA   449 _PX1	=	0x00ba
                           0000B9   450 _PT0	=	0x00b9
                           0000B8   451 _PX0	=	0x00b8
                           00008F   452 _TF1	=	0x008f
                           00008E   453 _TR1	=	0x008e
                           00008D   454 _TF0	=	0x008d
                           00008C   455 _TR0	=	0x008c
                           00008B   456 _IE1	=	0x008b
                           00008A   457 _IT1	=	0x008a
                           000089   458 _IE0	=	0x0089
                           000088   459 _IT0	=	0x0088
                           00009F   460 _SM0	=	0x009f
                           00009E   461 _SM1	=	0x009e
                           00009D   462 _SM2	=	0x009d
                           00009C   463 _REN	=	0x009c
                           00009B   464 _TB8	=	0x009b
                           00009A   465 _RB8	=	0x009a
                           000099   466 _TI	=	0x0099
                           000098   467 _RI	=	0x0098
                           0000DF   468 _CF	=	0x00df
                           0000DE   469 _CR	=	0x00de
                           0000DA   470 _CCF2	=	0x00da
                           0000D9   471 _CCF1	=	0x00d9
                           0000D8   472 _CCF0	=	0x00d8
                                    473 ;--------------------------------------------------------
                                    474 ; overlayable register banks
                                    475 ;--------------------------------------------------------
                                    476 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        477 	.ds 8
                                    478 ;--------------------------------------------------------
                                    479 ; internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area DSEG    (DATA)
      000018                        482 _IAP_ghibyte_PARM_2:
      000018                        483 	.ds 1
                                    484 ;--------------------------------------------------------
                                    485 ; overlayable items in internal ram
                                    486 ;--------------------------------------------------------
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
                                    500 ;--------------------------------------------------------
                                    501 ; paged external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area PSEG    (PAG,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XSEG    (XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; external initialized ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; global & static initialisations
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 	.area GSFINAL (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 ;--------------------------------------------------------
                                    534 ; Home
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
                                    537 	.area HOME    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; code
                                    540 ;--------------------------------------------------------
                                    541 	.area CSEG    (CODE)
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'IAP_cho'
                                    544 ;------------------------------------------------------------
                                    545 ;	src\eeprom.c:5: void IAP_cho()
                                    546 ;	-----------------------------------------
                                    547 ;	 function IAP_cho
                                    548 ;	-----------------------------------------
      0002CD                        549 _IAP_cho:
                           000007   550 	ar7 = 0x07
                           000006   551 	ar6 = 0x06
                           000005   552 	ar5 = 0x05
                           000004   553 	ar4 = 0x04
                           000003   554 	ar3 = 0x03
                           000002   555 	ar2 = 0x02
                           000001   556 	ar1 = 0x01
                           000000   557 	ar0 = 0x00
                                    558 ;	src\eeprom.c:7: IAP_CONTR = 0; //Close IAP function
      0002CD 75 C7 00         [24]  559 	mov	_IAP_CONTR,#0x00
                                    560 ;	src\eeprom.c:8: IAP_CMD = CMD_IDLE; //Clear command to standby
      0002D0 75 C5 00         [24]  561 	mov	_IAP_CMD,#0x00
                                    562 ;	src\eeprom.c:9: IAP_TRIG = 0; //Clear trigger register
      0002D3 75 C6 00         [24]  563 	mov	_IAP_TRIG,#0x00
                                    564 ;	src\eeprom.c:10: IAP_ADDRH = 0x80; //Data ptr point to non-EEPROM area
      0002D6 75 C3 80         [24]  565 	mov	_IAP_ADDRH,#0x80
                                    566 ;	src\eeprom.c:11: IAP_ADDRL = 0; //Clear IAP address to prevent misuse
      0002D9 75 C4 00         [24]  567 	mov	_IAP_ADDRL,#0x00
                                    568 ;	src\eeprom.c:12: WATCHDOG;
      0002DC 43 C1 10         [24]  569 	orl	_WDT_CONTR,#0x10
                                    570 ;	src\eeprom.c:13: }
      0002DF 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'IAP_docbyte'
                                    574 ;------------------------------------------------------------
                                    575 ;diachi                    Allocated to registers r6 r7 
                                    576 ;dulieu                    Allocated to registers r7 
                                    577 ;------------------------------------------------------------
                                    578 ;	src\eeprom.c:15: u8 IAP_docbyte(u16 diachi){
                                    579 ;	-----------------------------------------
                                    580 ;	 function IAP_docbyte
                                    581 ;	-----------------------------------------
      0002E0                        582 _IAP_docbyte:
      0002E0 AE 82            [24]  583 	mov	r6,dpl
      0002E2 AF 83            [24]  584 	mov	r7,dph
                                    585 ;	src\eeprom.c:17: IAP_CONTR = ENABLE_IAP;
      0002E4 75 C7 83         [24]  586 	mov	_IAP_CONTR,#0x83
                                    587 ;	src\eeprom.c:18: IAP_CMD = CMD_READ;
      0002E7 75 C5 01         [24]  588 	mov	_IAP_CMD,#0x01
                                    589 ;	src\eeprom.c:19: IAP_ADDRL = diachi;
      0002EA 8E C4            [24]  590 	mov	_IAP_ADDRL,r6
                                    591 ;	src\eeprom.c:20: IAP_ADDRH = diachi>>8;
      0002EC 8F C3            [24]  592 	mov	_IAP_ADDRH,r7
                                    593 ;	src\eeprom.c:21: IAP_TRIG = 0x5a;
      0002EE 75 C6 5A         [24]  594 	mov	_IAP_TRIG,#0x5a
                                    595 ;	src\eeprom.c:22: IAP_TRIG = 0xa5;
      0002F1 75 C6 A5         [24]  596 	mov	_IAP_TRIG,#0xa5
                                    597 ;	src\eeprom.c:23: _nop_();
      0002F4 00               [12]  598 	NOP	
                                    599 ;	src\eeprom.c:24: dulieu = IAP_DATA;
      0002F5 AF C2            [24]  600 	mov	r7,_IAP_DATA
                                    601 ;	src\eeprom.c:25: IAP_cho();
      0002F7 C0 07            [24]  602 	push	ar7
      0002F9 12 02 CD         [24]  603 	lcall	_IAP_cho
      0002FC D0 07            [24]  604 	pop	ar7
                                    605 ;	src\eeprom.c:26: return dulieu;
      0002FE 8F 82            [24]  606 	mov	dpl,r7
                                    607 ;	src\eeprom.c:27: }
      000300 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'IAP_ghibyte'
                                    611 ;------------------------------------------------------------
                                    612 ;dulieu                    Allocated with name '_IAP_ghibyte_PARM_2'
                                    613 ;diachi                    Allocated to registers r6 r7 
                                    614 ;------------------------------------------------------------
                                    615 ;	src\eeprom.c:29: void IAP_ghibyte(u16 diachi,u8 dulieu){
                                    616 ;	-----------------------------------------
                                    617 ;	 function IAP_ghibyte
                                    618 ;	-----------------------------------------
      000301                        619 _IAP_ghibyte:
      000301 AE 82            [24]  620 	mov	r6,dpl
      000303 AF 83            [24]  621 	mov	r7,dph
                                    622 ;	src\eeprom.c:30: IAP_CONTR = ENABLE_IAP;
      000305 75 C7 83         [24]  623 	mov	_IAP_CONTR,#0x83
                                    624 ;	src\eeprom.c:31: IAP_CMD = CMD_PROGRAM;
      000308 75 C5 02         [24]  625 	mov	_IAP_CMD,#0x02
                                    626 ;	src\eeprom.c:32: IAP_ADDRL = diachi;
      00030B 8E C4            [24]  627 	mov	_IAP_ADDRL,r6
                                    628 ;	src\eeprom.c:33: IAP_ADDRH = diachi>>8;
      00030D 8F C3            [24]  629 	mov	_IAP_ADDRH,r7
                                    630 ;	src\eeprom.c:34: IAP_DATA = dulieu;
      00030F 85 18 C2         [24]  631 	mov	_IAP_DATA,_IAP_ghibyte_PARM_2
                                    632 ;	src\eeprom.c:35: IAP_TRIG = 0x5a;
      000312 75 C6 5A         [24]  633 	mov	_IAP_TRIG,#0x5a
                                    634 ;	src\eeprom.c:36: IAP_TRIG = 0xa5;
      000315 75 C6 A5         [24]  635 	mov	_IAP_TRIG,#0xa5
                                    636 ;	src\eeprom.c:37: _nop_();
      000318 00               [12]  637 	NOP	
                                    638 ;	src\eeprom.c:38: IAP_cho();
                                    639 ;	src\eeprom.c:39: }
      000319 02 02 CD         [24]  640 	ljmp	_IAP_cho
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'IAP_xoasector'
                                    643 ;------------------------------------------------------------
                                    644 ;sector                    Allocated to registers r6 r7 
                                    645 ;------------------------------------------------------------
                                    646 ;	src\eeprom.c:41: void IAP_xoasector(u16 sector){
                                    647 ;	-----------------------------------------
                                    648 ;	 function IAP_xoasector
                                    649 ;	-----------------------------------------
      00031C                        650 _IAP_xoasector:
      00031C AE 82            [24]  651 	mov	r6,dpl
      00031E AF 83            [24]  652 	mov	r7,dph
                                    653 ;	src\eeprom.c:42: IAP_CONTR = ENABLE_IAP;
      000320 75 C7 83         [24]  654 	mov	_IAP_CONTR,#0x83
                                    655 ;	src\eeprom.c:43: IAP_CMD = CMD_ERASE;
      000323 75 C5 03         [24]  656 	mov	_IAP_CMD,#0x03
                                    657 ;	src\eeprom.c:44: IAP_ADDRL = sector;
      000326 8E C4            [24]  658 	mov	_IAP_ADDRL,r6
                                    659 ;	src\eeprom.c:45: IAP_ADDRH = sector>>8;
      000328 8F C3            [24]  660 	mov	_IAP_ADDRH,r7
                                    661 ;	src\eeprom.c:46: IAP_TRIG = 0x5a;
      00032A 75 C6 5A         [24]  662 	mov	_IAP_TRIG,#0x5a
                                    663 ;	src\eeprom.c:47: IAP_TRIG = 0xa5;
      00032D 75 C6 A5         [24]  664 	mov	_IAP_TRIG,#0xa5
                                    665 ;	src\eeprom.c:48: _nop_();
      000330 00               [12]  666 	NOP	
                                    667 ;	src\eeprom.c:49: IAP_cho();
                                    668 ;	src\eeprom.c:51: }
      000331 02 02 CD         [24]  669 	ljmp	_IAP_cho
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'IAP_docxoasector1'
                                    672 ;------------------------------------------------------------
                                    673 ;i                         Allocated to registers r7 
                                    674 ;------------------------------------------------------------
                                    675 ;	src\eeprom.c:53: void IAP_docxoasector1(){
                                    676 ;	-----------------------------------------
                                    677 ;	 function IAP_docxoasector1
                                    678 ;	-----------------------------------------
      000334                        679 _IAP_docxoasector1:
                                    680 ;	src\eeprom.c:56: WATCHDOG;
      000334 43 C1 10         [24]  681 	orl	_WDT_CONTR,#0x10
                                    682 ;	src\eeprom.c:57: while(i) eeprom_buf[--i] = 0xff;
      000337 7F 20            [12]  683 	mov	r7,#0x20
      000339                        684 00101$:
      000339 EF               [12]  685 	mov	a,r7
      00033A 60 10            [24]  686 	jz	00112$
      00033C 1F               [12]  687 	dec	r7
      00033D EF               [12]  688 	mov	a,r7
      00033E 24 BD            [12]  689 	add	a,#_eeprom_buf
      000340 F5 82            [12]  690 	mov	dpl,a
      000342 E4               [12]  691 	clr	a
      000343 34 00            [12]  692 	addc	a,#(_eeprom_buf >> 8)
      000345 F5 83            [12]  693 	mov	dph,a
      000347 74 FF            [12]  694 	mov	a,#0xff
      000349 F0               [24]  695 	movx	@dptr,a
                                    696 ;	src\eeprom.c:59: while(i<SECTOR1_LENGTH) eeprom_buf[i] = *(&eep_motor+i++);
      00034A 80 ED            [24]  697 	sjmp	00101$
      00034C                        698 00112$:
      00034C                        699 00104$:
      00034C BF 20 00         [24]  700 	cjne	r7,#0x20,00128$
      00034F                        701 00128$:
      00034F 50 18            [24]  702 	jnc	00106$
      000351 EF               [12]  703 	mov	a,r7
      000352 24 BD            [12]  704 	add	a,#_eeprom_buf
      000354 FD               [12]  705 	mov	r5,a
      000355 E4               [12]  706 	clr	a
      000356 34 00            [12]  707 	addc	a,#(_eeprom_buf >> 8)
      000358 FE               [12]  708 	mov	r6,a
      000359 8F 82            [24]  709 	mov	dpl,r7
      00035B 75 83 F0         [24]  710 	mov	dph,#(_eep_motor >> 8)
      00035E 0F               [12]  711 	inc	r7
      00035F E4               [12]  712 	clr	a
      000360 93               [24]  713 	movc	a,@a+dptr
      000361 FC               [12]  714 	mov	r4,a
      000362 8D 82            [24]  715 	mov	dpl,r5
      000364 8E 83            [24]  716 	mov	dph,r6
      000366 F0               [24]  717 	movx	@dptr,a
      000367 80 E3            [24]  718 	sjmp	00104$
      000369                        719 00106$:
                                    720 ;	src\eeprom.c:61: IAP_xoasector(SECTOR1);
      000369 90 00 00         [24]  721 	mov	dptr,#0x0000
                                    722 ;	src\eeprom.c:62: }
      00036C 02 03 1C         [24]  723 	ljmp	_IAP_xoasector
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'IAP_ghisector1'
                                    726 ;------------------------------------------------------------
                                    727 ;i                         Allocated to registers r7 
                                    728 ;------------------------------------------------------------
                                    729 ;	src\eeprom.c:64: void IAP_ghisector1(){
                                    730 ;	-----------------------------------------
                                    731 ;	 function IAP_ghisector1
                                    732 ;	-----------------------------------------
      00036F                        733 _IAP_ghisector1:
                                    734 ;	src\eeprom.c:66: while(i<SECTOR1_LENGTH){
      00036F 7F 00            [12]  735 	mov	r7,#0x00
      000371                        736 00101$:
      000371 BF 20 00         [24]  737 	cjne	r7,#0x20,00115$
      000374                        738 00115$:
      000374 50 29            [24]  739 	jnc	00104$
                                    740 ;	src\eeprom.c:67: IAP_CONTR = ENABLE_IAP;
      000376 75 C7 83         [24]  741 	mov	_IAP_CONTR,#0x83
                                    742 ;	src\eeprom.c:68: IAP_CMD = CMD_PROGRAM;
      000379 75 C5 02         [24]  743 	mov	_IAP_CMD,#0x02
                                    744 ;	src\eeprom.c:69: IAP_ADDRL = i;
      00037C 8F C4            [24]  745 	mov	_IAP_ADDRL,r7
                                    746 ;	src\eeprom.c:70: IAP_ADDRH = 0;
      00037E 75 C3 00         [24]  747 	mov	_IAP_ADDRH,#0x00
                                    748 ;	src\eeprom.c:71: IAP_DATA = eeprom_buf[i++];
      000381 EF               [12]  749 	mov	a,r7
      000382 24 BD            [12]  750 	add	a,#_eeprom_buf
      000384 F5 82            [12]  751 	mov	dpl,a
      000386 E4               [12]  752 	clr	a
      000387 34 00            [12]  753 	addc	a,#(_eeprom_buf >> 8)
      000389 F5 83            [12]  754 	mov	dph,a
      00038B 0F               [12]  755 	inc	r7
      00038C E0               [24]  756 	movx	a,@dptr
      00038D F5 C2            [12]  757 	mov	_IAP_DATA,a
                                    758 ;	src\eeprom.c:72: IAP_TRIG = 0x5a;
      00038F 75 C6 5A         [24]  759 	mov	_IAP_TRIG,#0x5a
                                    760 ;	src\eeprom.c:73: IAP_TRIG = 0xa5;
      000392 75 C6 A5         [24]  761 	mov	_IAP_TRIG,#0xa5
                                    762 ;	src\eeprom.c:74: _nop_();
      000395 00               [12]  763 	NOP	
                                    764 ;	src\eeprom.c:75: IAP_cho();
      000396 C0 07            [24]  765 	push	ar7
      000398 12 02 CD         [24]  766 	lcall	_IAP_cho
      00039B D0 07            [24]  767 	pop	ar7
      00039D 80 D2            [24]  768 	sjmp	00101$
      00039F                        769 00104$:
                                    770 ;	src\eeprom.c:77: }
      00039F 22               [24]  771 	ret
                                    772 	.area CSEG    (CODE)
                                    773 	.area CONST   (CODE)
                           00F000   774 _eep_motor	=	0xf000
                           00F001   775 _eep_baocao	=	0xf001
                           00F002   776 _eep_gpson	=	0xf002
                           00F003   777 _eep_ngayreset	=	0xf003
                           00F004   778 _eep_gioreset	=	0xf004
                           00F005   779 _eep_norreset	=	0xf005
                           00F006   780 _eep_giosacxa	=	0xf006
                           00F007   781 _eep_tatmoden	=	0xf007
                           00F010   782 _eep_mp3	=	0xf010
                           00F011   783 _eep_phonephu	=	0xf011
                           00F01D   784 _eep_loithesim	=	0xf01d
                           00F01E   785 _eep_debug	=	0xf01e
                           00F01F   786 _eep_cam	=	0xf01f
                           00F200   787 _eep_phut1	=	0xf200
                           00F201   788 _eep_gio1	=	0xf201
                           00F202   789 _eep_phut2	=	0xf202
                           00F203   790 _eep_gio2	=	0xf203
                           00F204   791 _eep_phut3	=	0xf204
                           00F205   792 _eep_gio3	=	0xf205
                           00F206   793 _eep_phut4	=	0xf206
                           00F207   794 _eep_gio4	=	0xf207
                                    795 	.area XINIT   (CODE)
                                    796 	.area CABS    (ABS,CODE)
