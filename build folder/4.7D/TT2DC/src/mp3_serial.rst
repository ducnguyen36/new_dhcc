                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module mp3_serial
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
                                    223 	.globl _mp3_play_PARM_3
                                    224 	.globl _mp3_play_PARM_2
                                    225 	.globl _mp3_serial_init
                                    226 	.globl _mp3_play
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           0000E0   232 _ACC	=	0x00e0
                           0000F0   233 _B	=	0x00f0
                           0000D0   234 _PSW	=	0x00d0
                           000081   235 _SP	=	0x0081
                           000082   236 _DPL	=	0x0082
                           000083   237 _DPH	=	0x0083
                           000080   238 _P0	=	0x0080
                           000090   239 _P1	=	0x0090
                           0000A0   240 _P2	=	0x00a0
                           0000B0   241 _P3	=	0x00b0
                           0000C0   242 _P4	=	0x00c0
                           0000C8   243 _P5	=	0x00c8
                           0000E8   244 _P6	=	0x00e8
                           0000F8   245 _P7	=	0x00f8
                           000094   246 _P0M0	=	0x0094
                           000093   247 _P0M1	=	0x0093
                           000092   248 _P1M0	=	0x0092
                           000091   249 _P1M1	=	0x0091
                           000096   250 _P2M0	=	0x0096
                           000095   251 _P2M1	=	0x0095
                           0000B2   252 _P3M0	=	0x00b2
                           0000B1   253 _P3M1	=	0x00b1
                           0000B4   254 _P4M0	=	0x00b4
                           0000B3   255 _P4M1	=	0x00b3
                           0000CA   256 _P5M0	=	0x00ca
                           0000C9   257 _P5M1	=	0x00c9
                           0000CC   258 _P6M0	=	0x00cc
                           0000CB   259 _P6M1	=	0x00cb
                           0000E2   260 _P7M0	=	0x00e2
                           0000E1   261 _P7M1	=	0x00e1
                           000087   262 _PCON	=	0x0087
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           0000A2   265 _P_SW1	=	0x00a2
                           000097   266 _CLK_DIV	=	0x0097
                           0000A1   267 _BUS_SPEED	=	0x00a1
                           00009D   268 _P1ASF	=	0x009d
                           0000BA   269 _P_SW2	=	0x00ba
                           0000A8   270 _IE	=	0x00a8
                           0000B8   271 _IP	=	0x00b8
                           0000AF   272 _IE2	=	0x00af
                           0000B5   273 _IP2	=	0x00b5
                           00008F   274 _INT_CLKO	=	0x008f
                           000088   275 _TCON	=	0x0088
                           000089   276 _TMOD	=	0x0089
                           00008A   277 _TL0	=	0x008a
                           00008B   278 _TL1	=	0x008b
                           00008C   279 _TH0	=	0x008c
                           00008D   280 _TH1	=	0x008d
                           0000D1   281 _T4T3M	=	0x00d1
                           0000D2   282 _T4H	=	0x00d2
                           0000D3   283 _T4L	=	0x00d3
                           0000D4   284 _T3H	=	0x00d4
                           0000D5   285 _T3L	=	0x00d5
                           0000D6   286 _T2H	=	0x00d6
                           0000D7   287 _T2L	=	0x00d7
                           0000AA   288 _WKTCL	=	0x00aa
                           0000AB   289 _WKTCH	=	0x00ab
                           0000C1   290 _WDT_CONTR	=	0x00c1
                           000098   291 _SCON	=	0x0098
                           000099   292 _SBUF	=	0x0099
                           00009A   293 _S2CON	=	0x009a
                           00009B   294 _S2BUF	=	0x009b
                           0000AC   295 _S3CON	=	0x00ac
                           0000AD   296 _S3BUF	=	0x00ad
                           000084   297 _S4CON	=	0x0084
                           000085   298 _S4BUF	=	0x0085
                           0000A9   299 _SADDR	=	0x00a9
                           0000B9   300 _SADEN	=	0x00b9
                           0000BC   301 _ADC_CONTR	=	0x00bc
                           0000BD   302 _ADC_RES	=	0x00bd
                           0000BE   303 _ADC_RESL	=	0x00be
                           0000CD   304 _SPSTAT	=	0x00cd
                           0000CE   305 _SPCTL	=	0x00ce
                           0000CF   306 _SPDAT	=	0x00cf
                           0000C2   307 _IAP_DATA	=	0x00c2
                           0000C3   308 _IAP_ADDRH	=	0x00c3
                           0000C4   309 _IAP_ADDRL	=	0x00c4
                           0000C5   310 _IAP_CMD	=	0x00c5
                           0000C6   311 _IAP_TRIG	=	0x00c6
                           0000C7   312 _IAP_CONTR	=	0x00c7
                           0000D8   313 _CCON	=	0x00d8
                           0000D9   314 _CMOD	=	0x00d9
                           0000E9   315 _CL	=	0x00e9
                           0000F9   316 _CH	=	0x00f9
                           0000DA   317 _CCAPM0	=	0x00da
                           0000DB   318 _CCAPM1	=	0x00db
                           0000DC   319 _CCAPM2	=	0x00dc
                           0000EA   320 _CCAP0L	=	0x00ea
                           0000EB   321 _CCAP1L	=	0x00eb
                           0000EC   322 _CCAP2L	=	0x00ec
                           0000F2   323 _PCA_PWM0	=	0x00f2
                           0000F3   324 _PCA_PWM1	=	0x00f3
                           0000F4   325 _PCA_PWM2	=	0x00f4
                           0000FA   326 _CCAP0H	=	0x00fa
                           0000FB   327 _CCAP1H	=	0x00fb
                           0000FC   328 _CCAP2H	=	0x00fc
                           0000E6   329 _CMPCR1	=	0x00e6
                           0000E7   330 _CMPCR2	=	0x00e7
                           0000F1   331 _PWMCFG	=	0x00f1
                           0000F5   332 _PWMCR	=	0x00f5
                           0000F6   333 _PWMIF	=	0x00f6
                           0000F7   334 _PWMFDCR	=	0x00f7
                                    335 ;--------------------------------------------------------
                                    336 ; special function bits
                                    337 ;--------------------------------------------------------
                                    338 	.area RSEG    (ABS,DATA)
      000000                        339 	.org 0x0000
                           0000D7   340 _CY	=	0x00d7
                           0000D6   341 _AC	=	0x00d6
                           0000D5   342 _F0	=	0x00d5
                           0000D4   343 _RS1	=	0x00d4
                           0000D3   344 _RS0	=	0x00d3
                           0000D2   345 _OV	=	0x00d2
                           0000D1   346 _F1	=	0x00d1
                           0000D0   347 _P	=	0x00d0
                           000080   348 _P00	=	0x0080
                           000081   349 _P01	=	0x0081
                           000082   350 _P02	=	0x0082
                           000083   351 _P03	=	0x0083
                           000084   352 _P04	=	0x0084
                           000085   353 _P05	=	0x0085
                           000086   354 _P06	=	0x0086
                           000087   355 _P07	=	0x0087
                           000090   356 _P10	=	0x0090
                           000091   357 _P11	=	0x0091
                           000092   358 _P12	=	0x0092
                           000093   359 _P13	=	0x0093
                           000094   360 _P14	=	0x0094
                           000095   361 _P15	=	0x0095
                           000096   362 _P16	=	0x0096
                           000097   363 _P17	=	0x0097
                           0000A0   364 _P20	=	0x00a0
                           0000A1   365 _P21	=	0x00a1
                           0000A2   366 _P22	=	0x00a2
                           0000A3   367 _P23	=	0x00a3
                           0000A4   368 _P24	=	0x00a4
                           0000A5   369 _P25	=	0x00a5
                           0000A6   370 _P26	=	0x00a6
                           0000A7   371 _P27	=	0x00a7
                           0000B0   372 _P30	=	0x00b0
                           0000B1   373 _P31	=	0x00b1
                           0000B2   374 _P32	=	0x00b2
                           0000B3   375 _P33	=	0x00b3
                           0000B4   376 _P34	=	0x00b4
                           0000B5   377 _P35	=	0x00b5
                           0000B6   378 _P36	=	0x00b6
                           0000B7   379 _P37	=	0x00b7
                           0000C0   380 _P40	=	0x00c0
                           0000C1   381 _P41	=	0x00c1
                           0000C2   382 _P42	=	0x00c2
                           0000C3   383 _P43	=	0x00c3
                           0000C4   384 _P44	=	0x00c4
                           0000C5   385 _P45	=	0x00c5
                           0000C6   386 _P46	=	0x00c6
                           0000C7   387 _P47	=	0x00c7
                           0000C8   388 _P50	=	0x00c8
                           0000C9   389 _P51	=	0x00c9
                           0000CA   390 _P52	=	0x00ca
                           0000CB   391 _P53	=	0x00cb
                           0000CC   392 _P54	=	0x00cc
                           0000CD   393 _P55	=	0x00cd
                           0000CE   394 _P56	=	0x00ce
                           0000CF   395 _P57	=	0x00cf
                           0000E8   396 _P60	=	0x00e8
                           0000E9   397 _P61	=	0x00e9
                           0000EA   398 _P62	=	0x00ea
                           0000EB   399 _P63	=	0x00eb
                           0000EC   400 _P64	=	0x00ec
                           0000ED   401 _P65	=	0x00ed
                           0000EE   402 _P66	=	0x00ee
                           0000EF   403 _P67	=	0x00ef
                           0000F8   404 _P70	=	0x00f8
                           0000F9   405 _P71	=	0x00f9
                           0000FA   406 _P72	=	0x00fa
                           0000FB   407 _P73	=	0x00fb
                           0000FC   408 _P74	=	0x00fc
                           0000FD   409 _P75	=	0x00fd
                           0000FE   410 _P76	=	0x00fe
                           0000FF   411 _P77	=	0x00ff
                           0000AF   412 _EA	=	0x00af
                           0000AE   413 _ELVD	=	0x00ae
                           0000AD   414 _EADC	=	0x00ad
                           0000AC   415 _ES	=	0x00ac
                           0000AB   416 _ET1	=	0x00ab
                           0000AA   417 _EX1	=	0x00aa
                           0000A9   418 _ET0	=	0x00a9
                           0000A8   419 _EX0	=	0x00a8
                           0000BF   420 _PPCA	=	0x00bf
                           0000BE   421 _PLVD	=	0x00be
                           0000BD   422 _PADC	=	0x00bd
                           0000BC   423 _PS	=	0x00bc
                           0000BB   424 _PT1	=	0x00bb
                           0000BA   425 _PX1	=	0x00ba
                           0000B9   426 _PT0	=	0x00b9
                           0000B8   427 _PX0	=	0x00b8
                           00008F   428 _TF1	=	0x008f
                           00008E   429 _TR1	=	0x008e
                           00008D   430 _TF0	=	0x008d
                           00008C   431 _TR0	=	0x008c
                           00008B   432 _IE1	=	0x008b
                           00008A   433 _IT1	=	0x008a
                           000089   434 _IE0	=	0x0089
                           000088   435 _IT0	=	0x0088
                           00009F   436 _SM0	=	0x009f
                           00009E   437 _SM1	=	0x009e
                           00009D   438 _SM2	=	0x009d
                           00009C   439 _REN	=	0x009c
                           00009B   440 _TB8	=	0x009b
                           00009A   441 _RB8	=	0x009a
                           000099   442 _TI	=	0x0099
                           000098   443 _RI	=	0x0098
                           0000DF   444 _CF	=	0x00df
                           0000DE   445 _CR	=	0x00de
                           0000DA   446 _CCF2	=	0x00da
                           0000D9   447 _CCF1	=	0x00d9
                           0000D8   448 _CCF0	=	0x00d8
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
      000019                        458 _mp3_play_PARM_2:
      000019                        459 	.ds 1
      00001A                        460 _mp3_play_PARM_3:
      00001A                        461 	.ds 1
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable items in internal ram
                                    464 ;--------------------------------------------------------
                                    465 ;--------------------------------------------------------
                                    466 ; indirectly addressable internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area ISEG    (DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; absolute internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area IABS    (ABS,DATA)
                                    473 	.area IABS    (ABS,DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; bit data
                                    476 ;--------------------------------------------------------
                                    477 	.area BSEG    (BIT)
                                    478 ;--------------------------------------------------------
                                    479 ; paged external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area PSEG    (PAG,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XSEG    (XDATA)
      00013A                        486 _mp3_play_mp3_buf_65537_5:
      00013A                        487 	.ds 10
                                    488 ;--------------------------------------------------------
                                    489 ; absolute external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XABS    (ABS,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; external initialized ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XISEG   (XDATA)
                                    496 	.area HOME    (CODE)
                                    497 	.area GSINIT0 (CODE)
                                    498 	.area GSINIT1 (CODE)
                                    499 	.area GSINIT2 (CODE)
                                    500 	.area GSINIT3 (CODE)
                                    501 	.area GSINIT4 (CODE)
                                    502 	.area GSINIT5 (CODE)
                                    503 	.area GSINIT  (CODE)
                                    504 	.area GSFINAL (CODE)
                                    505 	.area CSEG    (CODE)
                                    506 ;--------------------------------------------------------
                                    507 ; global & static initialisations
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; Home
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area HOME    (CODE)
                                    518 ;--------------------------------------------------------
                                    519 ; code
                                    520 ;--------------------------------------------------------
                                    521 	.area CSEG    (CODE)
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'mp3_serial_init'
                                    524 ;------------------------------------------------------------
                                    525 ;	src\mp3_serial.c:3: void mp3_serial_init(){
                                    526 ;	-----------------------------------------
                                    527 ;	 function mp3_serial_init
                                    528 ;	-----------------------------------------
      008288                        529 _mp3_serial_init:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
                                    538 ;	src\mp3_serial.c:4: P_SW2 = 0x01; // USART 2 on P4.6 and P4.7 pins
      008288 75 BA 01         [24]  539 	mov	_P_SW2,#0x01
                                    540 ;	src\mp3_serial.c:5: S2CON = 0x50;		//8bit and variable baudrate
      00828B 75 9A 50         [24]  541 	mov	_S2CON,#0x50
                                    542 ;	src\mp3_serial.c:6: AUXR |= 0x04;		//Timer2's clock is Fosc (1T)
      00828E 43 8E 04         [24]  543 	orl	_AUXR,#0x04
                                    544 ;	src\mp3_serial.c:7: T2L = (65536 - (FOSC/4/mp3_BAUD)); //Setthe preload value
      008291 75 D7 C8         [24]  545 	mov	_T2L,#0xc8
                                    546 ;	src\mp3_serial.c:8: T2H = (65536 - (FOSC/4/mp3_BAUD))>>8;
      008294 75 D6 FE         [24]  547 	mov	_T2H,#0xfe
                                    548 ;	src\mp3_serial.c:9: AUXR |= 0x10;		//Timer2 running
      008297 43 8E 10         [24]  549 	orl	_AUXR,#0x10
                                    550 ;	src\mp3_serial.c:10: IE2 = 0x01;
      00829A 75 AF 01         [24]  551 	mov	_IE2,#0x01
                                    552 ;	src\mp3_serial.c:11: }
      00829D 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'mp3_play'
                                    556 ;------------------------------------------------------------
                                    557 ;hour                      Allocated with name '_mp3_play_PARM_2'
                                    558 ;minute                    Allocated with name '_mp3_play_PARM_3'
                                    559 ;date                      Allocated to registers r7 
                                    560 ;song                      Allocated to registers r3 r4 
                                    561 ;checksum                  Allocated to registers r5 r6 
                                    562 ;i                         Allocated to registers r7 
                                    563 ;mp3_buf                   Allocated with name '_mp3_play_mp3_buf_65537_5'
                                    564 ;------------------------------------------------------------
                                    565 ;	src\mp3_serial.c:13: void mp3_play(u8 date, u8 hour, u8 minute){
                                    566 ;	-----------------------------------------
                                    567 ;	 function mp3_play
                                    568 ;	-----------------------------------------
      00829E                        569 _mp3_play:
      00829E AF 82            [24]  570 	mov	r7,dpl
                                    571 ;	src\mp3_serial.c:15: u16 song = hour*100+minute; //13:47 => 1347 //hour*12 + minute/5 + date*1000
      0082A0 AD 19            [24]  572 	mov	r5,_mp3_play_PARM_2
      0082A2 7E 00            [12]  573 	mov	r6,#0x00
      0082A4 8D 1B            [24]  574 	mov	__mulint_PARM_2,r5
      0082A6 8E 1C            [24]  575 	mov	(__mulint_PARM_2 + 1),r6
      0082A8 90 00 64         [24]  576 	mov	dptr,#0x0064
      0082AB C0 07            [24]  577 	push	ar7
      0082AD C0 06            [24]  578 	push	ar6
      0082AF C0 05            [24]  579 	push	ar5
      0082B1 12 83 E1         [24]  580 	lcall	__mulint
      0082B4 AB 82            [24]  581 	mov	r3,dpl
      0082B6 AC 83            [24]  582 	mov	r4,dph
      0082B8 D0 05            [24]  583 	pop	ar5
      0082BA D0 06            [24]  584 	pop	ar6
      0082BC D0 07            [24]  585 	pop	ar7
      0082BE A9 1A            [24]  586 	mov	r1,_mp3_play_PARM_3
      0082C0 7A 00            [12]  587 	mov	r2,#0x00
      0082C2 E9               [12]  588 	mov	a,r1
      0082C3 2B               [12]  589 	add	a,r3
      0082C4 FB               [12]  590 	mov	r3,a
      0082C5 EA               [12]  591 	mov	a,r2
      0082C6 3C               [12]  592 	addc	a,r4
      0082C7 FC               [12]  593 	mov	r4,a
                                    594 ;	src\mp3_serial.c:16: if(date<10) song = hour*12 + minute/5 + date*1000; //13:47 => 1347 //hour*12 + minute/5 + date*1000
      0082C8 BF 0A 00         [24]  595 	cjne	r7,#0x0a,00128$
      0082CB                        596 00128$:
      0082CB 50 56            [24]  597 	jnc	00102$
      0082CD 8D 1B            [24]  598 	mov	__mulint_PARM_2,r5
      0082CF 8E 1C            [24]  599 	mov	(__mulint_PARM_2 + 1),r6
      0082D1 90 00 0C         [24]  600 	mov	dptr,#0x000c
      0082D4 C0 07            [24]  601 	push	ar7
      0082D6 C0 02            [24]  602 	push	ar2
      0082D8 C0 01            [24]  603 	push	ar1
      0082DA 12 83 E1         [24]  604 	lcall	__mulint
      0082DD AD 82            [24]  605 	mov	r5,dpl
      0082DF AE 83            [24]  606 	mov	r6,dph
      0082E1 D0 01            [24]  607 	pop	ar1
      0082E3 D0 02            [24]  608 	pop	ar2
      0082E5 75 1B 05         [24]  609 	mov	__divsint_PARM_2,#0x05
      0082E8 75 1C 00         [24]  610 	mov	(__divsint_PARM_2 + 1),#0x00
      0082EB 89 82            [24]  611 	mov	dpl,r1
      0082ED 8A 83            [24]  612 	mov	dph,r2
      0082EF C0 06            [24]  613 	push	ar6
      0082F1 C0 05            [24]  614 	push	ar5
      0082F3 12 84 9D         [24]  615 	lcall	__divsint
      0082F6 A9 82            [24]  616 	mov	r1,dpl
      0082F8 AA 83            [24]  617 	mov	r2,dph
      0082FA D0 05            [24]  618 	pop	ar5
      0082FC D0 06            [24]  619 	pop	ar6
      0082FE D0 07            [24]  620 	pop	ar7
      008300 E9               [12]  621 	mov	a,r1
      008301 2D               [12]  622 	add	a,r5
      008302 FD               [12]  623 	mov	r5,a
      008303 EA               [12]  624 	mov	a,r2
      008304 3E               [12]  625 	addc	a,r6
      008305 FE               [12]  626 	mov	r6,a
      008306 8F 1B            [24]  627 	mov	__mulint_PARM_2,r7
      008308 75 1C 00         [24]  628 	mov	(__mulint_PARM_2 + 1),#0x00
      00830B 90 03 E8         [24]  629 	mov	dptr,#0x03e8
      00830E C0 06            [24]  630 	push	ar6
      008310 C0 05            [24]  631 	push	ar5
      008312 12 83 E1         [24]  632 	lcall	__mulint
      008315 AA 82            [24]  633 	mov	r2,dpl
      008317 AF 83            [24]  634 	mov	r7,dph
      008319 D0 05            [24]  635 	pop	ar5
      00831B D0 06            [24]  636 	pop	ar6
      00831D EA               [12]  637 	mov	a,r2
      00831E 2D               [12]  638 	add	a,r5
      00831F FB               [12]  639 	mov	r3,a
      008320 EF               [12]  640 	mov	a,r7
      008321 3E               [12]  641 	addc	a,r6
      008322 FC               [12]  642 	mov	r4,a
      008323                        643 00102$:
                                    644 ;	src\mp3_serial.c:17: u16 checksum = 65257-((u8)song)-(song>>8);
      008323 8B 07            [24]  645 	mov	ar7,r3
      008325 8F 05            [24]  646 	mov	ar5,r7
      008327 7E 00            [12]  647 	mov	r6,#0x00
      008329 74 E9            [12]  648 	mov	a,#0xe9
      00832B C3               [12]  649 	clr	c
      00832C 9D               [12]  650 	subb	a,r5
      00832D FD               [12]  651 	mov	r5,a
      00832E 74 FE            [12]  652 	mov	a,#0xfe
      008330 9E               [12]  653 	subb	a,r6
      008331 FE               [12]  654 	mov	r6,a
      008332 8C 01            [24]  655 	mov	ar1,r4
      008334 7A 00            [12]  656 	mov	r2,#0x00
      008336 ED               [12]  657 	mov	a,r5
      008337 C3               [12]  658 	clr	c
      008338 99               [12]  659 	subb	a,r1
      008339 FD               [12]  660 	mov	r5,a
      00833A EE               [12]  661 	mov	a,r6
      00833B 9A               [12]  662 	subb	a,r2
      00833C FE               [12]  663 	mov	r6,a
                                    664 ;	src\mp3_serial.c:18: u8 __xdata mp3_buf[] = {126,255,6,0x12,0,song>>8,song,checksum>>8,checksum,239};
      00833D 90 01 3A         [24]  665 	mov	dptr,#_mp3_play_mp3_buf_65537_5
      008340 74 7E            [12]  666 	mov	a,#0x7e
      008342 F0               [24]  667 	movx	@dptr,a
      008343 90 01 3B         [24]  668 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0001)
      008346 74 FF            [12]  669 	mov	a,#0xff
      008348 F0               [24]  670 	movx	@dptr,a
      008349 90 01 3C         [24]  671 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0002)
      00834C 74 06            [12]  672 	mov	a,#0x06
      00834E F0               [24]  673 	movx	@dptr,a
      00834F 90 01 3D         [24]  674 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0003)
      008352 74 12            [12]  675 	mov	a,#0x12
      008354 F0               [24]  676 	movx	@dptr,a
      008355 90 01 3E         [24]  677 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0004)
      008358 E4               [12]  678 	clr	a
      008359 F0               [24]  679 	movx	@dptr,a
      00835A 8C 03            [24]  680 	mov	ar3,r4
      00835C 90 01 3F         [24]  681 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0005)
      00835F EB               [12]  682 	mov	a,r3
      008360 F0               [24]  683 	movx	@dptr,a
      008361 90 01 40         [24]  684 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0006)
      008364 EF               [12]  685 	mov	a,r7
      008365 F0               [24]  686 	movx	@dptr,a
      008366 8E 07            [24]  687 	mov	ar7,r6
      008368 90 01 41         [24]  688 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0007)
      00836B EF               [12]  689 	mov	a,r7
      00836C F0               [24]  690 	movx	@dptr,a
      00836D 90 01 42         [24]  691 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0008)
      008370 ED               [12]  692 	mov	a,r5
      008371 F0               [24]  693 	movx	@dptr,a
      008372 90 01 43         [24]  694 	mov	dptr,#(_mp3_play_mp3_buf_65537_5 + 0x0009)
      008375 74 EF            [12]  695 	mov	a,#0xef
      008377 F0               [24]  696 	movx	@dptr,a
                                    697 ;	src\mp3_serial.c:20: for(i=0;i<10;i++){
      008378 7F 00            [12]  698 	mov	r7,#0x00
      00837A                        699 00107$:
                                    700 ;	src\mp3_serial.c:21: mp3_SBUF = mp3_buf[i];
      00837A EF               [12]  701 	mov	a,r7
      00837B 24 3A            [12]  702 	add	a,#_mp3_play_mp3_buf_65537_5
      00837D F5 82            [12]  703 	mov	dpl,a
      00837F E4               [12]  704 	clr	a
      008380 34 01            [12]  705 	addc	a,#(_mp3_play_mp3_buf_65537_5 >> 8)
      008382 F5 83            [12]  706 	mov	dph,a
      008384 E0               [24]  707 	movx	a,@dptr
      008385 F5 9B            [12]  708 	mov	_S2BUF,a
                                    709 ;	src\mp3_serial.c:22: while(!mp3_TI)WATCHDOG;
      008387                        710 00103$:
      008387 E5 9A            [12]  711 	mov	a,_S2CON
      008389 03               [12]  712 	rr	a
      00838A 54 01            [12]  713 	anl	a,#0x01
      00838C 70 05            [24]  714 	jnz	00105$
      00838E 43 C1 10         [24]  715 	orl	_WDT_CONTR,#0x10
      008391 80 F4            [24]  716 	sjmp	00103$
      008393                        717 00105$:
                                    718 ;	src\mp3_serial.c:23: S2CON &= 0xFD;
      008393 53 9A FD         [24]  719 	anl	_S2CON,#0xfd
                                    720 ;	src\mp3_serial.c:20: for(i=0;i<10;i++){
      008396 0F               [12]  721 	inc	r7
      008397 BF 0A 00         [24]  722 	cjne	r7,#0x0a,00131$
      00839A                        723 00131$:
      00839A 40 DE            [24]  724 	jc	00107$
                                    725 ;	src\mp3_serial.c:25: }
      00839C 22               [24]  726 	ret
                                    727 	.area CSEG    (CODE)
                                    728 	.area CONST   (CODE)
                                    729 	.area XINIT   (CODE)
                                    730 	.area CABS    (ABS,CODE)
