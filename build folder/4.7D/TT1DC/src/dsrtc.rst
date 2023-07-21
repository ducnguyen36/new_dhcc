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
      0000B8 12 84 9D         [24]  158 	lcall	__divsint
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
      0000D2 12 84 67         [24]  171 	lcall	__modsint
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
                                    211 ;	src\dsrtc.c:12: i2c_start();
      0000F0 12 04 03         [24]  212 	lcall	_i2c_start
                                    213 ;	src\dsrtc.c:13: i2c_write(DS1307WRITE);
      0000F3 75 82 D0         [24]  214 	mov	dpl,#0xd0
      0000F6 12 04 42         [24]  215 	lcall	_i2c_write
                                    216 ;	src\dsrtc.c:14: i2c_write(DS3231CONTROLADDRESS);
      0000F9 75 82 0E         [24]  217 	mov	dpl,#0x0e
      0000FC 12 04 42         [24]  218 	lcall	_i2c_write
                                    219 ;	src\dsrtc.c:15: i2c_write(0x18);//ds3231 0x18 ds1307 0x10
      0000FF 75 82 18         [24]  220 	mov	dpl,#0x18
      000102 12 04 42         [24]  221 	lcall	_i2c_write
                                    222 ;	src\dsrtc.c:16: i2c_stop();
      000105 12 04 1E         [24]  223 	lcall	_i2c_stop
                                    224 ;	src\dsrtc.c:17: i2c_start();
      000108 12 04 03         [24]  225 	lcall	_i2c_start
                                    226 ;	src\dsrtc.c:18: i2c_write(DS1307WRITE);
      00010B 75 82 D0         [24]  227 	mov	dpl,#0xd0
      00010E 12 04 42         [24]  228 	lcall	_i2c_write
                                    229 ;	src\dsrtc.c:19: i2c_write(DS1307CONTROLADDRESS);
      000111 75 82 0E         [24]  230 	mov	dpl,#0x0e
      000114 12 04 42         [24]  231 	lcall	_i2c_write
                                    232 ;	src\dsrtc.c:20: i2c_write(0x10);//ds3231 0x18 ds1307 0x10
      000117 75 82 10         [24]  233 	mov	dpl,#0x10
      00011A 12 04 42         [24]  234 	lcall	_i2c_write
                                    235 ;	src\dsrtc.c:21: i2c_stop();
                                    236 ;	src\dsrtc.c:22: }
      00011D 02 04 1E         [24]  237 	ljmp	_i2c_stop
                                    238 ;------------------------------------------------------------
                                    239 ;Allocation info for local variables in function 'rtc_getdate'
                                    240 ;------------------------------------------------------------
                                    241 ;pday                      Allocated with name '_rtc_getdate_PARM_2'
                                    242 ;pmonth                    Allocated with name '_rtc_getdate_PARM_3'
                                    243 ;pyear                     Allocated with name '_rtc_getdate_PARM_4'
                                    244 ;pdate                     Allocated to registers r5 r6 r7 
                                    245 ;------------------------------------------------------------
                                    246 ;	src\dsrtc.c:24: void rtc_getdate(u8 *pdate,u8 *pday, u8 *pmonth, u8 *pyear){
                                    247 ;	-----------------------------------------
                                    248 ;	 function rtc_getdate
                                    249 ;	-----------------------------------------
      000120                        250 _rtc_getdate:
      000120 AD 82            [24]  251 	mov	r5,dpl
      000122 AE 83            [24]  252 	mov	r6,dph
      000124 AF F0            [24]  253 	mov	r7,b
                                    254 ;	src\dsrtc.c:26: i2c_start();
      000126 C0 07            [24]  255 	push	ar7
      000128 C0 06            [24]  256 	push	ar6
      00012A C0 05            [24]  257 	push	ar5
      00012C 12 04 03         [24]  258 	lcall	_i2c_start
                                    259 ;	src\dsrtc.c:27: i2c_write(DS1307WRITE);
      00012F 75 82 D0         [24]  260 	mov	dpl,#0xd0
      000132 12 04 42         [24]  261 	lcall	_i2c_write
                                    262 ;	src\dsrtc.c:28: i2c_write(DS1307DATEADDRESS);
      000135 75 82 03         [24]  263 	mov	dpl,#0x03
      000138 12 04 42         [24]  264 	lcall	_i2c_write
                                    265 ;	src\dsrtc.c:29: i2c_stop();
      00013B 12 04 1E         [24]  266 	lcall	_i2c_stop
                                    267 ;	src\dsrtc.c:30: i2c_start();
      00013E 12 04 03         [24]  268 	lcall	_i2c_start
                                    269 ;	src\dsrtc.c:31: i2c_write(DS1307READ);
      000141 75 82 D1         [24]  270 	mov	dpl,#0xd1
      000144 12 04 42         [24]  271 	lcall	_i2c_write
                                    272 ;	src\dsrtc.c:32: *pdate  = i2c_read(ACK);
                                    273 ;	assignBit
      000147 D2 00            [12]  274 	setb	_i2c_read_PARM_1
      000149 12 04 67         [24]  275 	lcall	_i2c_read
      00014C AC 82            [24]  276 	mov	r4,dpl
      00014E D0 05            [24]  277 	pop	ar5
      000150 D0 06            [24]  278 	pop	ar6
      000152 D0 07            [24]  279 	pop	ar7
      000154 8D 82            [24]  280 	mov	dpl,r5
      000156 8E 83            [24]  281 	mov	dph,r6
      000158 8F F0            [24]  282 	mov	b,r7
      00015A EC               [12]  283 	mov	a,r4
      00015B 12 83 C6         [24]  284 	lcall	__gptrput
                                    285 ;	src\dsrtc.c:33: *pday 	= bcd2hex(i2c_read(ACK));
      00015E AD 2B            [24]  286 	mov	r5,_rtc_getdate_PARM_2
      000160 AE 2C            [24]  287 	mov	r6,(_rtc_getdate_PARM_2 + 1)
      000162 AF 2D            [24]  288 	mov	r7,(_rtc_getdate_PARM_2 + 2)
                                    289 ;	assignBit
      000164 D2 00            [12]  290 	setb	_i2c_read_PARM_1
      000166 C0 07            [24]  291 	push	ar7
      000168 C0 06            [24]  292 	push	ar6
      00016A C0 05            [24]  293 	push	ar5
      00016C 12 04 67         [24]  294 	lcall	_i2c_read
      00016F 12 00 DE         [24]  295 	lcall	_bcd2hex
      000172 AC 82            [24]  296 	mov	r4,dpl
      000174 D0 05            [24]  297 	pop	ar5
      000176 D0 06            [24]  298 	pop	ar6
      000178 D0 07            [24]  299 	pop	ar7
      00017A 8D 82            [24]  300 	mov	dpl,r5
      00017C 8E 83            [24]  301 	mov	dph,r6
      00017E 8F F0            [24]  302 	mov	b,r7
      000180 EC               [12]  303 	mov	a,r4
      000181 12 83 C6         [24]  304 	lcall	__gptrput
                                    305 ;	src\dsrtc.c:34: *pmonth = bcd2hex(i2c_read(ACK));
      000184 AD 2E            [24]  306 	mov	r5,_rtc_getdate_PARM_3
      000186 AE 2F            [24]  307 	mov	r6,(_rtc_getdate_PARM_3 + 1)
      000188 AF 30            [24]  308 	mov	r7,(_rtc_getdate_PARM_3 + 2)
                                    309 ;	assignBit
      00018A D2 00            [12]  310 	setb	_i2c_read_PARM_1
      00018C C0 07            [24]  311 	push	ar7
      00018E C0 06            [24]  312 	push	ar6
      000190 C0 05            [24]  313 	push	ar5
      000192 12 04 67         [24]  314 	lcall	_i2c_read
      000195 12 00 DE         [24]  315 	lcall	_bcd2hex
      000198 AC 82            [24]  316 	mov	r4,dpl
      00019A D0 05            [24]  317 	pop	ar5
      00019C D0 06            [24]  318 	pop	ar6
      00019E D0 07            [24]  319 	pop	ar7
      0001A0 8D 82            [24]  320 	mov	dpl,r5
      0001A2 8E 83            [24]  321 	mov	dph,r6
      0001A4 8F F0            [24]  322 	mov	b,r7
      0001A6 EC               [12]  323 	mov	a,r4
      0001A7 12 83 C6         [24]  324 	lcall	__gptrput
                                    325 ;	src\dsrtc.c:35: *pyear 	= bcd2hex(i2c_read(NACK));
      0001AA AD 31            [24]  326 	mov	r5,_rtc_getdate_PARM_4
      0001AC AE 32            [24]  327 	mov	r6,(_rtc_getdate_PARM_4 + 1)
      0001AE AF 33            [24]  328 	mov	r7,(_rtc_getdate_PARM_4 + 2)
                                    329 ;	assignBit
      0001B0 C2 00            [12]  330 	clr	_i2c_read_PARM_1
      0001B2 C0 07            [24]  331 	push	ar7
      0001B4 C0 06            [24]  332 	push	ar6
      0001B6 C0 05            [24]  333 	push	ar5
      0001B8 12 04 67         [24]  334 	lcall	_i2c_read
      0001BB 12 00 DE         [24]  335 	lcall	_bcd2hex
      0001BE AC 82            [24]  336 	mov	r4,dpl
      0001C0 D0 05            [24]  337 	pop	ar5
      0001C2 D0 06            [24]  338 	pop	ar6
      0001C4 D0 07            [24]  339 	pop	ar7
      0001C6 8D 82            [24]  340 	mov	dpl,r5
      0001C8 8E 83            [24]  341 	mov	dph,r6
      0001CA 8F F0            [24]  342 	mov	b,r7
      0001CC EC               [12]  343 	mov	a,r4
      0001CD 12 83 C6         [24]  344 	lcall	__gptrput
                                    345 ;	src\dsrtc.c:36: i2c_stop();
                                    346 ;	src\dsrtc.c:37: }
      0001D0 02 04 1E         [24]  347 	ljmp	_i2c_stop
                                    348 ;------------------------------------------------------------
                                    349 ;Allocation info for local variables in function 'rtc_gettime'
                                    350 ;------------------------------------------------------------
                                    351 ;pminute                   Allocated with name '_rtc_gettime_PARM_2'
                                    352 ;psecond                   Allocated with name '_rtc_gettime_PARM_3'
                                    353 ;phour                     Allocated to registers r5 r6 r7 
                                    354 ;------------------------------------------------------------
                                    355 ;	src\dsrtc.c:38: void rtc_gettime(u8 *phour, u8 *pminute, u8 *psecond){
                                    356 ;	-----------------------------------------
                                    357 ;	 function rtc_gettime
                                    358 ;	-----------------------------------------
      0001D3                        359 _rtc_gettime:
      0001D3 AD 82            [24]  360 	mov	r5,dpl
      0001D5 AE 83            [24]  361 	mov	r6,dph
      0001D7 AF F0            [24]  362 	mov	r7,b
                                    363 ;	src\dsrtc.c:39: i2c_start();
      0001D9 C0 07            [24]  364 	push	ar7
      0001DB C0 06            [24]  365 	push	ar6
      0001DD C0 05            [24]  366 	push	ar5
      0001DF 12 04 03         [24]  367 	lcall	_i2c_start
                                    368 ;	src\dsrtc.c:40: i2c_write(DS1307WRITE);
      0001E2 75 82 D0         [24]  369 	mov	dpl,#0xd0
      0001E5 12 04 42         [24]  370 	lcall	_i2c_write
                                    371 ;	src\dsrtc.c:41: i2c_write(DS1307TIMEADDRESS);
      0001E8 75 82 00         [24]  372 	mov	dpl,#0x00
      0001EB 12 04 42         [24]  373 	lcall	_i2c_write
                                    374 ;	src\dsrtc.c:42: i2c_stop();
      0001EE 12 04 1E         [24]  375 	lcall	_i2c_stop
                                    376 ;	src\dsrtc.c:43: i2c_start();
      0001F1 12 04 03         [24]  377 	lcall	_i2c_start
                                    378 ;	src\dsrtc.c:44: i2c_write(DS1307READ);
      0001F4 75 82 D1         [24]  379 	mov	dpl,#0xd1
      0001F7 12 04 42         [24]  380 	lcall	_i2c_write
                                    381 ;	src\dsrtc.c:45: *psecond = bcd2hex(i2c_read(ACK));
      0001FA AA 37            [24]  382 	mov	r2,_rtc_gettime_PARM_3
      0001FC AB 38            [24]  383 	mov	r3,(_rtc_gettime_PARM_3 + 1)
      0001FE AC 39            [24]  384 	mov	r4,(_rtc_gettime_PARM_3 + 2)
                                    385 ;	assignBit
      000200 D2 00            [12]  386 	setb	_i2c_read_PARM_1
      000202 C0 04            [24]  387 	push	ar4
      000204 C0 03            [24]  388 	push	ar3
      000206 C0 02            [24]  389 	push	ar2
      000208 12 04 67         [24]  390 	lcall	_i2c_read
      00020B 12 00 DE         [24]  391 	lcall	_bcd2hex
      00020E A9 82            [24]  392 	mov	r1,dpl
      000210 D0 02            [24]  393 	pop	ar2
      000212 D0 03            [24]  394 	pop	ar3
      000214 D0 04            [24]  395 	pop	ar4
      000216 8A 82            [24]  396 	mov	dpl,r2
      000218 8B 83            [24]  397 	mov	dph,r3
      00021A 8C F0            [24]  398 	mov	b,r4
      00021C E9               [12]  399 	mov	a,r1
      00021D 12 83 C6         [24]  400 	lcall	__gptrput
                                    401 ;	src\dsrtc.c:46: *pminute = bcd2hex(i2c_read(ACK));
      000220 AA 34            [24]  402 	mov	r2,_rtc_gettime_PARM_2
      000222 AB 35            [24]  403 	mov	r3,(_rtc_gettime_PARM_2 + 1)
      000224 AC 36            [24]  404 	mov	r4,(_rtc_gettime_PARM_2 + 2)
                                    405 ;	assignBit
      000226 D2 00            [12]  406 	setb	_i2c_read_PARM_1
      000228 C0 04            [24]  407 	push	ar4
      00022A C0 03            [24]  408 	push	ar3
      00022C C0 02            [24]  409 	push	ar2
      00022E 12 04 67         [24]  410 	lcall	_i2c_read
      000231 12 00 DE         [24]  411 	lcall	_bcd2hex
      000234 A9 82            [24]  412 	mov	r1,dpl
      000236 D0 02            [24]  413 	pop	ar2
      000238 D0 03            [24]  414 	pop	ar3
      00023A D0 04            [24]  415 	pop	ar4
      00023C 8A 82            [24]  416 	mov	dpl,r2
      00023E 8B 83            [24]  417 	mov	dph,r3
      000240 8C F0            [24]  418 	mov	b,r4
      000242 E9               [12]  419 	mov	a,r1
      000243 12 83 C6         [24]  420 	lcall	__gptrput
                                    421 ;	src\dsrtc.c:47: *phour   = bcd2hex(i2c_read(NACK));
                                    422 ;	assignBit
      000246 C2 00            [12]  423 	clr	_i2c_read_PARM_1
      000248 12 04 67         [24]  424 	lcall	_i2c_read
      00024B 12 00 DE         [24]  425 	lcall	_bcd2hex
      00024E AC 82            [24]  426 	mov	r4,dpl
      000250 D0 05            [24]  427 	pop	ar5
      000252 D0 06            [24]  428 	pop	ar6
      000254 D0 07            [24]  429 	pop	ar7
      000256 8D 82            [24]  430 	mov	dpl,r5
      000258 8E 83            [24]  431 	mov	dph,r6
      00025A 8F F0            [24]  432 	mov	b,r7
      00025C EC               [12]  433 	mov	a,r4
      00025D 12 83 C6         [24]  434 	lcall	__gptrput
                                    435 ;	src\dsrtc.c:48: i2c_stop();
                                    436 ;	src\dsrtc.c:49: }
      000260 02 04 1E         [24]  437 	ljmp	_i2c_stop
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'rtc_settime'
                                    440 ;------------------------------------------------------------
                                    441 ;minute                    Allocated with name '_rtc_settime_PARM_2'
                                    442 ;second                    Allocated with name '_rtc_settime_PARM_3'
                                    443 ;hour                      Allocated to registers r7 
                                    444 ;------------------------------------------------------------
                                    445 ;	src\dsrtc.c:51: void rtc_settime(u8 hour, u8 minute, u8 second){
                                    446 ;	-----------------------------------------
                                    447 ;	 function rtc_settime
                                    448 ;	-----------------------------------------
      000263                        449 _rtc_settime:
      000263 AF 82            [24]  450 	mov	r7,dpl
                                    451 ;	src\dsrtc.c:52: i2c_start();
      000265 C0 07            [24]  452 	push	ar7
      000267 12 04 03         [24]  453 	lcall	_i2c_start
                                    454 ;	src\dsrtc.c:53: i2c_write(DS1307WRITE);
      00026A 75 82 D0         [24]  455 	mov	dpl,#0xd0
      00026D 12 04 42         [24]  456 	lcall	_i2c_write
                                    457 ;	src\dsrtc.c:54: i2c_write(DS1307TIMEADDRESS);
      000270 75 82 00         [24]  458 	mov	dpl,#0x00
      000273 12 04 42         [24]  459 	lcall	_i2c_write
                                    460 ;	src\dsrtc.c:55: i2c_write(hex2bcd(second));
      000276 85 3B 82         [24]  461 	mov	dpl,_rtc_settime_PARM_3
      000279 12 00 A7         [24]  462 	lcall	_hex2bcd
      00027C 12 04 42         [24]  463 	lcall	_i2c_write
                                    464 ;	src\dsrtc.c:56: i2c_write(hex2bcd(minute));
      00027F 85 3A 82         [24]  465 	mov	dpl,_rtc_settime_PARM_2
      000282 12 00 A7         [24]  466 	lcall	_hex2bcd
      000285 12 04 42         [24]  467 	lcall	_i2c_write
      000288 D0 07            [24]  468 	pop	ar7
                                    469 ;	src\dsrtc.c:57: i2c_write(hex2bcd(hour));
      00028A 8F 82            [24]  470 	mov	dpl,r7
      00028C 12 00 A7         [24]  471 	lcall	_hex2bcd
      00028F 12 04 42         [24]  472 	lcall	_i2c_write
                                    473 ;	src\dsrtc.c:58: i2c_stop();
                                    474 ;	src\dsrtc.c:59: }
      000292 02 04 1E         [24]  475 	ljmp	_i2c_stop
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'rtc_setdate'
                                    478 ;------------------------------------------------------------
                                    479 ;day                       Allocated with name '_rtc_setdate_PARM_2'
                                    480 ;month                     Allocated with name '_rtc_setdate_PARM_3'
                                    481 ;year                      Allocated with name '_rtc_setdate_PARM_4'
                                    482 ;date                      Allocated to registers r7 
                                    483 ;------------------------------------------------------------
                                    484 ;	src\dsrtc.c:60: void rtc_setdate(u8 date, u8 day, u8 month, u8 year){
                                    485 ;	-----------------------------------------
                                    486 ;	 function rtc_setdate
                                    487 ;	-----------------------------------------
      000295                        488 _rtc_setdate:
      000295 AF 82            [24]  489 	mov	r7,dpl
                                    490 ;	src\dsrtc.c:61: i2c_start();
      000297 C0 07            [24]  491 	push	ar7
      000299 12 04 03         [24]  492 	lcall	_i2c_start
                                    493 ;	src\dsrtc.c:62: i2c_write(DS1307WRITE);
      00029C 75 82 D0         [24]  494 	mov	dpl,#0xd0
      00029F 12 04 42         [24]  495 	lcall	_i2c_write
                                    496 ;	src\dsrtc.c:63: i2c_write(DS1307DATEADDRESS);
      0002A2 75 82 03         [24]  497 	mov	dpl,#0x03
      0002A5 12 04 42         [24]  498 	lcall	_i2c_write
      0002A8 D0 07            [24]  499 	pop	ar7
                                    500 ;	src\dsrtc.c:64: i2c_write(date);
      0002AA 8F 82            [24]  501 	mov	dpl,r7
      0002AC 12 04 42         [24]  502 	lcall	_i2c_write
                                    503 ;	src\dsrtc.c:65: i2c_write(hex2bcd(day));
      0002AF 85 3C 82         [24]  504 	mov	dpl,_rtc_setdate_PARM_2
      0002B2 12 00 A7         [24]  505 	lcall	_hex2bcd
      0002B5 12 04 42         [24]  506 	lcall	_i2c_write
                                    507 ;	src\dsrtc.c:66: i2c_write(hex2bcd(month));
      0002B8 85 3D 82         [24]  508 	mov	dpl,_rtc_setdate_PARM_3
      0002BB 12 00 A7         [24]  509 	lcall	_hex2bcd
      0002BE 12 04 42         [24]  510 	lcall	_i2c_write
                                    511 ;	src\dsrtc.c:67: i2c_write(hex2bcd(year));
      0002C1 85 3E 82         [24]  512 	mov	dpl,_rtc_setdate_PARM_4
      0002C4 12 00 A7         [24]  513 	lcall	_hex2bcd
      0002C7 12 04 42         [24]  514 	lcall	_i2c_write
                                    515 ;	src\dsrtc.c:68: i2c_stop();
                                    516 ;	src\dsrtc.c:69: }
      0002CA 02 04 1E         [24]  517 	ljmp	_i2c_stop
                                    518 	.area CSEG    (CODE)
                                    519 	.area CONST   (CODE)
                                    520 	.area XINIT   (CODE)
                                    521 	.area CABS    (ABS,CODE)
