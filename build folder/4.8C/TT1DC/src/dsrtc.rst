                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module dsrtc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _bcd2hex
                                     12 	.globl _hex2bcd
                                     13 	.globl _i2c_read
                                     14 	.globl _i2c_stop
                                     15 	.globl _i2c_start
                                     16 	.globl _i2c_write
                                     17 	.globl _rtc_setdate_PARM_4
                                     18 	.globl _rtc_setdate_PARM_3
                                     19 	.globl _rtc_setdate_PARM_2
                                     20 	.globl _rtc_settime_PARM_3
                                     21 	.globl _rtc_settime_PARM_2
                                     22 	.globl _rtc_gettime_PARM_3
                                     23 	.globl _rtc_gettime_PARM_2
                                     24 	.globl _rtc_getdate_PARM_4
                                     25 	.globl _rtc_getdate_PARM_3
                                     26 	.globl _rtc_getdate_PARM_2
                                     27 	.globl _rtc_init
                                     28 	.globl _rtc_getdate
                                     29 	.globl _rtc_gettime
                                     30 	.globl _rtc_settime
                                     31 	.globl _rtc_setdate
                                     32 ;--------------------------------------------------------
                                     33 ; special function registers
                                     34 ;--------------------------------------------------------
                                     35 	.area RSEG    (ABS,DATA)
      000000                         36 	.org 0x0000
                                     37 ;--------------------------------------------------------
                                     38 ; special function bits
                                     39 ;--------------------------------------------------------
                                     40 	.area RSEG    (ABS,DATA)
      000000                         41 	.org 0x0000
                                     42 ;--------------------------------------------------------
                                     43 ; overlayable register banks
                                     44 ;--------------------------------------------------------
                                     45 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         46 	.ds 8
                                     47 ;--------------------------------------------------------
                                     48 ; internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DSEG    (DATA)
      00002B                         51 _rtc_getdate_PARM_2:
      00002B                         52 	.ds 3
      00002E                         53 _rtc_getdate_PARM_3:
      00002E                         54 	.ds 3
      000031                         55 _rtc_getdate_PARM_4:
      000031                         56 	.ds 3
      000034                         57 _rtc_gettime_PARM_2:
      000034                         58 	.ds 3
      000037                         59 _rtc_gettime_PARM_3:
      000037                         60 	.ds 3
      00003A                         61 _rtc_settime_PARM_2:
      00003A                         62 	.ds 1
      00003B                         63 _rtc_settime_PARM_3:
      00003B                         64 	.ds 1
      00003C                         65 _rtc_setdate_PARM_2:
      00003C                         66 	.ds 1
      00003D                         67 _rtc_setdate_PARM_3:
      00003D                         68 	.ds 1
      00003E                         69 _rtc_setdate_PARM_4:
      00003E                         70 	.ds 1
                                     71 ;--------------------------------------------------------
                                     72 ; overlayable items in internal ram
                                     73 ;--------------------------------------------------------
                                     74 	.area	OSEG    (OVR,DATA)
                                     75 ;--------------------------------------------------------
                                     76 ; indirectly addressable internal ram data
                                     77 ;--------------------------------------------------------
                                     78 	.area ISEG    (DATA)
                                     79 ;--------------------------------------------------------
                                     80 ; absolute internal ram data
                                     81 ;--------------------------------------------------------
                                     82 	.area IABS    (ABS,DATA)
                                     83 	.area IABS    (ABS,DATA)
                                     84 ;--------------------------------------------------------
                                     85 ; bit data
                                     86 ;--------------------------------------------------------
                                     87 	.area BSEG    (BIT)
                                     88 ;--------------------------------------------------------
                                     89 ; paged external ram data
                                     90 ;--------------------------------------------------------
                                     91 	.area PSEG    (PAG,XDATA)
                                     92 ;--------------------------------------------------------
                                     93 ; external ram data
                                     94 ;--------------------------------------------------------
                                     95 	.area XSEG    (XDATA)
                                     96 ;--------------------------------------------------------
                                     97 ; absolute external ram data
                                     98 ;--------------------------------------------------------
                                     99 	.area XABS    (ABS,XDATA)
                                    100 ;--------------------------------------------------------
                                    101 ; external initialized ram data
                                    102 ;--------------------------------------------------------
                                    103 	.area XISEG   (XDATA)
                                    104 	.area HOME    (CODE)
                                    105 	.area GSINIT0 (CODE)
                                    106 	.area GSINIT1 (CODE)
                                    107 	.area GSINIT2 (CODE)
                                    108 	.area GSINIT3 (CODE)
                                    109 	.area GSINIT4 (CODE)
                                    110 	.area GSINIT5 (CODE)
                                    111 	.area GSINIT  (CODE)
                                    112 	.area GSFINAL (CODE)
                                    113 	.area CSEG    (CODE)
                                    114 ;--------------------------------------------------------
                                    115 ; global & static initialisations
                                    116 ;--------------------------------------------------------
                                    117 	.area HOME    (CODE)
                                    118 	.area GSINIT  (CODE)
                                    119 	.area GSFINAL (CODE)
                                    120 	.area GSINIT  (CODE)
                                    121 ;--------------------------------------------------------
                                    122 ; Home
                                    123 ;--------------------------------------------------------
                                    124 	.area HOME    (CODE)
                                    125 	.area HOME    (CODE)
                                    126 ;--------------------------------------------------------
                                    127 ; code
                                    128 ;--------------------------------------------------------
                                    129 	.area CSEG    (CODE)
                                    130 ;------------------------------------------------------------
                                    131 ;Allocation info for local variables in function 'hex2bcd'
                                    132 ;------------------------------------------------------------
                                    133 ;hex                       Allocated to registers r7 
                                    134 ;------------------------------------------------------------
                                    135 ;	src\dsrtc.c:3: u8 hex2bcd(u8 hex){
                                    136 ;	-----------------------------------------
                                    137 ;	 function hex2bcd
                                    138 ;	-----------------------------------------
      0000A7                        139 _hex2bcd:
                           000007   140 	ar7 = 0x07
                           000006   141 	ar6 = 0x06
                           000005   142 	ar5 = 0x05
                           000004   143 	ar4 = 0x04
                           000003   144 	ar3 = 0x03
                           000002   145 	ar2 = 0x02
                           000001   146 	ar1 = 0x01
                           000000   147 	ar0 = 0x00
      0000A7 AF 82            [24]  148 	mov	r7,dpl
                                    149 ;	src\dsrtc.c:4: return ((hex / 10) << 4) | (hex % 10);
      0000A9 7E 00            [12]  150 	mov	r6,#0x00
      0000AB 75 1B 0A         [24]  151 	mov	__divsint_PARM_2,#0x0a
                                    152 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000AE 8E 1C            [24]  153 	mov	(__divsint_PARM_2 + 1),r6
      0000B0 8F 82            [24]  154 	mov	dpl,r7
      0000B2 8E 83            [24]  155 	mov	dph,r6
      0000B4 C0 07            [24]  156 	push	ar7
      0000B6 C0 06            [24]  157 	push	ar6
      0000B8 12 84 0B         [24]  158 	lcall	__divsint
      0000BB AC 82            [24]  159 	mov	r4,dpl
      0000BD D0 06            [24]  160 	pop	ar6
      0000BF D0 07            [24]  161 	pop	ar7
      0000C1 EC               [12]  162 	mov	a,r4
      0000C2 C4               [12]  163 	swap	a
      0000C3 54 F0            [12]  164 	anl	a,#0xf0
      0000C5 FC               [12]  165 	mov	r4,a
      0000C6 75 1B 0A         [24]  166 	mov	__modsint_PARM_2,#0x0a
      0000C9 75 1C 00         [24]  167 	mov	(__modsint_PARM_2 + 1),#0x00
      0000CC 8F 82            [24]  168 	mov	dpl,r7
      0000CE 8E 83            [24]  169 	mov	dph,r6
      0000D0 C0 04            [24]  170 	push	ar4
      0000D2 12 83 D5         [24]  171 	lcall	__modsint
      0000D5 AE 82            [24]  172 	mov	r6,dpl
      0000D7 D0 04            [24]  173 	pop	ar4
      0000D9 EE               [12]  174 	mov	a,r6
      0000DA 4C               [12]  175 	orl	a,r4
      0000DB F5 82            [12]  176 	mov	dpl,a
                                    177 ;	src\dsrtc.c:5: }
      0000DD 22               [24]  178 	ret
                                    179 ;------------------------------------------------------------
                                    180 ;Allocation info for local variables in function 'bcd2hex'
                                    181 ;------------------------------------------------------------
                                    182 ;bcd                       Allocated to registers r7 
                                    183 ;------------------------------------------------------------
                                    184 ;	src\dsrtc.c:7: u8 bcd2hex(u8 bcd){
                                    185 ;	-----------------------------------------
                                    186 ;	 function bcd2hex
                                    187 ;	-----------------------------------------
      0000DE                        188 _bcd2hex:
                                    189 ;	src\dsrtc.c:8: return ((bcd>>4)*10) + (bcd & 0x0f);
      0000DE E5 82            [12]  190 	mov	a,dpl
      0000E0 FF               [12]  191 	mov	r7,a
      0000E1 C4               [12]  192 	swap	a
      0000E2 54 0F            [12]  193 	anl	a,#0x0f
      0000E4 75 F0 0A         [24]  194 	mov	b,#0x0a
      0000E7 A4               [48]  195 	mul	ab
      0000E8 FE               [12]  196 	mov	r6,a
      0000E9 74 0F            [12]  197 	mov	a,#0x0f
      0000EB 5F               [12]  198 	anl	a,r7
      0000EC 2E               [12]  199 	add	a,r6
      0000ED F5 82            [12]  200 	mov	dpl,a
                                    201 ;	src\dsrtc.c:9: }
      0000EF 22               [24]  202 	ret
                                    203 ;------------------------------------------------------------
                                    204 ;Allocation info for local variables in function 'rtc_init'
                                    205 ;------------------------------------------------------------
                                    206 ;	src\dsrtc.c:11: void rtc_init(){
                                    207 ;	-----------------------------------------
                                    208 ;	 function rtc_init
                                    209 ;	-----------------------------------------
      0000F0                        210 _rtc_init:
                                    211 ;	src\dsrtc.c:17: i2c_start();
      0000F0 12 03 EB         [24]  212 	lcall	_i2c_start
                                    213 ;	src\dsrtc.c:18: i2c_write(DS1307WRITE);
      0000F3 75 82 D0         [24]  214 	mov	dpl,#0xd0
      0000F6 12 04 2A         [24]  215 	lcall	_i2c_write
                                    216 ;	src\dsrtc.c:19: i2c_write(DS1307CONTROLADDRESS);
      0000F9 75 82 0E         [24]  217 	mov	dpl,#0x0e
      0000FC 12 04 2A         [24]  218 	lcall	_i2c_write
                                    219 ;	src\dsrtc.c:20: i2c_write(0x10);//ds3231 0x18 ds1307 0x10
      0000FF 75 82 10         [24]  220 	mov	dpl,#0x10
      000102 12 04 2A         [24]  221 	lcall	_i2c_write
                                    222 ;	src\dsrtc.c:21: i2c_stop();
                                    223 ;	src\dsrtc.c:22: }
      000105 02 04 06         [24]  224 	ljmp	_i2c_stop
                                    225 ;------------------------------------------------------------
                                    226 ;Allocation info for local variables in function 'rtc_getdate'
                                    227 ;------------------------------------------------------------
                                    228 ;pday                      Allocated with name '_rtc_getdate_PARM_2'
                                    229 ;pmonth                    Allocated with name '_rtc_getdate_PARM_3'
                                    230 ;pyear                     Allocated with name '_rtc_getdate_PARM_4'
                                    231 ;pdate                     Allocated to registers r5 r6 r7 
                                    232 ;------------------------------------------------------------
                                    233 ;	src\dsrtc.c:24: void rtc_getdate(u8 *pdate,u8 *pday, u8 *pmonth, u8 *pyear){
                                    234 ;	-----------------------------------------
                                    235 ;	 function rtc_getdate
                                    236 ;	-----------------------------------------
      000108                        237 _rtc_getdate:
      000108 AD 82            [24]  238 	mov	r5,dpl
      00010A AE 83            [24]  239 	mov	r6,dph
      00010C AF F0            [24]  240 	mov	r7,b
                                    241 ;	src\dsrtc.c:26: i2c_start();
      00010E C0 07            [24]  242 	push	ar7
      000110 C0 06            [24]  243 	push	ar6
      000112 C0 05            [24]  244 	push	ar5
      000114 12 03 EB         [24]  245 	lcall	_i2c_start
                                    246 ;	src\dsrtc.c:27: i2c_write(DS1307WRITE);
      000117 75 82 D0         [24]  247 	mov	dpl,#0xd0
      00011A 12 04 2A         [24]  248 	lcall	_i2c_write
                                    249 ;	src\dsrtc.c:28: i2c_write(DS1307DATEADDRESS);
      00011D 75 82 03         [24]  250 	mov	dpl,#0x03
      000120 12 04 2A         [24]  251 	lcall	_i2c_write
                                    252 ;	src\dsrtc.c:29: i2c_stop();
      000123 12 04 06         [24]  253 	lcall	_i2c_stop
                                    254 ;	src\dsrtc.c:30: i2c_start();
      000126 12 03 EB         [24]  255 	lcall	_i2c_start
                                    256 ;	src\dsrtc.c:31: i2c_write(DS1307READ);
      000129 75 82 D1         [24]  257 	mov	dpl,#0xd1
      00012C 12 04 2A         [24]  258 	lcall	_i2c_write
                                    259 ;	src\dsrtc.c:32: *pdate  = i2c_read(ACK);
                                    260 ;	assignBit
      00012F D2 00            [12]  261 	setb	_i2c_read_PARM_1
      000131 12 04 4F         [24]  262 	lcall	_i2c_read
      000134 AC 82            [24]  263 	mov	r4,dpl
      000136 D0 05            [24]  264 	pop	ar5
      000138 D0 06            [24]  265 	pop	ar6
      00013A D0 07            [24]  266 	pop	ar7
      00013C 8D 82            [24]  267 	mov	dpl,r5
      00013E 8E 83            [24]  268 	mov	dph,r6
      000140 8F F0            [24]  269 	mov	b,r7
      000142 EC               [12]  270 	mov	a,r4
      000143 12 83 34         [24]  271 	lcall	__gptrput
                                    272 ;	src\dsrtc.c:33: *pday 	= bcd2hex(i2c_read(ACK));
      000146 AD 2B            [24]  273 	mov	r5,_rtc_getdate_PARM_2
      000148 AE 2C            [24]  274 	mov	r6,(_rtc_getdate_PARM_2 + 1)
      00014A AF 2D            [24]  275 	mov	r7,(_rtc_getdate_PARM_2 + 2)
                                    276 ;	assignBit
      00014C D2 00            [12]  277 	setb	_i2c_read_PARM_1
      00014E C0 07            [24]  278 	push	ar7
      000150 C0 06            [24]  279 	push	ar6
      000152 C0 05            [24]  280 	push	ar5
      000154 12 04 4F         [24]  281 	lcall	_i2c_read
      000157 12 00 DE         [24]  282 	lcall	_bcd2hex
      00015A AC 82            [24]  283 	mov	r4,dpl
      00015C D0 05            [24]  284 	pop	ar5
      00015E D0 06            [24]  285 	pop	ar6
      000160 D0 07            [24]  286 	pop	ar7
      000162 8D 82            [24]  287 	mov	dpl,r5
      000164 8E 83            [24]  288 	mov	dph,r6
      000166 8F F0            [24]  289 	mov	b,r7
      000168 EC               [12]  290 	mov	a,r4
      000169 12 83 34         [24]  291 	lcall	__gptrput
                                    292 ;	src\dsrtc.c:34: *pmonth = bcd2hex(i2c_read(ACK));
      00016C AD 2E            [24]  293 	mov	r5,_rtc_getdate_PARM_3
      00016E AE 2F            [24]  294 	mov	r6,(_rtc_getdate_PARM_3 + 1)
      000170 AF 30            [24]  295 	mov	r7,(_rtc_getdate_PARM_3 + 2)
                                    296 ;	assignBit
      000172 D2 00            [12]  297 	setb	_i2c_read_PARM_1
      000174 C0 07            [24]  298 	push	ar7
      000176 C0 06            [24]  299 	push	ar6
      000178 C0 05            [24]  300 	push	ar5
      00017A 12 04 4F         [24]  301 	lcall	_i2c_read
      00017D 12 00 DE         [24]  302 	lcall	_bcd2hex
      000180 AC 82            [24]  303 	mov	r4,dpl
      000182 D0 05            [24]  304 	pop	ar5
      000184 D0 06            [24]  305 	pop	ar6
      000186 D0 07            [24]  306 	pop	ar7
      000188 8D 82            [24]  307 	mov	dpl,r5
      00018A 8E 83            [24]  308 	mov	dph,r6
      00018C 8F F0            [24]  309 	mov	b,r7
      00018E EC               [12]  310 	mov	a,r4
      00018F 12 83 34         [24]  311 	lcall	__gptrput
                                    312 ;	src\dsrtc.c:35: *pyear 	= bcd2hex(i2c_read(NACK));
      000192 AD 31            [24]  313 	mov	r5,_rtc_getdate_PARM_4
      000194 AE 32            [24]  314 	mov	r6,(_rtc_getdate_PARM_4 + 1)
      000196 AF 33            [24]  315 	mov	r7,(_rtc_getdate_PARM_4 + 2)
                                    316 ;	assignBit
      000198 C2 00            [12]  317 	clr	_i2c_read_PARM_1
      00019A C0 07            [24]  318 	push	ar7
      00019C C0 06            [24]  319 	push	ar6
      00019E C0 05            [24]  320 	push	ar5
      0001A0 12 04 4F         [24]  321 	lcall	_i2c_read
      0001A3 12 00 DE         [24]  322 	lcall	_bcd2hex
      0001A6 AC 82            [24]  323 	mov	r4,dpl
      0001A8 D0 05            [24]  324 	pop	ar5
      0001AA D0 06            [24]  325 	pop	ar6
      0001AC D0 07            [24]  326 	pop	ar7
      0001AE 8D 82            [24]  327 	mov	dpl,r5
      0001B0 8E 83            [24]  328 	mov	dph,r6
      0001B2 8F F0            [24]  329 	mov	b,r7
      0001B4 EC               [12]  330 	mov	a,r4
      0001B5 12 83 34         [24]  331 	lcall	__gptrput
                                    332 ;	src\dsrtc.c:36: i2c_stop();
                                    333 ;	src\dsrtc.c:37: }
      0001B8 02 04 06         [24]  334 	ljmp	_i2c_stop
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'rtc_gettime'
                                    337 ;------------------------------------------------------------
                                    338 ;pminute                   Allocated with name '_rtc_gettime_PARM_2'
                                    339 ;psecond                   Allocated with name '_rtc_gettime_PARM_3'
                                    340 ;phour                     Allocated to registers r5 r6 r7 
                                    341 ;------------------------------------------------------------
                                    342 ;	src\dsrtc.c:38: void rtc_gettime(u8 *phour, u8 *pminute, u8 *psecond){
                                    343 ;	-----------------------------------------
                                    344 ;	 function rtc_gettime
                                    345 ;	-----------------------------------------
      0001BB                        346 _rtc_gettime:
      0001BB AD 82            [24]  347 	mov	r5,dpl
      0001BD AE 83            [24]  348 	mov	r6,dph
      0001BF AF F0            [24]  349 	mov	r7,b
                                    350 ;	src\dsrtc.c:39: i2c_start();
      0001C1 C0 07            [24]  351 	push	ar7
      0001C3 C0 06            [24]  352 	push	ar6
      0001C5 C0 05            [24]  353 	push	ar5
      0001C7 12 03 EB         [24]  354 	lcall	_i2c_start
                                    355 ;	src\dsrtc.c:40: i2c_write(DS1307WRITE);
      0001CA 75 82 D0         [24]  356 	mov	dpl,#0xd0
      0001CD 12 04 2A         [24]  357 	lcall	_i2c_write
                                    358 ;	src\dsrtc.c:41: i2c_write(DS1307TIMEADDRESS);
      0001D0 75 82 00         [24]  359 	mov	dpl,#0x00
      0001D3 12 04 2A         [24]  360 	lcall	_i2c_write
                                    361 ;	src\dsrtc.c:42: i2c_stop();
      0001D6 12 04 06         [24]  362 	lcall	_i2c_stop
                                    363 ;	src\dsrtc.c:43: i2c_start();
      0001D9 12 03 EB         [24]  364 	lcall	_i2c_start
                                    365 ;	src\dsrtc.c:44: i2c_write(DS1307READ);
      0001DC 75 82 D1         [24]  366 	mov	dpl,#0xd1
      0001DF 12 04 2A         [24]  367 	lcall	_i2c_write
                                    368 ;	src\dsrtc.c:45: *psecond = bcd2hex(i2c_read(ACK));
      0001E2 AA 37            [24]  369 	mov	r2,_rtc_gettime_PARM_3
      0001E4 AB 38            [24]  370 	mov	r3,(_rtc_gettime_PARM_3 + 1)
      0001E6 AC 39            [24]  371 	mov	r4,(_rtc_gettime_PARM_3 + 2)
                                    372 ;	assignBit
      0001E8 D2 00            [12]  373 	setb	_i2c_read_PARM_1
      0001EA C0 04            [24]  374 	push	ar4
      0001EC C0 03            [24]  375 	push	ar3
      0001EE C0 02            [24]  376 	push	ar2
      0001F0 12 04 4F         [24]  377 	lcall	_i2c_read
      0001F3 12 00 DE         [24]  378 	lcall	_bcd2hex
      0001F6 A9 82            [24]  379 	mov	r1,dpl
      0001F8 D0 02            [24]  380 	pop	ar2
      0001FA D0 03            [24]  381 	pop	ar3
      0001FC D0 04            [24]  382 	pop	ar4
      0001FE 8A 82            [24]  383 	mov	dpl,r2
      000200 8B 83            [24]  384 	mov	dph,r3
      000202 8C F0            [24]  385 	mov	b,r4
      000204 E9               [12]  386 	mov	a,r1
      000205 12 83 34         [24]  387 	lcall	__gptrput
                                    388 ;	src\dsrtc.c:46: *pminute = bcd2hex(i2c_read(ACK));
      000208 AA 34            [24]  389 	mov	r2,_rtc_gettime_PARM_2
      00020A AB 35            [24]  390 	mov	r3,(_rtc_gettime_PARM_2 + 1)
      00020C AC 36            [24]  391 	mov	r4,(_rtc_gettime_PARM_2 + 2)
                                    392 ;	assignBit
      00020E D2 00            [12]  393 	setb	_i2c_read_PARM_1
      000210 C0 04            [24]  394 	push	ar4
      000212 C0 03            [24]  395 	push	ar3
      000214 C0 02            [24]  396 	push	ar2
      000216 12 04 4F         [24]  397 	lcall	_i2c_read
      000219 12 00 DE         [24]  398 	lcall	_bcd2hex
      00021C A9 82            [24]  399 	mov	r1,dpl
      00021E D0 02            [24]  400 	pop	ar2
      000220 D0 03            [24]  401 	pop	ar3
      000222 D0 04            [24]  402 	pop	ar4
      000224 8A 82            [24]  403 	mov	dpl,r2
      000226 8B 83            [24]  404 	mov	dph,r3
      000228 8C F0            [24]  405 	mov	b,r4
      00022A E9               [12]  406 	mov	a,r1
      00022B 12 83 34         [24]  407 	lcall	__gptrput
                                    408 ;	src\dsrtc.c:47: *phour   = bcd2hex(i2c_read(NACK));
                                    409 ;	assignBit
      00022E C2 00            [12]  410 	clr	_i2c_read_PARM_1
      000230 12 04 4F         [24]  411 	lcall	_i2c_read
      000233 12 00 DE         [24]  412 	lcall	_bcd2hex
      000236 AC 82            [24]  413 	mov	r4,dpl
      000238 D0 05            [24]  414 	pop	ar5
      00023A D0 06            [24]  415 	pop	ar6
      00023C D0 07            [24]  416 	pop	ar7
      00023E 8D 82            [24]  417 	mov	dpl,r5
      000240 8E 83            [24]  418 	mov	dph,r6
      000242 8F F0            [24]  419 	mov	b,r7
      000244 EC               [12]  420 	mov	a,r4
      000245 12 83 34         [24]  421 	lcall	__gptrput
                                    422 ;	src\dsrtc.c:48: i2c_stop();
                                    423 ;	src\dsrtc.c:49: }
      000248 02 04 06         [24]  424 	ljmp	_i2c_stop
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'rtc_settime'
                                    427 ;------------------------------------------------------------
                                    428 ;minute                    Allocated with name '_rtc_settime_PARM_2'
                                    429 ;second                    Allocated with name '_rtc_settime_PARM_3'
                                    430 ;hour                      Allocated to registers r7 
                                    431 ;------------------------------------------------------------
                                    432 ;	src\dsrtc.c:51: void rtc_settime(u8 hour, u8 minute, u8 second){
                                    433 ;	-----------------------------------------
                                    434 ;	 function rtc_settime
                                    435 ;	-----------------------------------------
      00024B                        436 _rtc_settime:
      00024B AF 82            [24]  437 	mov	r7,dpl
                                    438 ;	src\dsrtc.c:52: i2c_start();
      00024D C0 07            [24]  439 	push	ar7
      00024F 12 03 EB         [24]  440 	lcall	_i2c_start
                                    441 ;	src\dsrtc.c:53: i2c_write(DS1307WRITE);
      000252 75 82 D0         [24]  442 	mov	dpl,#0xd0
      000255 12 04 2A         [24]  443 	lcall	_i2c_write
                                    444 ;	src\dsrtc.c:54: i2c_write(DS1307TIMEADDRESS);
      000258 75 82 00         [24]  445 	mov	dpl,#0x00
      00025B 12 04 2A         [24]  446 	lcall	_i2c_write
                                    447 ;	src\dsrtc.c:55: i2c_write(hex2bcd(second));
      00025E 85 3B 82         [24]  448 	mov	dpl,_rtc_settime_PARM_3
      000261 12 00 A7         [24]  449 	lcall	_hex2bcd
      000264 12 04 2A         [24]  450 	lcall	_i2c_write
                                    451 ;	src\dsrtc.c:56: i2c_write(hex2bcd(minute));
      000267 85 3A 82         [24]  452 	mov	dpl,_rtc_settime_PARM_2
      00026A 12 00 A7         [24]  453 	lcall	_hex2bcd
      00026D 12 04 2A         [24]  454 	lcall	_i2c_write
      000270 D0 07            [24]  455 	pop	ar7
                                    456 ;	src\dsrtc.c:57: i2c_write(hex2bcd(hour));
      000272 8F 82            [24]  457 	mov	dpl,r7
      000274 12 00 A7         [24]  458 	lcall	_hex2bcd
      000277 12 04 2A         [24]  459 	lcall	_i2c_write
                                    460 ;	src\dsrtc.c:58: i2c_stop();
                                    461 ;	src\dsrtc.c:59: }
      00027A 02 04 06         [24]  462 	ljmp	_i2c_stop
                                    463 ;------------------------------------------------------------
                                    464 ;Allocation info for local variables in function 'rtc_setdate'
                                    465 ;------------------------------------------------------------
                                    466 ;day                       Allocated with name '_rtc_setdate_PARM_2'
                                    467 ;month                     Allocated with name '_rtc_setdate_PARM_3'
                                    468 ;year                      Allocated with name '_rtc_setdate_PARM_4'
                                    469 ;date                      Allocated to registers r7 
                                    470 ;------------------------------------------------------------
                                    471 ;	src\dsrtc.c:60: void rtc_setdate(u8 date, u8 day, u8 month, u8 year){
                                    472 ;	-----------------------------------------
                                    473 ;	 function rtc_setdate
                                    474 ;	-----------------------------------------
      00027D                        475 _rtc_setdate:
      00027D AF 82            [24]  476 	mov	r7,dpl
                                    477 ;	src\dsrtc.c:61: i2c_start();
      00027F C0 07            [24]  478 	push	ar7
      000281 12 03 EB         [24]  479 	lcall	_i2c_start
                                    480 ;	src\dsrtc.c:62: i2c_write(DS1307WRITE);
      000284 75 82 D0         [24]  481 	mov	dpl,#0xd0
      000287 12 04 2A         [24]  482 	lcall	_i2c_write
                                    483 ;	src\dsrtc.c:63: i2c_write(DS1307DATEADDRESS);
      00028A 75 82 03         [24]  484 	mov	dpl,#0x03
      00028D 12 04 2A         [24]  485 	lcall	_i2c_write
      000290 D0 07            [24]  486 	pop	ar7
                                    487 ;	src\dsrtc.c:64: i2c_write(date);
      000292 8F 82            [24]  488 	mov	dpl,r7
      000294 12 04 2A         [24]  489 	lcall	_i2c_write
                                    490 ;	src\dsrtc.c:65: i2c_write(hex2bcd(day));
      000297 85 3C 82         [24]  491 	mov	dpl,_rtc_setdate_PARM_2
      00029A 12 00 A7         [24]  492 	lcall	_hex2bcd
      00029D 12 04 2A         [24]  493 	lcall	_i2c_write
                                    494 ;	src\dsrtc.c:66: i2c_write(hex2bcd(month));
      0002A0 85 3D 82         [24]  495 	mov	dpl,_rtc_setdate_PARM_3
      0002A3 12 00 A7         [24]  496 	lcall	_hex2bcd
      0002A6 12 04 2A         [24]  497 	lcall	_i2c_write
                                    498 ;	src\dsrtc.c:67: i2c_write(hex2bcd(year));
      0002A9 85 3E 82         [24]  499 	mov	dpl,_rtc_setdate_PARM_4
      0002AC 12 00 A7         [24]  500 	lcall	_hex2bcd
      0002AF 12 04 2A         [24]  501 	lcall	_i2c_write
                                    502 ;	src\dsrtc.c:68: i2c_stop();
                                    503 ;	src\dsrtc.c:69: }
      0002B2 02 04 06         [24]  504 	ljmp	_i2c_stop
                                    505 	.area CSEG    (CODE)
                                    506 	.area CONST   (CODE)
                                    507 	.area XINIT   (CODE)
                                    508 	.area CABS    (ABS,CODE)
