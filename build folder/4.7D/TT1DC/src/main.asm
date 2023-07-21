;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _huongdan
	.globl _ver
	.globl _mode_select
	.globl _motor_step
	.globl _phone2
	.globl _phone1
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
	.globl _adc_isr
	.globl _mp3_serial_interupt
	.globl _main
	.globl _xu_ly_tin_nhan
	.globl _gsm_serial_interrupt
	.globl _gsm_laygio_gps
	.globl _gsm_thietlapnhantin1
	.globl _gsm_thietlapnhantin
	.globl _gsm_thietlapgoidien
	.globl _gsm_thietlapngaygiothuc
	.globl _gsm_thietlapsim800
	.globl _gui_huong_dan
	.globl _baocaoden
	.globl _send_thong_so_den
	.globl _baocaosms
	.globl _send_thong_so
	.globl _send_gio_thuc
	.globl _send_gio_kim
	.globl _send_thong_so_rut_gon
	.globl _kiemtratinhieu
	.globl _kiemtrasodienthoai
	.globl _kiemtrataikhoan
	.globl _send_sms
	.globl _gsm_quay_so
	.globl _gsm_sendandcheck
	.globl _clear_sms_buffer
	.globl _cam_phim
	.globl _PCA_Handler
	.globl _clock_servide
	.globl _xunggiay
	.globl _motor_step_int_init
	.globl _PCA_Timer_init
	.globl _luu_gio_kim
	.globl _motor_run_check2
	.globl _motor_run_check
	.globl _kiem_tra_nhac
	.globl _kiem_tra_den
	.globl _mp3_play
	.globl _mp3_serial_init
	.globl _send_gsm_cmd
	.globl _send_gsm_byte
	.globl _gsm_init
	.globl _IAP_xoasector
	.globl _IAP_docxoasector1
	.globl _IAP_ghisector1
	.globl _IAP_ghibyte
	.globl _LCD_noblink
	.globl _LCD_blinkXY
	.globl _LCD_chop
	.globl _LCD_xoa
	.globl _delay_ms
	.globl _LCD_guigio
	.globl _LCD_Init
	.globl _LCD_guidulieu
	.globl _LCD_guilenh
	.globl _LCD_guichuoi
	.globl _rtc_settime
	.globl _rtc_gettime
	.globl _rtc_setdate
	.globl _rtc_getdate
	.globl _rtc_init
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
	.globl _counter_xung_giay
	.globl _cnt
	.globl _phut_sac_xa_acqui_con_lai
	.globl _sms_on
	.globl _sim_test_sec
	.globl _max_second
	.globl _so_motor
	.globl _date_str
	.globl _gsm_receive_buf
	.globl _date_pointer
	.globl _gsm_receive_pointer
	.globl _have_time
	.globl _gsm_serial_cmd
	.globl _total_try_time_out
	.globl _connect_time_out
	.globl _connect
	.globl _signal
	.globl _nha_mang
	.globl _song_name
	.globl _mode_wait
	.globl _sub_mode
	.globl _mode
	.globl _phim_cong_doi
	.globl _phim_back_doi
	.globl _phim_mode_doi
	.globl _lcd_data_index
	.globl _lcd_process_index
	.globl _lcd_index
	.globl _toc_do_motor_step
	.globl _thoi_gian_doi_cam_chuan
	.globl _thoi_gian_doi_doc_cam
	.globl _xung_giay_check
	.globl _ngay_reset_con_lai
	.globl _PCA_Timer0
	.globl _delay_ve_kim
	.globl _may_canh_kim
	.globl _canhkim
	.globl _year
	.globl _month
	.globl _day
	.globl _date
	.globl _eeprom_buf
	.globl _message_index
	.globl _sms_index
	.globl _delay_cuoc_goi_ke_tiep
	.globl _so_lan_goi_dien
	.globl _gsm_delay_reset
	.globl _lenh_sms
	.globl _phone
	.globl _phone_chinh
	.globl _baocaoden_PARM_1
	.globl _baocaosms_PARM_1
	.globl _send_thong_so_PARM_1
	.globl _send_gio_thuc_PARM_1
	.globl _send_thong_so_rut_gon_PARM_1
	.globl _send_sms_PARM_1
	.globl _lcd_update_chop
	.globl _bao_cao_dien_ap_thap
	.globl _loi_eeprom_tat_mo_den
	.globl _loi_cam_motor4
	.globl _loi_cam_motor3
	.globl _loi_cam_motor2
	.globl _loi_cam_motor1
	.globl _mat_xung_giay
	.globl _motor_debug
	.globl _motor_dung
	.globl _atmel_phat
	.globl _may_dc
	.globl _test_gps
	.globl _skip_gsm_cmd
	.globl _error
	.globl _nosim
	.globl _have_not
	.globl _gui_lenh_thanh_cong
	.globl _chop
	.globl _phim_cong_giu
	.globl _phim_cong_cu
	.globl _phim_cong_nhan
	.globl _phim_cong_xuong
	.globl _phim_back_giu
	.globl _phim_back_cu
	.globl _phim_back_nhan
	.globl _phim_back_xuong
	.globl _phim_mode_giu
	.globl _phim_mode_cu
	.globl _phim_mode_nhan
	.globl _phim_mode_xuong
	.globl _flip_pulse
	.globl _phut_out
	.globl _giay_out
	.globl _GPS_time
	.globl _cam_ra2
	.globl _cam_ra
	.globl _cam_vao_han2
	.globl _cam_vao_han
	.globl _cam_vao2
	.globl _cam_vao
	.globl _trang_thai_cam2
	.globl _trang_thai_cam
	.globl _motorDir2
	.globl _motorDir1
	.globl _motorDir
	.globl _have_quote
	.globl _lenh_khong_hop_le
	.globl _have_cusd
	.globl _sms_dang_xu_ly
	.globl _pin_chinh_xac
	.globl _co_tin_nhan_moi
	.globl _phone_header
	.globl _bat_phone_phu
	.globl _phone_phu_so_sanh_that_bai
	.globl _phone_chinh_so_sanh_that_bai
	.globl _goi_dien_thoai
	.globl _co_cuoc_goi_toi
	.globl _gsm_reset
	.globl _da_gui_bao_cao_thang
	.globl _da_gui_bao_cao
	.globl _dien_ap_thap
	.globl _mp3_doi_start
	.globl _mp3_minute
	.globl _mp3_hour
	.globl _mp3_date
	.globl _mp3_status
	.globl _dien_ap_nguon
	.globl _gsm_sendandcheck_PARM_4
	.globl _gsm_sendandcheck_PARM_3
	.globl _gsm_sendandcheck_PARM_2
	.globl _motor_index2
	.globl _motor_index
	.globl _step_index
	.globl _phut
	.globl _gio
	.globl _hour12
	.globl _hour
	.globl _minute
	.globl _second
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_second::
	.ds 1
_minute::
	.ds 1
_hour::
	.ds 1
_hour12::
	.ds 1
_gio::
	.ds 4
_phut::
	.ds 4
_step_index::
	.ds 1
_motor_index::
	.ds 1
_motor_index2::
	.ds 1
_kiem_tra_den_now_65536_19:
	.ds 1
_gsm_sendandcheck_PARM_2:
	.ds 1
_gsm_sendandcheck_PARM_3:
	.ds 1
_gsm_sendandcheck_PARM_4:
	.ds 3
_gsm_sendandcheck_cmd_65536_79:
	.ds 3
_gsm_sendandcheck_sloc0_1_0:
	.ds 3
_gsm_sendandcheck_sloc1_1_0:
	.ds 3
_xu_ly_tin_nhan_phutdelta_65537_185:
	.ds 1
_xu_ly_tin_nhan_kim_index_65537_185:
	.ds 1
_xu_ly_tin_nhan_sloc0_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc1_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc2_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc3_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc4_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc5_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc6_1_0:
	.ds 2
_xu_ly_tin_nhan_sloc7_1_0:
	.ds 2
_main_giotemp_65536_253:
	.ds 1
_main_debug_dem_131073_263:
	.ds 1
_main_mp3temp_131073_263:
	.ds 1
_main_retry_131073_284:
	.ds 1
_main_retry_131073_287:
	.ds 1
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 1
_main_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_dien_ap_nguon::
	.ds 1
_mp3_status::
	.ds 1
_mp3_date::
	.ds 1
_mp3_hour::
	.ds 1
_mp3_minute::
	.ds 1
_mp3_doi_start::
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_dien_ap_thap::
	.ds 1
_da_gui_bao_cao::
	.ds 1
_da_gui_bao_cao_thang::
	.ds 1
_gsm_reset::
	.ds 1
_co_cuoc_goi_toi::
	.ds 1
_goi_dien_thoai::
	.ds 1
_phone_chinh_so_sanh_that_bai::
	.ds 1
_phone_phu_so_sanh_that_bai::
	.ds 1
_bat_phone_phu::
	.ds 1
_phone_header::
	.ds 1
_co_tin_nhan_moi::
	.ds 1
_pin_chinh_xac::
	.ds 1
_sms_dang_xu_ly::
	.ds 1
_have_cusd::
	.ds 1
_lenh_khong_hop_le::
	.ds 1
_have_quote::
	.ds 1
_motorDir::
	.ds 1
_motorDir1::
	.ds 1
_motorDir2::
	.ds 1
_trang_thai_cam::
	.ds 1
_trang_thai_cam2::
	.ds 1
_cam_vao::
	.ds 1
_cam_vao2::
	.ds 1
_cam_vao_han::
	.ds 1
_cam_vao_han2::
	.ds 1
_cam_ra::
	.ds 1
_cam_ra2::
	.ds 1
_GPS_time::
	.ds 1
_giay_out::
	.ds 1
_phut_out::
	.ds 1
_flip_pulse::
	.ds 1
_phim_mode_xuong::
	.ds 1
_phim_mode_nhan::
	.ds 1
_phim_mode_cu::
	.ds 1
_phim_mode_giu::
	.ds 1
_phim_back_xuong::
	.ds 1
_phim_back_nhan::
	.ds 1
_phim_back_cu::
	.ds 1
_phim_back_giu::
	.ds 1
_phim_cong_xuong::
	.ds 1
_phim_cong_nhan::
	.ds 1
_phim_cong_cu::
	.ds 1
_phim_cong_giu::
	.ds 1
_chop::
	.ds 1
_gui_lenh_thanh_cong::
	.ds 1
_have_not::
	.ds 1
_nosim::
	.ds 1
_error::
	.ds 1
_skip_gsm_cmd::
	.ds 1
_test_gps::
	.ds 1
_may_dc::
	.ds 1
_atmel_phat::
	.ds 1
_motor_dung::
	.ds 1
_motor_debug::
	.ds 1
_mat_xung_giay::
	.ds 1
_loi_cam_motor1::
	.ds 1
_loi_cam_motor2::
	.ds 1
_loi_cam_motor3::
	.ds 1
_loi_cam_motor4::
	.ds 1
_loi_eeprom_tat_mo_den::
	.ds 1
_bao_cao_dien_ap_thap::
	.ds 1
_lcd_update_chop::
	.ds 1
_PCA_Handler_sloc0_1_0:
	.ds 1
_cam_phim_sloc0_1_0:
	.ds 1
_send_sms_PARM_1:
	.ds 1
_send_thong_so_rut_gon_PARM_1:
	.ds 1
_send_gio_thuc_PARM_1:
	.ds 1
_send_thong_so_PARM_1:
	.ds 1
_baocaosms_PARM_1:
	.ds 1
_baocaoden_PARM_1:
	.ds 1
_gsm_thietlapngaygiothuc_GPS_time_temp_65536_124:
	.ds 1
_gsm_thietlapngaygiothuc_sloc0_1_0:
	.ds 1
_gsm_laygio_gps_GPS_time_temp_65536_141:
	.ds 1
_gsm_serial_interrupt_sloc0_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc8_1_0:
	.ds 1
_main_debug_131073_263:
	.ds 1
_main_sloc3_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_phone_chinh::
	.ds 11
_phone::
	.ds 11
_lenh_sms::
	.ds 161
_gsm_delay_reset::
	.ds 1
_so_lan_goi_dien::
	.ds 1
_delay_cuoc_goi_ke_tiep::
	.ds 1
_sms_index::
	.ds 1
_message_index::
	.ds 1
_eeprom_buf::
	.ds 32
_date::
	.ds 1
_day::
	.ds 1
_month::
	.ds 1
_year::
	.ds 1
_canhkim::
	.ds 1
_may_canh_kim::
	.ds 1
_delay_ve_kim::
	.ds 1
_PCA_Timer0::
	.ds 2
_ngay_reset_con_lai::
	.ds 1
_xung_giay_check::
	.ds 1
_thoi_gian_doi_doc_cam::
	.ds 4
_thoi_gian_doi_cam_chuan::
	.ds 1
_toc_do_motor_step::
	.ds 1
_lcd_index::
	.ds 1
_lcd_process_index::
	.ds 1
_lcd_data_index::
	.ds 1
_phim_mode_doi::
	.ds 1
_phim_back_doi::
	.ds 1
_phim_cong_doi::
	.ds 1
_mode::
	.ds 1
_sub_mode::
	.ds 1
_mode_wait::
	.ds 1
_song_name::
	.ds 2
_nha_mang::
	.ds 1
_signal::
	.ds 1
_connect::
	.ds 1
_connect_time_out::
	.ds 1
_total_try_time_out::
	.ds 1
_gsm_serial_cmd::
	.ds 1
_have_time::
	.ds 1
_gsm_receive_pointer::
	.ds 1
_date_pointer::
	.ds 1
_gsm_receive_buf::
	.ds 15
_date_str::
	.ds 30
_so_motor::
	.ds 1
_max_second::
	.ds 1
_sim_test_sec::
	.ds 1
_sms_on::
	.ds 1
_phut_sac_xa_acqui_con_lai::
	.ds 1
_xu_ly_tin_nhan_i_65537_185:
	.ds 1
_main_ngaytemp_65536_253:
	.ds 1
_main_thangtemp_65536_253:
	.ds 1
_main_namtemp_65536_253:
	.ds 1
_main_thutemp_65536_253:
	.ds 1
_main_i_65537_254:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_cnt::
	.ds 1
_counter_xung_giay::
	.ds 1
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_clock_servide
	.ds	5
	ljmp	_cam_phim
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_gsm_serial_interrupt
	.ds	5
	ljmp	_adc_isr
	.ds	5
	reti
	.ds	7
	ljmp	_PCA_Handler
	.ds	5
	ljmp	_mp3_serial_interupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	include/motor_cam_phim.c:146: __bit lcd_update_chop = 0;
;	assignBit
	clr	_lcd_update_chop
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'kiem_tra_den'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;now                       Allocated with name '_kiem_tra_den_now_65536_19'
;------------------------------------------------------------
;	include/chuong_trinh.c:3: void kiem_tra_den(){
;	-----------------------------------------
;	 function kiem_tra_den
;	-----------------------------------------
_kiem_tra_den:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	include/chuong_trinh.c:4: u8 __data i,now = hour*6+minute/10;
	mov	a,_hour
	mov	b,#0x06
	mul	ab
	mov	r7,a
	mov	r5,_minute
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	__divsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	add	a,r7
	mov	_kiem_tra_den_now_65536_19,a
;	include/chuong_trinh.c:5: for(i=1;i<eep_tatmoden[0];i++)
	mov	r6,#0x01
	mov	r5,#0x01
00108$:
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00132$
	ljmp	00103$
00132$:
;	include/chuong_trinh.c:6: if((1+(eep_tatmoden[i]<eep_tatmoden[i+1]) + (now<eep_tatmoden[i]) + (now<eep_tatmoden[i+1]))%2){
	mov	a,r5
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r4,a
	mov	ar3,r5
	inc	r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_eep_tatmoden
	mov	dpl,a
	mov	a,r2
	addc	a,#(_eep_tatmoden >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	clr	c
	mov	a,r4
	subb	a,r1
	clr	a
	rlc	a
	mov	r1,a
	mov	r4,#0x00
	inc	r1
	cjne	r1,#0x00,00133$
	inc	r4
00133$:
	mov	a,r5
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r0,a
	clr	c
	mov	a,_kiem_tra_den_now_65536_19
	subb	a,r0
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_eep_tatmoden
	mov	dpl,a
	mov	a,r2
	addc	a,#(_eep_tatmoden >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,_kiem_tra_den_now_65536_19
	subb	a,r7
	clr	a
	rlc	a
	mov	r3,#0x00
	add	a,r1
	mov	dpl,a
	mov	a,r3
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	push	ar6
	push	ar5
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	orl	a,b
	jz	00109$
;	include/chuong_trinh.c:7: DenRelay = (i+1)%2; break;
	mov	ar4,r6
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	mov	r7,dph
	pop	ar6
;	assignBit
	mov	a,r4
	orl	a,r7
	add	a,#0xff
	mov	_P21,c
	sjmp	00103$
00109$:
;	include/chuong_trinh.c:5: for(i=1;i<eep_tatmoden[0];i++)
	inc	r5
	mov	ar6,r5
	ljmp	00108$
00103$:
;	include/chuong_trinh.c:10: if( i==eep_tatmoden[0] && (1+(eep_tatmoden[i]<eep_tatmoden[1]) + (now<eep_tatmoden[i]) + (now<eep_tatmoden[1]))%2)
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r6
	cjne	a,ar7,00135$
	sjmp	00136$
00135$:
	ret
00136$:
	mov	a,r6
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_eep_tatmoden + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r7
	subb	a,r5
	clr	a
	rlc	a
	mov	r7,a
	mov	r5,#0x00
	inc	r7
	cjne	r7,#0x00,00137$
	inc	r5
00137$:
	mov	a,r6
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,_kiem_tra_den_now_65536_19
	subb	a,r4
	clr	a
	rlc	a
	mov	r3,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_eep_tatmoden + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,_kiem_tra_den_now_65536_19
	subb	a,r4
	clr	a
	rlc	a
	mov	r3,#0x00
	add	a,r7
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	orl	a,b
	jz	00110$
;	include/chuong_trinh.c:11: DenRelay = (i+1)%2;   
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
;	assignBit
	mov	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_P21,c
00110$:
;	include/chuong_trinh.c:12: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kiem_tra_nhac'
;------------------------------------------------------------
;	include/chuong_trinh.c:14: void kiem_tra_nhac(){
;	-----------------------------------------
;	 function kiem_tra_nhac
;	-----------------------------------------
_kiem_tra_nhac:
;	include/chuong_trinh.c:15: switch(mp3_status){
	mov	r0,#_mp3_status
	cjne	@r0,#0x00,00154$
	sjmp	00101$
00154$:
	mov	r0,#_mp3_status
	cjne	@r0,#0x01,00155$
	ljmp	00116$
00155$:
	mov	r0,#_mp3_status
	cjne	@r0,#0x02,00156$
	sjmp	00110$
00156$:
	ret
;	include/chuong_trinh.c:16: case mp3_IDLE:
00101$:
;	include/chuong_trinh.c:17: if( mp3_hour != hour || mp3_minute!=minute ){
	mov	r0,#_mp3_hour
	mov	a,@r0
	cjne	a,_hour,00107$
	mov	r0,#_mp3_minute
	mov	a,@r0
	cjne	a,_minute,00159$
	ret
00159$:
00107$:
;	include/chuong_trinh.c:18: mp3_hour = hour;
	mov	r7,_hour
	mov	r0,#_mp3_hour
	mov	@r0,ar7
;	include/chuong_trinh.c:19: mp3_minute = minute;
	mov	r6,_minute
	mov	r0,#_mp3_minute
	mov	@r0,ar6
;	include/chuong_trinh.c:21: if(eep_mp3==2)mp3_play(10, mp3_hour,mp3_minute);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	r5,#0x02,00105$
	mov	_mp3_play_PARM_2,r7
	mov	_mp3_play_PARM_3,r6
	mov	dpl,#0x0a
	lcall	_mp3_play
	sjmp	00106$
00105$:
;	include/chuong_trinh.c:22: else if(!(mp3_minute%5))mp3_play(date, mp3_hour,mp3_minute);
	mov	ar4,r6
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x05
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00106$
	mov	dptr,#_date
	movx	a,@dptr
	mov	r5,a
	mov	_mp3_play_PARM_2,r7
	mov	_mp3_play_PARM_3,r6
	mov	dpl,r5
	lcall	_mp3_play
00106$:
;	include/chuong_trinh.c:23: mp3_doi_start = 90;
	mov	r0,#_mp3_doi_start
	mov	@r0,#0x5a
;	include/chuong_trinh.c:24: mp3_status = mp3_START;
	mov	r0,#_mp3_status
	mov	@r0,#0x02
;	include/chuong_trinh.c:26: break;
;	include/chuong_trinh.c:27: case mp3_START:
	ret
00110$:
;	include/chuong_trinh.c:28: if(mp3_playing) mp3_status = AmplyRelay = mp3_END;
	jnb	_P12,00114$
;	assignBit
	setb	_P42
	mov	r0,#_mp3_status
	mov	c,_P42
	clr	a
	rlc	a
	mov	@r0,a
	sjmp	00116$
00114$:
;	include/chuong_trinh.c:29: else if(mp3_doi_start--) break;
	mov	r0,#_mp3_doi_start
	mov	ar7,@r0
	mov	r0,#_mp3_doi_start
	mov	a,r7
	dec	a
	mov	@r0,a
	mov	a,r7
	jnz	00120$
;	include/chuong_trinh.c:30: case mp3_END:
00116$:
;	include/chuong_trinh.c:31: if(!mp3_playing) AmplyRelay = mp3_status = mp3_IDLE;
	jb	_P12,00120$
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	assignBit
	clr	_P42
;	include/chuong_trinh.c:32: }
00120$:
;	include/chuong_trinh.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_run_check'
;------------------------------------------------------------
;	include/motor_cam_phim.c:3: u8 motor_run_check() __reentrant {
;	-----------------------------------------
;	 function motor_run_check
;	-----------------------------------------
_motor_run_check:
;	include/motor_cam_phim.c:7: if (dien_ap_thap || motor_dung || mode ){ motorDir1 = 0; return 5;}
	jb	_dien_ap_thap,00101$
	jb	_motor_dung,00101$
	mov	dptr,#_mode
	movx	a,@dptr
	jz	00102$
00101$:
;	assignBit
	clr	_motorDir1
	mov	dpl,#0x05
	ret
00102$:
;	include/motor_cam_phim.c:8: if(may_canh_kim)return (canhkim && (may_canh_kim & 1))?may_canh_kim-1:5;
	mov	dptr,#_may_canh_kim
	movx	a,@dptr
	mov	r7,a
	jz	00106$
	mov	dptr,#_canhkim
	movx	a,@dptr
	jz	00132$
	mov	a,r7
	anl	a,#0x01
	mov	r6,a
	jz	00132$
	dec	r7
	mov	a,r7
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00133$
00132$:
	mov	r6,#0x05
	mov	r7,#0x00
00133$:
	mov	dpl,r6
	ret
00106$:
;	include/motor_cam_phim.c:10: if(so_motor<3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00206$
00206$:
	jc	00207$
	ljmp	00113$
00207$:
;	include/motor_cam_phim.c:11: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00208$
	ljmp	00108$
00208$:
	mov	a,_phut
	mov	r7,a
	cjne	a,_minute,00107$
	mov	a,_hour12
	cjne	a,_gio,00211$
	sjmp	00108$
00211$:
00107$:
;	include/motor_cam_phim.c:12: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,_gio
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir1,c
;	include/motor_cam_phim.c:15: return 0;
	mov	dpl,#0x00
	ret
00108$:
;	include/motor_cam_phim.c:17: }else {motorDir1 = 0; return 5;}
;	assignBit
	clr	_motorDir1
	mov	dpl,#0x05
	ret
00113$:
;	include/motor_cam_phim.c:20: if(motor_index>1){
	mov	a,_motor_index
	add	a,#0xff - 0x01
	jc	00212$
	ljmp	00119$
00212$:
;	include/motor_cam_phim.c:21: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00213$
	ljmp	00119$
00213$:
	mov	a,_phut
	mov	r7,a
	cjne	a,_minute,00114$
	mov	a,_hour12
	cjne	a,_gio,00216$
	sjmp	00119$
00216$:
00114$:
;	include/motor_cam_phim.c:22: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,_gio
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir1,c
;	include/motor_cam_phim.c:23: return 0;
	mov	dpl,#0x00
	ret
00119$:
;	include/motor_cam_phim.c:26: if(thoi_gian_doi_doc_cam[2] && (phut[2]!=minute || gio[2]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	a,@dptr
	jnz	00217$
	ljmp	00121$
00217$:
	mov	a,(_phut + 0x0002)
	mov	r7,a
	cjne	a,_minute,00120$
	mov	a,_hour12
	cjne	a,(_gio + 0x0002),00220$
	sjmp	00121$
00220$:
00120$:
;	include/motor_cam_phim.c:27: motorDir1 = (720 + gio[2]*60 + phut[2] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,(_gio + 0x0002)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir1,c
;	include/motor_cam_phim.c:28: return 2;
	mov	dpl,#0x02
	ret
00121$:
;	include/motor_cam_phim.c:30: if(motor_index<2){
	mov	a,#0x100 - 0x02
	add	a,_motor_index
	jnc	00221$
	ljmp	00129$
00221$:
;	include/motor_cam_phim.c:31: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00222$
	ljmp	00129$
00222$:
	mov	a,_phut
	mov	r7,a
	cjne	a,_minute,00124$
	mov	a,_hour12
	cjne	a,_gio,00225$
	sjmp	00129$
00225$:
00124$:
;	include/motor_cam_phim.c:32: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,_gio
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir1,c
;	include/motor_cam_phim.c:33: return 0;
	mov	dpl,#0x00
	ret
00129$:
;	include/motor_cam_phim.c:37: motorDir1 = 0;
;	assignBit
	clr	_motorDir1
;	include/motor_cam_phim.c:39: return 5;
	mov	dpl,#0x05
;	include/motor_cam_phim.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_run_check2'
;------------------------------------------------------------
;	include/motor_cam_phim.c:41: u8 motor_run_check2(){
;	-----------------------------------------
;	 function motor_run_check2
;	-----------------------------------------
_motor_run_check2:
;	include/motor_cam_phim.c:45: if (so_motor==1 || dien_ap_thap || motor_dung || mode ) {motorDir2 = 0;return 5;}
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00205$
	sjmp	00101$
00205$:
	jb	_dien_ap_thap,00101$
	jb	_motor_dung,00101$
	mov	dptr,#_mode
	movx	a,@dptr
	jz	00102$
00101$:
;	assignBit
	clr	_motorDir2
	mov	dpl,#0x05
	ret
00102$:
;	include/motor_cam_phim.c:46: if(may_canh_kim)return (canhkim && !(may_canh_kim & 1))?may_canh_kim-1:5;
	mov	dptr,#_may_canh_kim
	movx	a,@dptr
	mov	r6,a
	jz	00107$
	mov	dptr,#_canhkim
	movx	a,@dptr
	jz	00133$
	mov	a,r6
	anl	a,#0x01
	mov	r5,a
	jnz	00133$
	dec	r6
	mov	a,r6
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	sjmp	00134$
00133$:
	mov	r5,#0x05
	mov	r6,#0x00
00134$:
	mov	dpl,r5
	ret
00107$:
;	include/motor_cam_phim.c:47: if(so_motor<4){
	cjne	r7,#0x04,00212$
00212$:
	jc	00213$
	ljmp	00114$
00213$:
;	include/motor_cam_phim.c:48: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	a,@dptr
	jnz	00214$
	ljmp	00109$
00214$:
	mov	a,(_phut + 0x0001)
	mov	r7,a
	cjne	a,_minute,00108$
	mov	a,_hour12
	cjne	a,(_gio + 0x0001),00217$
	sjmp	00109$
00217$:
00108$:
;	include/motor_cam_phim.c:49: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,(_gio + 0x0001)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir2,c
;	include/motor_cam_phim.c:50: return 1;
	mov	dpl,#0x01
	ret
00109$:
;	include/motor_cam_phim.c:51: }else {motorDir2 = 0; return 5;}
;	assignBit
	clr	_motorDir2
	mov	dpl,#0x05
	ret
00114$:
;	include/motor_cam_phim.c:53: if(motor_index2>1){
	mov	a,_motor_index2
	add	a,#0xff - 0x01
	jc	00218$
	ljmp	00120$
00218$:
;	include/motor_cam_phim.c:54: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	a,@dptr
	jnz	00219$
	ljmp	00120$
00219$:
	mov	a,(_phut + 0x0001)
	mov	r7,a
	cjne	a,_minute,00115$
	mov	a,_hour12
	cjne	a,(_gio + 0x0001),00222$
	sjmp	00120$
00222$:
00115$:
;	include/motor_cam_phim.c:55: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,(_gio + 0x0001)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir2,c
;	include/motor_cam_phim.c:56: return 1;
	mov	dpl,#0x01
	ret
00120$:
;	include/motor_cam_phim.c:59: if(thoi_gian_doi_doc_cam[3] && (phut[3]!=minute || gio[3]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0003)
	movx	a,@dptr
	jnz	00223$
	ljmp	00122$
00223$:
	mov	a,(_phut + 0x0003)
	mov	r7,a
	cjne	a,_minute,00121$
	mov	a,_hour12
	cjne	a,(_gio + 0x0003),00226$
	sjmp	00122$
00226$:
00121$:
;	include/motor_cam_phim.c:60: motorDir2 = (720 + gio[3]*60 + phut[3] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,(_gio + 0x0003)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir2,c
;	include/motor_cam_phim.c:61: return 3;
	mov	dpl,#0x03
	ret
00122$:
;	include/motor_cam_phim.c:63: if(motor_index2<2){
	mov	a,#0x100 - 0x02
	add	a,_motor_index2
	jnc	00227$
	ljmp	00130$
00227$:
;	include/motor_cam_phim.c:64: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	a,@dptr
	jnz	00228$
	ljmp	00130$
00228$:
	mov	a,(_phut + 0x0001)
	mov	r7,a
	cjne	a,_minute,00125$
	mov	a,_hour12
	cjne	a,(_gio + 0x0001),00231$
	sjmp	00130$
00231$:
00125$:
;	include/motor_cam_phim.c:65: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,(_gio + 0x0001)
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	add	a,#0xd0
	mov	r5,a
	mov	a,#0x02
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	a,r7
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x003c
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	r4,_minute
	mov	r7,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r6
	subb	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,#0x68
	subb	a,r6
	mov	a,#(0x01 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir2,c
;	include/motor_cam_phim.c:66: return 1;
	mov	dpl,#0x01
	ret
00130$:
;	include/motor_cam_phim.c:69: motorDir2 = 0;
;	assignBit
	clr	_motorDir2
;	include/motor_cam_phim.c:70: return 5;
	mov	dpl,#0x05
;	include/motor_cam_phim.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'luu_gio_kim'
;------------------------------------------------------------
;	include/motor_cam_phim.c:73: void luu_gio_kim(){
;	-----------------------------------------
;	 function luu_gio_kim
;	-----------------------------------------
_luu_gio_kim:
;	include/motor_cam_phim.c:74: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
;	include/motor_cam_phim.c:75: switch(so_motor){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00125$
	sjmp	00104$
00125$:
	cjne	r7,#0x02,00126$
	sjmp	00103$
00126$:
	cjne	r7,#0x03,00127$
	sjmp	00102$
00127$:
	cjne	r7,#0x04,00107$
;	include/motor_cam_phim.c:76: case 4:IAP_ghibyte(PHUT4_EEPROM,phut[3]);IAP_ghibyte(GIO4_EEPROM,gio[3]);
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0003)
	mov	dptr,#0x0206
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0003)
	mov	dptr,#0x0207
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:77: case 3:IAP_ghibyte(PHUT3_EEPROM,phut[2]);IAP_ghibyte(GIO3_EEPROM,gio[2]);
00102$:
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0002)
	mov	dptr,#0x0204
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0002)
	mov	dptr,#0x0205
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:78: case 2:IAP_ghibyte(PHUT2_EEPROM,phut[1]);IAP_ghibyte(GIO2_EEPROM,gio[1]);
00103$:
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0001)
	mov	dptr,#0x0202
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0001)
	mov	dptr,#0x0203
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:79: case 1:IAP_ghibyte(PHUT1_EEPROM,phut[0]);IAP_ghibyte(GIO1_EEPROM,gio[0]);
00104$:
	mov	_IAP_ghibyte_PARM_2,_phut
	mov	dptr,#0x0200
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,_gio
	mov	dptr,#0x0201
;	include/motor_cam_phim.c:81: }
;	include/motor_cam_phim.c:83: }
	ljmp	_IAP_ghibyte
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Timer_init'
;------------------------------------------------------------
;	include/motor_cam_phim.c:84: void PCA_Timer_init(){
;	-----------------------------------------
;	 function PCA_Timer_init
;	-----------------------------------------
_PCA_Timer_init:
;	include/motor_cam_phim.c:85: CCAP0L = CCAP0H = 0;
	mov	_CCAP0H,#0x00
	mov	_CCAP0L,#0x00
;	include/motor_cam_phim.c:86: PCA_Timer0 = 25000;
	mov	dptr,#_PCA_Timer0
	mov	a,#0xa8
	movx	@dptr,a
	mov	a,#0x61
	inc	dptr
	movx	@dptr,a
;	include/motor_cam_phim.c:87: CCAPM0 = 0x49;
	mov	_CCAPM0,#0x49
;	include/motor_cam_phim.c:88: CR=1;
;	assignBit
	setb	_CR
;	include/motor_cam_phim.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_step_int_init'
;------------------------------------------------------------
;	include/motor_cam_phim.c:91: void motor_step_int_init(){
;	-----------------------------------------
;	 function motor_step_int_init
;	-----------------------------------------
_motor_step_int_init:
;	include/motor_cam_phim.c:92: AUXR &=0x7F;	//Timer clock is 12T mode
	anl	_AUXR,#0x7f
;	include/motor_cam_phim.c:93: TMOD = 0;		//Set timer work mode
	mov	_TMOD,#0x00
;	include/motor_cam_phim.c:100: TH0 = (63536 - (toc_do_motor_step * 2000)) >> 8;
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	mov	r7,a
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x07d0
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r3,a
	mov	a,#0x30
	clr	c
	subb	a,r5
	mov	a,#0xf8
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r4
	clr	a
	subb	a,r3
	mov	_TH0,r6
;	include/motor_cam_phim.c:101: TL0 = (63536 - (toc_do_motor_step * 2000));
	mov	a,r7
	mov	b,#0xd0
	mul	ab
	setb	c
	subb	a,#0x30
	cpl	a
	mov	_TL0,a
;	include/motor_cam_phim.c:102: TF0 = 0;
;	assignBit
	clr	_TF0
;	include/motor_cam_phim.c:103: TR0 = 1;
;	assignBit
	setb	_TR0
;	include/motor_cam_phim.c:104: ET0 = 1;
;	assignBit
	setb	_ET0
;	include/motor_cam_phim.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xunggiay'
;------------------------------------------------------------
;	include/motor_cam_phim.c:107: void xunggiay(){
;	-----------------------------------------
;	 function xunggiay
;	-----------------------------------------
_xunggiay:
;	include/motor_cam_phim.c:108: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:109: flip_pulse^=1;
	cpl	_flip_pulse
;	include/motor_cam_phim.c:110: over_cur_led = flip_pulse;
;	assignBit
	mov	c,_flip_pulse
	mov	_P07,c
;	include/motor_cam_phim.c:111: giay_out=1;	
;	assignBit
	setb	_giay_out
;	include/motor_cam_phim.c:112: if(connect) connect--;
	mov	dptr,#_connect
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00102$
	mov	a,r7
	dec	a
	mov	dptr,#_connect
	movx	@dptr,a
00102$:
;	include/motor_cam_phim.c:113: if(total_try_time_out) total_try_time_out--;
	mov	dptr,#_total_try_time_out
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00104$
	mov	a,r7
	dec	a
	mov	dptr,#_total_try_time_out
	movx	@dptr,a
00104$:
;	include/motor_cam_phim.c:115: if(mode!=2 && ++second>max_second-1){
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00163$
	ret
00163$:
	inc	_second
	mov	dptr,#_max_second
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	dec	r7
	cjne	r7,#0xff,00164$
	dec	r6
00164$:
	mov	r4,_second
	mov	r5,#0x00
	clr	c
	mov	a,r7
	subb	a,r4
	mov	a,r6
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00119$
;	include/motor_cam_phim.c:116: second=0;
	mov	_second,#0x00
;	include/motor_cam_phim.c:117: if(so_lan_goi_dien && !--delay_cuoc_goi_ke_tiep) so_lan_goi_dien = 0;
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	jz	00106$
	mov	dptr,#_delay_cuoc_goi_ke_tiep
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00106$
	mov	dptr,#_so_lan_goi_dien
	clr	a
	movx	@dptr,a
00106$:
;	include/motor_cam_phim.c:118: phut_out = 1;
;	assignBit
	setb	_phut_out
;	include/motor_cam_phim.c:119: if(++minute>59){
	inc	_minute
	mov	a,_minute
	add	a,#0xff - 0x3b
	jnc	00119$
;	include/motor_cam_phim.c:120: da_gui_bao_cao = 0;
;	assignBit
	clr	_da_gui_bao_cao
;	include/motor_cam_phim.c:121: minute=0;
	mov	_minute,#0x00
;	include/motor_cam_phim.c:122: if(++hour>23){
	inc	_hour
	mov	a,_hour
	add	a,#0xff - 0x17
	jnc	00111$
;	include/motor_cam_phim.c:123: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/motor_cam_phim.c:124: hour=0;
	mov	_hour,#0x00
;	include/motor_cam_phim.c:125: if(ngay_reset_con_lai)
	mov	dptr,#_ngay_reset_con_lai
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00109$
;	include/motor_cam_phim.c:126: ngay_reset_con_lai--;
	mov	a,r7
	dec	a
	mov	dptr,#_ngay_reset_con_lai
	movx	@dptr,a
00109$:
;	include/motor_cam_phim.c:127: da_gui_bao_cao_thang = 0;
;	assignBit
	clr	_da_gui_bao_cao_thang
00111$:
;	include/motor_cam_phim.c:129: if(++hour12>11) hour12 = 0;
	inc	_hour12
	mov	a,_hour12
	add	a,#0xff - 0x0b
	jnc	00119$
	mov	_hour12,#0x00
00119$:
;	include/motor_cam_phim.c:133: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_servide'
;------------------------------------------------------------
;	include/motor_cam_phim.c:135: void clock_servide () __interrupt INT_DONG_HO __using MEM_DONG_HO {
;	-----------------------------------------
;	 function clock_servide
;	-----------------------------------------
_clock_servide:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	include/motor_cam_phim.c:136: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:137: xung_giay_check=250;
	mov	dptr,#_xung_giay_check
	mov	a,#0xfa
	movx	@dptr,a
;	include/motor_cam_phim.c:138: mat_xung_giay=0;
;	assignBit
	clr	_mat_xung_giay
;	include/motor_cam_phim.c:139: xunggiay();
	mov	psw,#0x00
	lcall	_xunggiay
	mov	psw,#0x08
;	include/motor_cam_phim.c:141: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Handler'
;------------------------------------------------------------
;	include/motor_cam_phim.c:147: void	PCA_Handler (void) __interrupt PCA_VECTOR __using MEM_DONG_HO{
;	-----------------------------------------
;	 function PCA_Handler
;	-----------------------------------------
_PCA_Handler:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	include/motor_cam_phim.c:148: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:149: if(CCF0){
;	include/motor_cam_phim.c:150: CCF0=0;//tat co PCA timer 0
;	assignBit
	jbc	_CCF0,00479$
	ljmp	00193$
00479$:
;	include/motor_cam_phim.c:151: CCAP0L = PCA_Timer0; //nap vao vi tri timer tiep theo
	mov	dptr,#_PCA_Timer0
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_CCAP0L,r6
;	include/motor_cam_phim.c:152: CCAP0H = PCA_Timer0 >> 8;
	mov	_CCAP0H,r7
;	include/motor_cam_phim.c:153: PCA_Timer0 += 25000; //tang bien nap vao len 25ms
	mov	dptr,#_PCA_Timer0
	mov	a,#0xa8
	add	a,r6
	movx	@dptr,a
	mov	a,#0x61
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	include/motor_cam_phim.c:155: if(eep_cam){
	mov	dptr,#_eep_cam
	clr	a
	movc	a,@a+dptr
	jz	00102$
;	include/motor_cam_phim.c:156: trang_thai_cam = !cam_che;
	mov	c,_P36
	cpl	c
	mov	_trang_thai_cam,c
;	include/motor_cam_phim.c:157: trang_thai_cam2 = !cam_che2;
	mov	c,_P37
	cpl	c
	mov	_trang_thai_cam2,c
	sjmp	00103$
00102$:
;	include/motor_cam_phim.c:159: trang_thai_cam = cam_che;
;	assignBit
	mov	c,_P36
	mov	_trang_thai_cam,c
;	include/motor_cam_phim.c:160: trang_thai_cam2 = cam_che2;
;	assignBit
	mov	c,_P37
	mov	_trang_thai_cam2,c
00103$:
;	include/motor_cam_phim.c:162: if(so_motor == 1){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00114$
;	include/motor_cam_phim.c:163: if(eep_cam){
	mov	dptr,#_eep_cam
	clr	a
	movc	a,@a+dptr
	jz	00111$
;	include/motor_cam_phim.c:164: if(may_dc) trang_thai_cam = !trang_thai_cam && !trang_thai_cam2;  
	jnb	_may_dc,00105$
	jb	_trang_thai_cam,00195$
	jnb	_trang_thai_cam2,00196$
00195$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00197$
00196$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00197$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00105$:
;	include/motor_cam_phim.c:165: else trang_thai_cam = trang_thai_cam || trang_thai_cam2;
	jb	_trang_thai_cam,00199$
	jb	_trang_thai_cam2,00199$
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00200$
00199$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00200$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00111$:
;	include/motor_cam_phim.c:167: if(may_dc) trang_thai_cam = !trang_thai_cam || !trang_thai_cam2;  
	jnb	_may_dc,00108$
	jnb	_trang_thai_cam,00202$
	jnb	_trang_thai_cam2,00202$
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00203$
00202$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00203$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00108$:
;	include/motor_cam_phim.c:168: else trang_thai_cam = trang_thai_cam && trang_thai_cam2;
	jnb	_trang_thai_cam,00204$
	jb	_trang_thai_cam2,00205$
00204$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00206$
00205$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00206$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
00114$:
;	include/motor_cam_phim.c:172: if(motor_index!=5){
	mov	a,#0x05
	cjne	a,_motor_index,00494$
	ljmp	00144$
00494$:
;	include/motor_cam_phim.c:174: if(trang_thai_cam)
	jnb	_trang_thai_cam,00141$
;	include/motor_cam_phim.c:175: if(cam_vao) cam_vao_han = 1;				
	jnb	_cam_vao,00116$
;	assignBit
	setb	_cam_vao_han
	ljmp	00144$
00116$:
;	include/motor_cam_phim.c:176: else cam_vao = 1;
;	assignBit
	setb	_cam_vao
	ljmp	00144$
00141$:
;	include/motor_cam_phim.c:177: else if(cam_ra){
	jb	_cam_ra,00497$
	ljmp	00138$
00497$:
;	include/motor_cam_phim.c:178: thoi_gian_doi_doc_cam[motor_index] = thoi_gian_doi_cam_chuan;
	mov	a,_motor_index
	add	a,#_thoi_gian_doi_doc_cam
	mov	r6,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r7,a
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	include/motor_cam_phim.c:179: if(canhkim) canhkim--;
	mov	dptr,#_canhkim
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00130$
	mov	a,r7
	dec	a
	mov	dptr,#_canhkim
	movx	@dptr,a
	sjmp	00131$
00130$:
;	include/motor_cam_phim.c:180: else if(motorDir && ++phut[motor_index]>59){
	jnb	_motorDir,00126$
	mov	a,_motor_index
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3b
	jnc	00126$
;	include/motor_cam_phim.c:181: phut[motor_index] = 0;
	mov	a,_motor_index
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x00
;	include/motor_cam_phim.c:182: if(++gio[motor_index]>11) gio[motor_index] = 0;
	mov	a,_motor_index
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0b
	jnc	00131$
	mov	a,_motor_index
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00131$
00126$:
;	include/motor_cam_phim.c:183: }else if(!motorDir && --phut[motor_index]>60){
	jb	_motorDir,00131$
	mov	a,_motor_index
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3c
	jnc	00131$
;	include/motor_cam_phim.c:184: phut[motor_index] = 59;
	mov	a,_motor_index
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x3b
;	include/motor_cam_phim.c:185: if(--gio[motor_index]>12) gio[motor_index] = 11;
	mov	a,_motor_index
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0c
	jnc	00131$
	mov	a,_motor_index
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x0b
00131$:
;	include/motor_cam_phim.c:187: cam_ra = cam_vao = cam_vao_han = 0;
;	assignBit
	clr	_cam_vao_han
;	assignBit
	clr	_cam_vao
;	assignBit
	clr	_cam_ra
;	include/motor_cam_phim.c:188: motor_index = motor_run_check();
	mov	psw,#0x00
	lcall	_motor_run_check
	mov	psw,#0x08
	mov	_motor_index,dpl
;	include/motor_cam_phim.c:190: luu_gio_kim();				
	mov	psw,#0x00
	lcall	_luu_gio_kim
	mov	psw,#0x08
	sjmp	00144$
00138$:
;	include/motor_cam_phim.c:191: }else if(cam_vao_han) cam_ra = 1;
	jnb	_cam_vao_han,00135$
;	assignBit
	setb	_cam_ra
	sjmp	00144$
00135$:
;	include/motor_cam_phim.c:192: else if(cam_vao) cam_vao = 0;
;	assignBit
	jbc	_cam_vao,00506$
	sjmp	00144$
00506$:
00144$:
;	include/motor_cam_phim.c:195: if(motor_index2!=5){
	mov	a,#0x05
	cjne	a,_motor_index2,00507$
	ljmp	00174$
00507$:
;	include/motor_cam_phim.c:196: if(trang_thai_cam2)
	jnb	_trang_thai_cam2,00171$
;	include/motor_cam_phim.c:197: if(cam_vao2) cam_vao_han2 = 1;				
	jnb	_cam_vao2,00146$
;	assignBit
	setb	_cam_vao_han2
	ljmp	00174$
00146$:
;	include/motor_cam_phim.c:198: else cam_vao2 = 1;
;	assignBit
	setb	_cam_vao2
	ljmp	00174$
00171$:
;	include/motor_cam_phim.c:199: else if(cam_ra2){
	jb	_cam_ra2,00510$
	ljmp	00168$
00510$:
;	include/motor_cam_phim.c:200: thoi_gian_doi_doc_cam[motor_index2] = thoi_gian_doi_cam_chuan;
	mov	a,_motor_index2
	add	a,#_thoi_gian_doi_doc_cam
	mov	r6,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r7,a
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
;	include/motor_cam_phim.c:201: if(canhkim) canhkim--;
	mov	dptr,#_canhkim
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00160$
	mov	a,r7
	dec	a
	mov	dptr,#_canhkim
	movx	@dptr,a
	sjmp	00161$
00160$:
;	include/motor_cam_phim.c:202: else if(motorDir && ++phut[motor_index2]>59){
	jnb	_motorDir,00156$
	mov	a,_motor_index2
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3b
	jnc	00156$
;	include/motor_cam_phim.c:203: phut[motor_index2] = 0;
	mov	a,_motor_index2
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x00
;	include/motor_cam_phim.c:204: if(++gio[motor_index2]>11) gio[motor_index2] = 0;
	mov	a,_motor_index2
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0b
	jnc	00161$
	mov	a,_motor_index2
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00161$
00156$:
;	include/motor_cam_phim.c:205: }else if(!motorDir && --phut[motor_index2]>60){
	jb	_motorDir,00161$
	mov	a,_motor_index2
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3c
	jnc	00161$
;	include/motor_cam_phim.c:206: phut[motor_index2] = 59;
	mov	a,_motor_index2
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x3b
;	include/motor_cam_phim.c:207: if(--gio[motor_index2]>12) gio[motor_index2] = 11;
	mov	a,_motor_index2
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0c
	jnc	00161$
	mov	a,_motor_index2
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x0b
00161$:
;	include/motor_cam_phim.c:209: cam_ra2 = cam_vao2 = cam_vao_han2 = 0;
;	assignBit
	clr	_cam_vao_han2
;	assignBit
	clr	_cam_vao2
;	assignBit
	clr	_cam_ra2
;	include/motor_cam_phim.c:210: motor_index2 = motor_run_check2();
	mov	psw,#0x00
	lcall	_motor_run_check2
	mov	psw,#0x08
	mov	_motor_index2,dpl
;	include/motor_cam_phim.c:211: luu_gio_kim();				
	mov	psw,#0x00
	lcall	_luu_gio_kim
	mov	psw,#0x08
	sjmp	00174$
00168$:
;	include/motor_cam_phim.c:212: }else if(cam_vao_han2) cam_ra2 = 1;
	jnb	_cam_vao_han2,00165$
;	assignBit
	setb	_cam_ra2
	sjmp	00174$
00165$:
;	include/motor_cam_phim.c:213: else if(cam_vao2) cam_vao2 = 0;
;	assignBit
	jbc	_cam_vao2,00519$
	sjmp	00174$
00519$:
00174$:
;	include/motor_cam_phim.c:218: if(phim_mode_xuong && phim_mode_vao) phim_mode_doi = 2;
	jnb	_phim_mode_xuong,00176$
	jnb	_P35,00176$
	mov	dptr,#_phim_mode_doi
	mov	a,#0x02
	movx	@dptr,a
00176$:
;	include/motor_cam_phim.c:219: phim_mode_giu = phim_mode_xuong && !phim_mode_vao;
	jnb	_phim_mode_xuong,00207$
	jnb	_P35,00208$
00207$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00209$
00208$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00209$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_giu,c
;	include/motor_cam_phim.c:220: phim_mode_xuong = !phim_mode_cu && !phim_mode_vao;
	jb	_phim_mode_cu,00210$
	jnb	_P35,00211$
00210$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00212$
00211$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00212$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_xuong,c
;	include/motor_cam_phim.c:221: phim_mode_nhan = phim_mode_nhan || (!phim_mode_giu && phim_mode_xuong);
	jb	_phim_mode_nhan,00214$
	jb	_phim_mode_giu,00213$
	jb	_phim_mode_xuong,00214$
00213$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00215$
00214$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00215$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_nhan,c
;	include/motor_cam_phim.c:222: phim_mode_cu = phim_mode_vao;
;	assignBit
	mov	c,_P35
	mov	_phim_mode_cu,c
;	include/motor_cam_phim.c:224: if(phim_back_xuong && key_in2) phim_back_doi = 2;
	jnb	_phim_back_xuong,00179$
	jnb	_P33,00179$
	mov	dptr,#_phim_back_doi
	mov	a,#0x02
	movx	@dptr,a
00179$:
;	include/motor_cam_phim.c:225: phim_back_giu = phim_back_xuong && !key_in2;
	jnb	_phim_back_xuong,00219$
	jnb	_P33,00220$
00219$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00221$
00220$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00221$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_giu,c
;	include/motor_cam_phim.c:226: phim_back_xuong = !phim_back_cu && !key_in2;
	jb	_phim_back_cu,00222$
	jnb	_P33,00223$
00222$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00224$
00223$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00224$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_xuong,c
;	include/motor_cam_phim.c:227: phim_back_nhan = phim_back_nhan || (!phim_back_giu && phim_back_xuong);
	jb	_phim_back_nhan,00226$
	jb	_phim_back_giu,00225$
	jb	_phim_back_xuong,00226$
00225$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00227$
00226$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00227$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_nhan,c
;	include/motor_cam_phim.c:228: phim_back_cu = key_in2;
;	assignBit
	mov	c,_P33
	mov	_phim_back_cu,c
;	include/motor_cam_phim.c:230: if(phim_cong_xuong && key_in3) phim_cong_doi = 2;
	jnb	_phim_cong_xuong,00182$
	jnb	_P34,00182$
	mov	dptr,#_phim_cong_doi
	mov	a,#0x02
	movx	@dptr,a
00182$:
;	include/motor_cam_phim.c:231: phim_cong_giu = phim_cong_xuong && !key_in3;
	jnb	_phim_cong_xuong,00231$
	jnb	_P34,00232$
00231$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00233$
00232$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00233$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_giu,c
;	include/motor_cam_phim.c:232: phim_cong_xuong = !phim_cong_cu && !key_in3;
	jb	_phim_cong_cu,00234$
	jnb	_P34,00235$
00234$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00236$
00235$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00236$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_xuong,c
;	include/motor_cam_phim.c:233: phim_cong_nhan = phim_cong_nhan || (!phim_cong_giu && phim_cong_xuong);
	jb	_phim_cong_nhan,00238$
	jb	_phim_cong_giu,00237$
	jb	_phim_cong_xuong,00238$
00237$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00239$
00238$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00239$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_nhan,c
;	include/motor_cam_phim.c:234: phim_cong_cu = key_in3;
;	assignBit
	mov	c,_P34
	mov	_phim_cong_cu,c
;	include/motor_cam_phim.c:236: if(!--cnt){
	mov	dptr,#_cnt
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00185$
;	include/motor_cam_phim.c:237: lcd_update_chop = 1;
;	assignBit
	setb	_lcd_update_chop
;	include/motor_cam_phim.c:238: cnt=20;
	mov	dptr,#_cnt
	mov	a,#0x14
	movx	@dptr,a
;	include/motor_cam_phim.c:239: chop=!chop;
	cpl	_chop
00185$:
;	include/motor_cam_phim.c:242: if(xung_giay_check){
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00189$
;	include/motor_cam_phim.c:243: xung_giay_check--;
	mov	a,r7
	dec	a
	mov	dptr,#_xung_giay_check
	movx	@dptr,a
;	include/motor_cam_phim.c:244: counter_xung_giay=40;
	mov	dptr,#_counter_xung_giay
	mov	a,#0x28
	movx	@dptr,a
	sjmp	00193$
00189$:
;	include/motor_cam_phim.c:245: }else if(!--counter_xung_giay){
	mov	dptr,#_counter_xung_giay
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00193$
;	include/motor_cam_phim.c:246: counter_xung_giay=40;
	mov	dptr,#_counter_xung_giay
	mov	a,#0x28
	movx	@dptr,a
;	include/motor_cam_phim.c:247: xunggiay();
	mov	psw,#0x00
	lcall	_xunggiay
	mov	psw,#0x08
00193$:
;	include/motor_cam_phim.c:252: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'cam_phim'
;------------------------------------------------------------
;	include/motor_cam_phim.c:254: void cam_phim() __interrupt 1 __using 2 {
;	-----------------------------------------
;	 function cam_phim
;	-----------------------------------------
_cam_phim:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x10
;	include/motor_cam_phim.c:255: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:256: if(atmel_phat){
	jnb	_atmel_phat,00113$
;	include/motor_cam_phim.c:257: motor1 = motor_index == 0; motor2 = motor_index2 == 1;
	mov	a,_motor_index
	cjne	a,#0x01,00180$
00180$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P27,c
	mov	a,#0x01
	cjne	a,_motor_index2,00181$
	setb	c
	sjmp	00182$
00181$:
	clr	c
00182$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P25,c
;	include/motor_cam_phim.c:258: motor3 = motor_index == 2; motor4 = motor_index2 == 3;
	mov	a,#0x02
	cjne	a,_motor_index,00183$
	setb	c
	sjmp	00184$
00183$:
	clr	c
00184$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P26,c
	mov	a,#0x03
	cjne	a,_motor_index2,00185$
	setb	c
	sjmp	00186$
00185$:
	clr	c
00186$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P24,c
	ljmp	00115$
00113$:
;	include/motor_cam_phim.c:260: motorS1 = !motor_index && (eep_motor & 7) ; motorS2 = motor_index2 == 1;
	mov	a,_motor_index
	jnz	00117$
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	anl	a,#0x07
	jz	00189$
	sjmp	00118$
00189$:
00117$:
;	assignBit
	clr	_cam_phim_sloc0_1_0
	sjmp	00119$
00118$:
;	assignBit
	setb	_cam_phim_sloc0_1_0
00119$:
	mov	c,_cam_phim_sloc0_1_0
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P44,c
	mov	a,#0x01
	cjne	a,_motor_index2,00190$
	setb	c
	sjmp	00191$
00190$:
	clr	c
00191$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P43,c
;	include/motor_cam_phim.c:261: motorDir = may_dc || may_canh_kim || motorDir1 || motorDir2;
	jb	_may_dc,00121$
	mov	dptr,#_may_canh_kim
	movx	a,@dptr
	jnz	00121$
	jb	_motorDir1,00121$
	jb	_motorDir2,00121$
;	assignBit
	clr	_cam_phim_sloc0_1_0
	sjmp	00122$
00121$:
;	assignBit
	setb	_cam_phim_sloc0_1_0
00122$:
;	assignBit
	mov	c,_cam_phim_sloc0_1_0
	mov	_motorDir,c
;	include/motor_cam_phim.c:262: if(!may_dc && (motor_index!=5 || motor_index2!=5 || !motor_index) ){
	jb	_may_dc,00107$
	mov	a,#0x05
	cjne	a,_motor_index,00106$
	mov	a,#0x05
	cjne	a,_motor_index2,00106$
	mov	a,_motor_index
	jnz	00107$
00106$:
;	include/motor_cam_phim.c:263: P2=(P2&0x0f)|motor_step[step_index];
	mov	a,_P2
	anl	a,#0x0f
	mov	r7,a
	mov	a,_step_index
	mov	dptr,#_motor_step
	movc	a,@a+dptr
	orl	a,r7
	mov	_P2,a
;	include/motor_cam_phim.c:264: step_index+= motorDir?1:-1; 
	jnb	_motorDir,00129$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00130$
00129$:
	mov	r6,#0xff
	mov	r7,#0xff
00130$:
	mov	r7,_step_index
	mov	a,r6
	add	a,r7
;	include/motor_cam_phim.c:265: if(step_index>8) step_index=7;
	mov  _step_index,a
	add	a,#0xff - 0x08
	jnc	00104$
	mov	_step_index,#0x07
	sjmp	00115$
00104$:
;	include/motor_cam_phim.c:266: else if(step_index==8) step_index=0;
	mov	a,#0x08
	cjne	a,_step_index,00115$
	mov	_step_index,#0x00
	sjmp	00115$
00107$:
;	include/motor_cam_phim.c:267: } else P2 &= 0x0f;
	anl	_P2,#0x0f
00115$:
;	include/motor_cam_phim.c:270: }
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_sms_buffer'
;------------------------------------------------------------
;index_dau                 Allocated to registers 
;------------------------------------------------------------
;	include/gsm_serial.c:3: void clear_sms_buffer(u8 index_dau){
;	-----------------------------------------
;	 function clear_sms_buffer
;	-----------------------------------------
_clear_sms_buffer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	include/gsm_serial.c:4: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:5: while(index_dau<161)lenh_sms[index_dau++] = 0;
00101$:
	cjne	r7,#0xa1,00115$
00115$:
	jnc	00104$
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	inc	r7
	clr	a
	movx	@dptr,a
	sjmp	00101$
00104$:
;	include/gsm_serial.c:6: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_sendandcheck'
;------------------------------------------------------------
;retry                     Allocated with name '_gsm_sendandcheck_PARM_2'
;delay                     Allocated with name '_gsm_sendandcheck_PARM_3'
;display                   Allocated with name '_gsm_sendandcheck_PARM_4'
;cmd                       Allocated with name '_gsm_sendandcheck_cmd_65536_79'
;sloc0                     Allocated with name '_gsm_sendandcheck_sloc0_1_0'
;sloc1                     Allocated with name '_gsm_sendandcheck_sloc1_1_0'
;------------------------------------------------------------
;	include/gsm_serial.c:8: __bit gsm_sendandcheck(u8 *cmd, u8 retry, u8 delay, u8 *display){
;	-----------------------------------------
;	 function gsm_sendandcheck
;	-----------------------------------------
_gsm_sendandcheck:
	mov	_gsm_sendandcheck_cmd_65536_79,dpl
	mov	(_gsm_sendandcheck_cmd_65536_79 + 1),dph
	mov	(_gsm_sendandcheck_cmd_65536_79 + 2),b
;	include/gsm_serial.c:9: connect_time_out = delay;
	mov	r4,_gsm_sendandcheck_PARM_3
	mov	dptr,#_connect_time_out
	mov	a,r4
	movx	@dptr,a
;	include/gsm_serial.c:10: total_try_time_out = retry*delay + 10;
	mov	b,_gsm_sendandcheck_PARM_2
	mov	a,r4
	mul	ab
	mov	r3,a
	mov	dptr,#_total_try_time_out
	mov	a,#0x0a
	add	a,r3
	movx	@dptr,a
;	include/gsm_serial.c:11: gui_lenh_thanh_cong = 0;
;	assignBit
	clr	_gui_lenh_thanh_cong
;	include/gsm_serial.c:12: send_gsm_cmd(cmd);
	mov	dpl,_gsm_sendandcheck_cmd_65536_79
	mov	dph,(_gsm_sendandcheck_cmd_65536_79 + 1)
	mov	b,(_gsm_sendandcheck_cmd_65536_79 + 2)
	push	ar4
	lcall	_send_gsm_cmd
	pop	ar4
;	include/gsm_serial.c:13: while(!gui_lenh_thanh_cong && total_try_time_out && !nosim){ 
	mov	a,#0x02
	add	a,_gsm_sendandcheck_cmd_65536_79
	mov	r1,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_79 + 1)
	mov	r2,a
	mov	r3,(_gsm_sendandcheck_cmd_65536_79 + 2)
	mov	a,#0x07
	add	a,_gsm_sendandcheck_cmd_65536_79
	mov	_gsm_sendandcheck_sloc0_1_0,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_79 + 1)
	mov	(_gsm_sendandcheck_sloc0_1_0 + 1),a
	mov	(_gsm_sendandcheck_sloc0_1_0 + 2),(_gsm_sendandcheck_cmd_65536_79 + 2)
	mov	a,#0x08
	add	a,_gsm_sendandcheck_cmd_65536_79
	mov	_gsm_sendandcheck_sloc1_1_0,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_79 + 1)
	mov	(_gsm_sendandcheck_sloc1_1_0 + 1),a
	mov	(_gsm_sendandcheck_sloc1_1_0 + 2),(_gsm_sendandcheck_cmd_65536_79 + 2)
	mov	r0,_gsm_sendandcheck_PARM_2
00121$:
	jnb	_gui_lenh_thanh_cong,00174$
	ljmp	00123$
00174$:
	mov	dptr,#_total_try_time_out
	movx	a,@dptr
	jnz	00175$
	ljmp	00123$
00175$:
	jnb	_nosim,00176$
	ljmp	00123$
00176$:
;	include/gsm_serial.c:14: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/gsm_serial.c:15: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_LCD_guilenh
;	include/gsm_serial.c:16: LCD_guichuoi(display);
	mov	dpl,_gsm_sendandcheck_PARM_4
	mov	dph,(_gsm_sendandcheck_PARM_4 + 1)
	mov	b,(_gsm_sendandcheck_PARM_4 + 2)
	lcall	_LCD_guichuoi
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	include/gsm_serial.c:17: if(GPS_time) LCD_guigio(0xc0,"  GPS  ",hour,minute,second,flip_pulse);
	jnb	_GPS_time,00105$
	mov	_LCD_guigio_PARM_2,#___str_0
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_LCD_guigio
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00106$
00105$:
;	include/gsm_serial.c:18: else if(!eep_gpson) LCD_guigio(0xc0," ASIA  ",hour,minute,second,flip_pulse);
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jnz	00102$
	mov	_LCD_guigio_PARM_2,#___str_1
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_LCD_guigio
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00106$
00102$:
;	include/gsm_serial.c:19: else LCD_guigio(0xc0,"   DS  ",hour,minute,second,flip_pulse);
	mov	_LCD_guigio_PARM_2,#___str_2
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_2 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_LCD_guigio
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00106$:
;	include/gsm_serial.c:20: if(skip_gsm_cmd){skip_gsm_cmd = 0;return 0;}
;	assignBit
	jbc	_skip_gsm_cmd,00179$
	sjmp	00108$
00179$:
	clr	c
	ret
00108$:
;	include/gsm_serial.c:21: if(!connect || error){
	mov	dptr,#_connect
	movx	a,@dptr
	jz	00116$
	jb	_error,00181$
	ljmp	00121$
00181$:
00116$:
;	include/gsm_serial.c:22: error = 0;
;	assignBit
	clr	_error
;	include/gsm_serial.c:23: if(!retry--) break;
	mov	ar7,r0
	dec	r0
	mov	a,r7
	jnz	00182$
	ljmp	00123$
00182$:
;	include/gsm_serial.c:24: connect_time_out = connect = delay;
	mov	dptr,#_connect
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_connect_time_out
	mov	a,r4
	movx	@dptr,a
;	include/gsm_serial.c:25: if(*(cmd+2) == '+' && *(cmd+7)!='?' && *(cmd+8)!='?') send_gsm_cmd("A/\r"); 
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2b,00112$
	mov	dpl,_gsm_sendandcheck_sloc0_1_0
	mov	dph,(_gsm_sendandcheck_sloc0_1_0 + 1)
	mov	b,(_gsm_sendandcheck_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x3f,00185$
	sjmp	00112$
00185$:
	mov	dpl,_gsm_sendandcheck_sloc1_1_0
	mov	dph,(_gsm_sendandcheck_sloc1_1_0 + 1)
	mov	b,(_gsm_sendandcheck_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x3f,00186$
	sjmp	00112$
00186$:
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_send_gsm_cmd
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	ljmp	00121$
00112$:
;	include/gsm_serial.c:26: else send_gsm_cmd(cmd);
	mov	dpl,_gsm_sendandcheck_cmd_65536_79
	mov	dph,(_gsm_sendandcheck_cmd_65536_79 + 1)
	mov	b,(_gsm_sendandcheck_cmd_65536_79 + 2)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_send_gsm_cmd
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	ljmp	00121$
00123$:
;	include/gsm_serial.c:30: LCD_xoa(TREN);
	mov	dpl,#0x80
	lcall	_LCD_xoa
;	include/gsm_serial.c:31: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:32: return gui_lenh_thanh_cong;
	mov	c,_gui_lenh_thanh_cong
;	include/gsm_serial.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_quay_so'
;------------------------------------------------------------
;phone                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	include/gsm_serial.c:36: __bit gsm_quay_so(u8 *phone){
;	-----------------------------------------
;	 function gsm_quay_so
;	-----------------------------------------
_gsm_quay_so:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	include/gsm_serial.c:37: send_gsm_cmd("ATD");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:38: send_gsm_cmd(phone);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:39: return gsm_sendandcheck(";\r",1,60,"    CALLING     ");
	mov	_gsm_sendandcheck_PARM_4,#___str_6
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_6 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x01
	mov	_gsm_sendandcheck_PARM_3,#0x3c
	mov	dptr,#___str_5
	mov	b,#0x80
;	include/gsm_serial.c:40: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'send_sms'
;------------------------------------------------------------
;	include/gsm_serial.c:43: __bit send_sms(__bit chinh){
;	-----------------------------------------
;	 function send_sms
;	-----------------------------------------
_send_sms:
;	include/gsm_serial.c:44: if(lenh_sms[0] && !lenh_sms[3]){gsm_sendandcheck("\032",3,1,"TK<1000 K BAOCAO"); return 0;}
	mov	dptr,#_lenh_sms
	movx	a,@dptr
	jz	00102$
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	a,@dptr
	jnz	00102$
	mov	_gsm_sendandcheck_PARM_4,#___str_8
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_8 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	clr	c
	ret
00102$:
;	include/gsm_serial.c:45: send_gsm_cmd("AT+CMGS=\"");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:46: if(chinh) send_gsm_cmd(phone_chinh);
	jnb	_send_sms_PARM_1,00105$
	mov	dptr,#_phone_chinh
	mov	b,#0x00
	lcall	_send_gsm_cmd
	sjmp	00106$
00105$:
;	include/gsm_serial.c:47: else send_gsm_cmd(eep_phonephu);
	mov	dptr,#_eep_phonephu
	mov	b,#0x80
	lcall	_send_gsm_cmd
00106$:
;	include/gsm_serial.c:48: gsm_serial_cmd = CMGS;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x08
	movx	@dptr,a
;	include/gsm_serial.c:49: return gsm_sendandcheck("\"\r",5,61,"   SENDING   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_11
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_11 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x05
	mov	_gsm_sendandcheck_PARM_3,#0x3d
	mov	dptr,#___str_10
	mov	b,#0x80
;	include/gsm_serial.c:50: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'kiemtrataikhoan'
;------------------------------------------------------------
;	include/gsm_serial.c:52: __bit kiemtrataikhoan(){
;	-----------------------------------------
;	 function kiemtrataikhoan
;	-----------------------------------------
_kiemtrataikhoan:
;	include/gsm_serial.c:53: lenh_sms[0] = 0;
	mov	dptr,#_lenh_sms
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:54: have_cusd = 0;
;	assignBit
	clr	_have_cusd
;	include/gsm_serial.c:55: gsm_serial_cmd = CUSD;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x07
	movx	@dptr,a
;	include/gsm_serial.c:56: gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA TK   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_13
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_13 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x1e
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_gsm_sendandcheck
;	include/gsm_serial.c:57: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:58: return lenh_sms[0];
	mov	dptr,#_lenh_sms
	movx	a,@dptr
;	assignBit
	add	a,#0xff
;	include/gsm_serial.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kiemtrasodienthoai'
;------------------------------------------------------------
;	include/gsm_serial.c:61: __bit kiemtrasodienthoai(){
;	-----------------------------------------
;	 function kiemtrasodienthoai
;	-----------------------------------------
_kiemtrasodienthoai:
;	include/gsm_serial.c:63: have_cusd = 0;
;	assignBit
	clr	_have_cusd
;	include/gsm_serial.c:64: gsm_serial_cmd = SDT;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0d
	movx	@dptr,a
;	include/gsm_serial.c:65: switch(nha_mang){
	mov	dptr,#_nha_mang
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x50,00124$
	sjmp	00102$
00124$:
	cjne	r7,#0x66,00125$
	sjmp	00103$
00125$:
	cjne	r7,#0x6e,00126$
	sjmp	00104$
00126$:
	cjne	r7,#0x74,00105$
;	include/gsm_serial.c:67: return gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA SDT   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_14
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_14 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x1e
	mov	dptr,#___str_12
	mov	b,#0x80
;	include/gsm_serial.c:68: case VINAPHONE:
	ljmp	_gsm_sendandcheck
00102$:
;	include/gsm_serial.c:69: return gsm_sendandcheck("AT+CUSD=1,\"*110#\",\r",3,30,"  KIEM TRA SDT   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_14
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_14 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x1e
	mov	dptr,#___str_15
	mov	b,#0x80
;	include/gsm_serial.c:70: case MOBIFONE:
	ljmp	_gsm_sendandcheck
00103$:
;	include/gsm_serial.c:71: return gsm_sendandcheck("AT+CUSD=1,\"*0#\",\r",3,30,"  KIEM TRA SDT   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_14
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_14 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x1e
	mov	dptr,#___str_16
	mov	b,#0x80
;	include/gsm_serial.c:72: case VIETNAM:
	ljmp	_gsm_sendandcheck
00104$:
;	include/gsm_serial.c:73: return gsm_sendandcheck("AT+CUSD=1,\"*101#\",\r",3,30,"  KIEM TRA SDT   ");
	mov	_gsm_sendandcheck_PARM_4,#___str_14
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_14 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x03
	mov	_gsm_sendandcheck_PARM_3,#0x1e
	mov	dptr,#___str_12
	mov	b,#0x80
;	include/gsm_serial.c:74: }
	ljmp	_gsm_sendandcheck
00105$:
;	include/gsm_serial.c:77: return 0;
	clr	c
;	include/gsm_serial.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kiemtratinhieu'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	include/gsm_serial.c:80: void kiemtratinhieu(){
;	-----------------------------------------
;	 function kiemtratinhieu
;	-----------------------------------------
_kiemtratinhieu:
;	include/gsm_serial.c:81: gsm_serial_cmd = CSQ;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0e
	movx	@dptr,a
;	include/gsm_serial.c:82: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:83: sms_index  = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:84: if(gsm_sendandcheck("AT+CSQ\r",15,1," SONG ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_18
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_18 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00106$
;	include/gsm_serial.c:86: signal = 0;
	mov	dptr,#_signal
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:87: while(lenh_sms[i]!=',')signal = lenh_sms[i++]-48 + signal*10;    
	mov	r7,#0x00
00101$:
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x2c,00122$
	ret
00122$:
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	inc	r7
	movx	a,@dptr
	add	a,#0xd0
	mov	r6,a
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x0a
	mul	ab
	add	a,r6
	movx	@dptr,a
	sjmp	00101$
00106$:
;	include/gsm_serial.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_thong_so_rut_gon'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;dien_ap                   Allocated to registers r6 
;------------------------------------------------------------
;	include/gsm_serial.c:92: void send_thong_so_rut_gon(__bit chinh){
;	-----------------------------------------
;	 function send_thong_so_rut_gon
;	-----------------------------------------
_send_thong_so_rut_gon:
;	include/gsm_serial.c:94: u8 dien_ap = dien_ap_nguon*28/256;
	mov	r0,#_dien_ap_nguon
	mov	__mulint_PARM_2,@r0
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x001c
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r6,dpl
;	include/gsm_serial.c:95: send_gsm_byte(atmel_phat?'8':'S');
	jnb	_atmel_phat,00115$
	mov	r5,#0x38
	mov	r7,#0x00
	sjmp	00116$
00115$:
	mov	r5,#0x53
	mov	r7,#0x00
00116$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:96: send_gsm_byte((may_dc?'D':'S'));
	jnb	_may_dc,00117$
	mov	r5,#0x44
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	r5,#0x53
	mov	r7,#0x00
00118$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:97: do{
	mov	r7,#0x00
00103$:
;	include/gsm_serial.c:98: if(!thoi_gian_doi_doc_cam[i])send_gsm_byte('E');
	mov	a,r7
	add	a,#_thoi_gian_doi_doc_cam
	mov	r4,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jnz	00102$
	mov	dpl,#0x45
	push	ar7
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
	pop	ar7
00102$:
;	include/gsm_serial.c:99: send_gsm_byte(gio[i]/10+'0');
	mov	a,r7
	add	a,#_gio
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar1
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar1
;	include/gsm_serial.c:100: send_gsm_byte(gio[i]%10+'0');
	mov	ar5,@r1
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:101: send_gsm_byte(phut[i]/10+'0');
	mov	a,r7
	add	a,#_phut
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar1
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar1
;	include/gsm_serial.c:102: send_gsm_byte(phut[i]%10+'0');
	mov	ar5,@r1
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:103: }while(++i!=so_motor);
	inc	r7
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	cjne	a,ar5,00191$
	sjmp	00192$
00191$:
	ljmp	00103$
00192$:
;	include/gsm_serial.c:104: if(chinh){
	jnb	_send_thong_so_rut_gon_PARM_1,00107$
;	include/gsm_serial.c:105: send_gsm_byte((GPS_time?(eep_gpson?'G':'D'):'d'));
	jnb	_GPS_time,00119$
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00121$
	mov	r5,#0x47
	mov	r7,#0x00
	sjmp	00120$
00121$:
	mov	r5,#0x44
	mov	r7,#0x00
	sjmp	00120$
00119$:
	mov	r5,#0x64
	mov	r7,#0x00
00120$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
00107$:
;	include/gsm_serial.c:107: send_gsm_byte(hour/10+'0');
	mov	r5,_hour
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:108: send_gsm_byte(hour%10+'0');
	mov	r5,_hour
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:109: send_gsm_byte(minute/10+'0');
	mov	r5,_minute
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:110: send_gsm_byte(minute%10+'0');
	mov	r5,_minute
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:111: send_gsm_byte(date+'0');
	mov	dptr,#_date
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:112: send_gsm_byte(' ');
	mov	dpl,#0x20
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:113: send_gsm_byte(motor_dung?'0':'1');
	jnb	_motor_dung,00123$
	mov	r5,#0x30
	mov	r7,#0x00
	sjmp	00124$
00123$:
	mov	r5,#0x31
	mov	r7,#0x00
00124$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:114: send_gsm_byte(xung_giay_check?'1':'0');
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	jz	00125$
	mov	r5,#0x31
	mov	r7,#0x00
	sjmp	00126$
00125$:
	mov	r5,#0x30
	mov	r7,#0x00
00126$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:115: send_gsm_byte(DenRelay?'1':'0');
	jnb	_P21,00127$
	mov	r5,#0x31
	mov	r7,#0x00
	sjmp	00128$
00127$:
	mov	r5,#0x30
	mov	r7,#0x00
00128$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:116: if((eep_mp3%4) || chinh){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jnz	00108$
	jnb	_send_thong_so_rut_gon_PARM_1,00109$
00108$:
;	include/gsm_serial.c:117: send_gsm_byte(eep_mp3+(mp3_playing?'0':47));
	jnb	_P12,00129$
	mov	r5,#0x30
	mov	r7,#0x00
	sjmp	00130$
00129$:
	mov	r5,#0x2f
	mov	r7,#0x00
00130$:
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	add	a,r5
	mov	dpl,a
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
00109$:
;	include/gsm_serial.c:119: send_gsm_byte(' ');
	mov	dpl,#0x20
	push	ar6
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:120: send_gsm_byte(dien_ap/10+'0');
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:121: send_gsm_byte(dien_ap%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:122: if(!chinh) return;
	jb	_send_thong_so_rut_gon_PARM_1,00112$
	ret
00112$:
;	include/gsm_serial.c:124: send_gsm_byte(signal/10+'0');
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:125: send_gsm_byte(signal%10+'0');
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
;	include/gsm_serial.c:126: }
	ljmp	_send_gsm_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'send_gio_kim'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	include/gsm_serial.c:128: void send_gio_kim(){
;	-----------------------------------------
;	 function send_gio_kim
;	-----------------------------------------
_send_gio_kim:
;	include/gsm_serial.c:130: send_gsm_cmd(atmel_phat?"\r89C55":"\rSTC15");
	jnb	_atmel_phat,00108$
	mov	r6,#___str_19
	mov	r7,#(___str_19 >> 8)
	sjmp	00109$
00108$:
	mov	r6,#___str_20
	mov	r7,#(___str_20 >> 8)
00109$:
	mov	r5,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:131: do{
	mov	r7,#0x00
00103$:
;	include/gsm_serial.c:132: send_gsm_cmd(may_dc?" DC":" ST");
	jnb	_may_dc,00110$
	mov	r5,#___str_21
	mov	r6,#(___str_21 >> 8)
	sjmp	00111$
00110$:
	mov	r5,#___str_22
	mov	r6,#(___str_22 >> 8)
00111$:
	mov	r4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	push	ar7
	lcall	_send_gsm_cmd
	pop	ar7
;	include/gsm_serial.c:133: send_gsm_byte(i+'1');
	mov	ar6,r7
	mov	a,#0x31
	add	a,r6
	mov	dpl,a
	push	ar7
	lcall	_send_gsm_byte
;	include/gsm_serial.c:134: send_gsm_byte('=');
	mov	dpl,#0x3d
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:135: if(!thoi_gian_doi_doc_cam[i])send_gsm_byte('E');
	mov	a,r7
	add	a,#_thoi_gian_doi_doc_cam
	mov	r5,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jnz	00102$
	mov	dpl,#0x45
	push	ar7
	lcall	_send_gsm_byte
	pop	ar7
00102$:
;	include/gsm_serial.c:136: send_gsm_byte(gio[i]/10+'0');
	mov	a,r7
	add	a,#_gio
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	push	ar1
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar1
;	include/gsm_serial.c:137: send_gsm_byte(gio[i]%10+'0');
	mov	ar6,@r1
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:138: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:139: send_gsm_byte(phut[i]/10+'0');
	mov	a,r7
	add	a,#_phut
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	push	ar1
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar1
;	include/gsm_serial.c:140: send_gsm_byte(phut[i]%10+'0');
	mov	ar6,@r1
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:141: }while(++i!=so_motor);
	inc	r7
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00132$
	ret
00132$:
	ljmp	00103$
;	include/gsm_serial.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_gio_thuc'
;------------------------------------------------------------
;	include/gsm_serial.c:144: void send_gio_thuc(__bit chinh){
;	-----------------------------------------
;	 function send_gio_thuc
;	-----------------------------------------
_send_gio_thuc:
;	include/gsm_serial.c:145: send_gsm_cmd(" T=");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:146: send_gsm_byte(hour/10+'0');
	mov	r6,_hour
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:147: send_gsm_byte(hour%10+'0');
	mov	r6,_hour
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
	lcall	_send_gsm_byte
;	include/gsm_serial.c:148: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:149: send_gsm_byte(minute/10+'0');
	mov	r6,_minute
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:150: send_gsm_byte(minute%10+'0');
	mov	r6,_minute
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
	lcall	_send_gsm_byte
;	include/gsm_serial.c:151: if(date == 1) send_gsm_cmd(" CN,");
	mov	dptr,#_date
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_send_gsm_cmd
	sjmp	00103$
00102$:
;	include/gsm_serial.c:153: send_gsm_cmd(" T");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:154: send_gsm_byte(date+'0');
	mov	dptr,#_date
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:155: send_gsm_byte(',');
	mov	dpl,#0x2c
	lcall	_send_gsm_byte
00103$:
;	include/gsm_serial.c:157: send_gsm_byte(day/10+'0');
	mov	dptr,#_day
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:158: send_gsm_byte(day%10+'0');
	mov	dptr,#_day
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:159: send_gsm_byte('/');
	mov	dpl,#0x2f
	lcall	_send_gsm_byte
;	include/gsm_serial.c:160: send_gsm_byte(month/10+'0');
	mov	dptr,#_month
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:161: send_gsm_byte(month%10+'0');
	mov	dptr,#_month
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:162: send_gsm_byte('/');
	mov	dpl,#0x2f
	lcall	_send_gsm_byte
;	include/gsm_serial.c:163: send_gsm_byte(year/10+'0');
	mov	dptr,#_year
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:164: send_gsm_byte(year%10+'0');
	mov	dptr,#_year
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:166: if(chinh){
	jnb	_send_gio_thuc_PARM_1,00106$
;	include/gsm_serial.c:167: send_gsm_cmd(" GPS=");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:168: send_gsm_byte((GPS_time?'1':'0')+eep_gpson);
	jnb	_GPS_time,00108$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00109$
00108$:
	mov	r6,#0x30
	mov	r7,#0x00
00109$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	add	a,r6
	mov	dpl,a
;	include/gsm_serial.c:170: }
	ljmp	_send_gsm_byte
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_thong_so'
;------------------------------------------------------------
;dien_ap                   Allocated to registers r6 
;------------------------------------------------------------
;	include/gsm_serial.c:172: void send_thong_so(__bit chinh){
;	-----------------------------------------
;	 function send_thong_so
;	-----------------------------------------
_send_thong_so:
;	include/gsm_serial.c:173: u8 dien_ap = dien_ap_nguon*28/256;
	mov	r0,#_dien_ap_nguon
	mov	__mulint_PARM_2,@r0
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x001c
	lcall	__mulint
	mov	__divsint_PARM_2,#0x00
	mov	(__divsint_PARM_2 + 1),#0x01
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
;	include/gsm_serial.c:174: if(chinh){
	jb	_send_thong_so_PARM_1,00152$
	ljmp	00102$
00152$:
;	include/gsm_serial.c:175: send_gsm_cmd(" DH=");
	mov	dptr,#___str_27
	mov	b,#0x80
	push	ar6
	lcall	_send_gsm_cmd
	pop	ar6
;	include/gsm_serial.c:176: send_gsm_byte(motor_dung?'0':'1');
	jnb	_motor_dung,00112$
	mov	r5,#0x30
	mov	r7,#0x00
	sjmp	00113$
00112$:
	mov	r5,#0x31
	mov	r7,#0x00
00113$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
;	include/gsm_serial.c:177: send_gsm_cmd(" BC=");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:178: send_gsm_byte(eep_baocao+'0');
	mov	dptr,#_eep_baocao
	clr	a
	movc	a,@a+dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:179: send_gsm_cmd(" XG=");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
;	include/gsm_serial.c:180: send_gsm_byte(xung_giay_check?'1':'0');
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	jz	00114$
	mov	r5,#0x31
	mov	r7,#0x00
	sjmp	00115$
00114$:
	mov	r5,#0x30
	mov	r7,#0x00
00115$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
;	include/gsm_serial.c:181: send_gsm_cmd(" RS=");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:182: send_gsm_byte(ngay_reset_con_lai+'0');
	mov	dptr,#_ngay_reset_con_lai
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:183: send_gsm_byte('/');
	mov	dpl,#0x2f
	lcall	_send_gsm_byte
;	include/gsm_serial.c:184: send_gsm_byte(eep_ngayreset+'0');
	mov	dptr,#_eep_ngayreset
	clr	a
	movc	a,@a+dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:185: send_gsm_cmd(" TR=");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:186: send_gsm_byte(eep_gioreset/10+'0');
	mov	dptr,#_eep_gioreset
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r7
	mov	dph,r5
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:187: send_gsm_byte(eep_gioreset%10+'0');
	mov	dptr,#_eep_gioreset
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r7
	mov	dph,r5
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:188: send_gsm_cmd(":06");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
00102$:
;	include/gsm_serial.c:190: send_gsm_cmd(" DEN=");
	mov	dptr,#___str_33
	mov	b,#0x80
	push	ar6
	lcall	_send_gsm_cmd
	pop	ar6
;	include/gsm_serial.c:191: send_gsm_byte(DenRelay?'1':'0');
	jnb	_P21,00116$
	mov	r5,#0x31
	mov	r7,#0x00
	sjmp	00117$
00116$:
	mov	r5,#0x30
	mov	r7,#0x00
00117$:
	mov	dpl,r5
	push	ar6
	lcall	_send_gsm_byte
;	include/gsm_serial.c:192: send_gsm_cmd(" VOL=");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
;	include/gsm_serial.c:193: send_gsm_byte(dien_ap/10+'0');
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:194: send_gsm_byte(dien_ap%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:195: if((eep_mp3%4) || chinh){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jnz	00103$
	jnb	_send_thong_so_PARM_1,00104$
00103$:
;	include/gsm_serial.c:196: send_gsm_cmd(" MP3=");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:197: send_gsm_byte(eep_mp3+(mp3_playing?'0':47));
	jnb	_P12,00118$
	mov	r6,#0x30
	mov	r7,#0x00
	sjmp	00119$
00118$:
	mov	r6,#0x2f
	mov	r7,#0x00
00119$:
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
00104$:
;	include/gsm_serial.c:199: if(!chinh) return;
	jb	_send_thong_so_PARM_1,00107$
	ret
00107$:
;	include/gsm_serial.c:201: send_gsm_cmd(" SIG=");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:202: send_gsm_byte(signal/10+'0');
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:203: send_gsm_byte(signal%10+'0');
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:204: send_gsm_cmd(" DT=");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:205: send_gsm_byte(eep_phonephu[11]+'0');
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:206: if(eep_phonephu[11]==2) return;
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x02,00109$
	ret
00109$:
;	include/gsm_serial.c:207: send_gsm_byte(',');
	mov	dpl,#0x2c
	lcall	_send_gsm_byte
;	include/gsm_serial.c:208: send_gsm_cmd(eep_phonephu);
	mov	dptr,#_eep_phonephu
	mov	b,#0x80
;	include/gsm_serial.c:210: }
	ljmp	_send_gsm_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'baocaosms'
;------------------------------------------------------------
;noidung                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	include/gsm_serial.c:214: void baocaosms(__bit chinh, u8  *noidung){
;	-----------------------------------------
;	 function baocaosms
;	-----------------------------------------
_baocaosms:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	include/gsm_serial.c:215: if(!sms_on) return;
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
	ret
00102$:
;	include/gsm_serial.c:216: gsm_sendandcheck("AT\r", 15, 1,"BAT DAU BAO CAO ");
	mov	_gsm_sendandcheck_PARM_4,#___str_39
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_39 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_gsm_sendandcheck
;	include/gsm_serial.c:217: kiemtratinhieu();    
	lcall	_kiemtratinhieu
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:218: if(*(noidung+1)!='*') kiemtrataikhoan();
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2a,00159$
	sjmp	00104$
00159$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_kiemtrataikhoan
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00105$
00104$:
;	include/gsm_serial.c:219: else lenh_sms[0]=0;
	mov	dptr,#_lenh_sms
	clr	a
	movx	@dptr,a
00105$:
;	include/gsm_serial.c:220: if(!send_sms(chinh)) return;
;	assignBit
	mov	c,_baocaosms_PARM_1
	mov	_send_sms_PARM_1,c
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_send_sms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jc	00107$
	ret
00107$:
;	include/gsm_serial.c:222: if(sms_on>2){
	mov	dptr,#_sms_on
	movx	a,@dptr
	add	a,#0xff - 0x02
	jnc	00115$
;	include/gsm_serial.c:223: send_thong_so_rut_gon(chinh);
;	assignBit
	mov	c,_baocaosms_PARM_1
	mov	_send_thong_so_rut_gon_PARM_1,c
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_thong_so_rut_gon
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00116$
00115$:
;	include/gsm_serial.c:225: send_gsm_cmd(ver);
	mov	dptr,#_ver
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:227: send_gio_kim();
	lcall	_send_gio_kim
;	include/gsm_serial.c:228: send_gio_thuc(chinh);
;	assignBit
	mov	c,_baocaosms_PARM_1
	mov	_send_gio_thuc_PARM_1,c
	lcall	_send_gio_thuc
;	include/gsm_serial.c:229: send_thong_so(chinh);
;	assignBit
	mov	c,_baocaosms_PARM_1
	mov	_send_thong_so_PARM_1,c
	lcall	_send_thong_so
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:232: if(*(noidung+1)!='*' && lenh_sms[0]){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x2a,00162$
	sjmp	00112$
00162$:
	mov	dptr,#_lenh_sms
	movx	a,@dptr
	jz	00112$
;	include/gsm_serial.c:233: send_gsm_cmd("\rTK Chinh=");
	mov	dptr,#___str_40
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:234: send_gsm_cmd(lenh_sms);
	mov	dptr,#_lenh_sms
	mov	b,#0x00
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:235: if(chinh && !lenh_sms[4]) send_gsm_cmd("\rTai khoan con duoi 10000");
	jnb	_baocaosms_PARM_1,00109$
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	jnz	00109$
	mov	dptr,#___str_41
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	include/gsm_serial.c:236: lenh_sms[1] = lenh_sms[2] = lenh_sms[3] = lenh_sms[4] = 0;
	mov	dptr,#(_lenh_sms + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0001)
	movx	@dptr,a
00112$:
;	include/gsm_serial.c:238: send_gsm_cmd(noidung);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
00116$:
;	include/gsm_serial.c:241: if(*(noidung+1)=='*') send_gsm_cmd("\032");
	inc	r5
	cjne	r5,#0x00,00166$
	inc	r6
00166$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2a,00118$
	mov	dptr,#___str_7
	mov	b,#0x80
	ljmp	_send_gsm_cmd
00118$:
;	include/gsm_serial.c:242: else gsm_sendandcheck("\032",50,1,"DANG GUI BAO CAO");
	mov	_gsm_sendandcheck_PARM_4,#___str_42
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_42 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:245: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'send_thong_so_den'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	include/gsm_serial.c:247: void send_thong_so_den(){
;	-----------------------------------------
;	 function send_thong_so_den
;	-----------------------------------------
_send_thong_so_den:
;	include/gsm_serial.c:249: send_gsm_cmd(" DEN=");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:250: send_gsm_byte(DenRelay?'1':'0');
	jnb	_P21,00109$
	mov	r6,#0x31
	mov	r7,#0x00
	sjmp	00110$
00109$:
	mov	r6,#0x30
	mov	r7,#0x00
00110$:
	mov	dpl,r6
	lcall	_send_gsm_byte
;	include/gsm_serial.c:251: send_gsm_cmd("\rMODEN=");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:252: send_gsm_byte(eep_tatmoden[0]+'0');
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:253: if(!eep_tatmoden[0]){send_gsm_cmd("\rKhong co gio mo den"); return;}
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	jnz	00102$
	mov	dptr,#___str_44
	mov	b,#0x80
	ljmp	_send_gsm_cmd
00102$:
;	include/gsm_serial.c:254: send_gsm_cmd("\rGio Mo Den:");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:255: i = eep_tatmoden[0];
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	include/gsm_serial.c:256: send_gsm_byte('\r');
	mov	dpl,#0x0d
	push	ar7
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:257: send_gsm_byte(eep_tatmoden[i]/60 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:258: send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:259: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:260: send_gsm_byte(eep_tatmoden[i]%6 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:261: send_gsm_cmd("0 - ");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:262: send_gsm_byte(eep_tatmoden[1]/60 +'0');
	mov	dptr,#(_eep_tatmoden + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:263: send_gsm_byte(eep_tatmoden[1]/6%10 +'0');
	mov	dptr,#(_eep_tatmoden + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:264: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:265: send_gsm_byte(eep_tatmoden[1]%6 +'0');
	mov	dptr,#(_eep_tatmoden + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:266: send_gsm_byte('0');
	mov	dpl,#0x30
	lcall	_send_gsm_byte
;	include/gsm_serial.c:267: for(i=2;i<eep_tatmoden[0];i+=2){
	mov	r7,#0x02
00105$:
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00133$
	ret
00133$:
;	include/gsm_serial.c:268: send_gsm_byte('\r');
	mov	dpl,#0x0d
	push	ar7
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:269: send_gsm_byte(eep_tatmoden[i]/60 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	__divsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:270: send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:271: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:272: send_gsm_byte(eep_tatmoden[i]%6 +'0');
	mov	a,r7
	mov	dptr,#_eep_tatmoden
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	lcall	__modsint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:273: send_gsm_cmd("0 - ");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar7
;	include/gsm_serial.c:274: send_gsm_byte(eep_tatmoden[i+1]/60 +'0');
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_eep_tatmoden
	mov	dpl,a
	mov	a,r4
	addc	a,#(_eep_tatmoden >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	__divsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r2
	mov	dpl,r3
	mov	dph,r2
	push	ar6
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	lcall	_send_gsm_byte
	pop	ar4
	pop	ar5
;	include/gsm_serial.c:275: send_gsm_byte(eep_tatmoden[i+1]/6%10 +'0');
	mov	a,r5
	add	a,#_eep_tatmoden
	mov	dpl,a
	mov	a,r4
	addc	a,#(_eep_tatmoden >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	__divsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r2
	mov	dpl,r3
	mov	dph,r2
	push	ar5
	push	ar4
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:276: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar4
	pop	ar5
;	include/gsm_serial.c:277: send_gsm_byte(eep_tatmoden[i+1]%6 +'0');
	mov	a,r5
	add	a,#_eep_tatmoden
	mov	dpl,a
	mov	a,r4
	addc	a,#(_eep_tatmoden >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x06
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:278: send_gsm_byte('0');
	mov	dpl,#0x30
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:267: for(i=2;i<eep_tatmoden[0];i+=2){
	mov	a,#0x02
	add	a,r6
	mov	r7,a
;	include/gsm_serial.c:280: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'baocaoden'
;------------------------------------------------------------
;noidung                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	include/gsm_serial.c:282: void baocaoden(__bit chinh, u8 *noidung){
;	-----------------------------------------
;	 function baocaoden
;	-----------------------------------------
_baocaoden:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	include/gsm_serial.c:283: if(!sms_on) return;
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
	ret
00102$:
;	include/gsm_serial.c:284: gsm_sendandcheck("AT\r", 15, 1,"BAT DAU BAO CAO ");
	mov	_gsm_sendandcheck_PARM_4,#___str_39
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_39 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_gsm_sendandcheck
;	include/gsm_serial.c:285: if(!send_sms(chinh)) return;
;	assignBit
	mov	c,_baocaoden_PARM_1
	mov	_send_sms_PARM_1,c
	lcall	_send_sms
	pop	ar5
	pop	ar6
	pop	ar7
	jc	00104$
	ret
00104$:
;	include/gsm_serial.c:286: send_gio_thuc(chinh);
;	assignBit
	mov	c,_baocaoden_PARM_1
	mov	_send_gio_thuc_PARM_1,c
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gio_thuc
;	include/gsm_serial.c:287: send_thong_so(chinh);
;	assignBit
	mov	c,_baocaoden_PARM_1
	mov	_send_thong_so_PARM_1,c
	lcall	_send_thong_so
;	include/gsm_serial.c:288: send_thong_so_den();
	lcall	_send_thong_so_den
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:289: send_gsm_cmd(noidung);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:290: gsm_sendandcheck("\032",50,1,"GUI BAO CAO DEN ");
	mov	_gsm_sendandcheck_PARM_4,#___str_47
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_47 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:291: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'gui_huong_dan'
;------------------------------------------------------------
;	include/gsm_serial.c:293: void gui_huong_dan(){
;	-----------------------------------------
;	 function gui_huong_dan
;	-----------------------------------------
_gui_huong_dan:
;	include/gsm_serial.c:294: lenh_sms[0]=0;
	mov	dptr,#_lenh_sms
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:295: if(!send_sms(CHINH)) return;
;	assignBit
	setb	_send_sms_PARM_1
	lcall	_send_sms
	jc	00102$
	ret
00102$:
;	include/gsm_serial.c:296: send_gsm_cmd(huongdan);
	mov	dptr,#_huongdan
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:297: gsm_sendandcheck("\032",50,1," GUI HUONG DAN  ");
	mov	_gsm_sendandcheck_PARM_4,#___str_48
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_48 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:298: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapsim800'
;------------------------------------------------------------
;	include/gsm_serial.c:300: __bit gsm_thietlapsim800(){
;	-----------------------------------------
;	 function gsm_thietlapsim800
;	-----------------------------------------
_gsm_thietlapsim800:
;	include/gsm_serial.c:301: if(gsm_sendandcheck("AT\r", 15, 1,"THIET LAP SIM800")){      
	mov	_gsm_sendandcheck_PARM_4,#___str_49
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_49 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00104$
;	include/gsm_serial.c:302: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:303: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:304: gsm_serial_cmd = CSPN;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0a
	movx	@dptr,a
;	include/gsm_serial.c:305: if(gsm_sendandcheck("AT+CSPN?\r",15,1," TEN TONG DAI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_51
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_51 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00102$
;	include/gsm_serial.c:306: nha_mang = lenh_sms[4];
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nha_mang
	movx	@dptr,a
00102$:
;	include/gsm_serial.c:308: return 1;
	setb	c
	ret
00104$:
;	include/gsm_serial.c:310: return 0;
	clr	c
;	include/gsm_serial.c:311: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapngaygiothuc'
;------------------------------------------------------------
;check                     Allocated to registers 
;------------------------------------------------------------
;	include/gsm_serial.c:313: void gsm_thietlapngaygiothuc(){
;	-----------------------------------------
;	 function gsm_thietlapngaygiothuc
;	-----------------------------------------
_gsm_thietlapngaygiothuc:
;	include/gsm_serial.c:314: __bit GPS_time_temp = 0;
;	assignBit
	clr	_gsm_thietlapngaygiothuc_GPS_time_temp_65536_124
;	include/gsm_serial.c:315: if(sim_test_sec==61) return;
	mov	dptr,#_sim_test_sec
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3d,00102$
	ret
00102$:
;	include/gsm_serial.c:316: if(gsm_sendandcheck("AT+CLTS=1\r",15,1,"BAT CHE DO GPS ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_53
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_53 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00141$
	ljmp	00110$
00141$:
;	include/gsm_serial.c:317: if(gsm_sendandcheck("AT+COPS=2\r",15,1," KHOI DONG GPS ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_55
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_55 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00142$
	ljmp	00110$
00142$:
;	include/gsm_serial.c:318: gsm_serial_cmd = COPS;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0c
	movx	@dptr,a
;	include/gsm_serial.c:319: if(gsm_sendandcheck("AT+COPS=0\r",10,60,"  KET NOI GPS  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_57
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_57 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0a
	mov	_gsm_sendandcheck_PARM_3,#0x3c
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00143$
	ljmp	00110$
00143$:
;	include/gsm_serial.c:320: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:321: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:322: gsm_serial_cmd = CLK;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x02
	movx	@dptr,a
;	include/gsm_serial.c:323: if(gsm_sendandcheck("AT+CCLK?\r",15,1," LAY TIME GPS  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_59
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_59 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00144$
	ljmp	00110$
00144$:
;	include/gsm_serial.c:324: year   = (lenh_sms[3] -48)*10 + lenh_sms[4]  - 48;
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	dptr,#_year
	movx	@dptr,a
;	include/gsm_serial.c:325: month  = (lenh_sms[6] -48)*10 + lenh_sms[7]  - 48;
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	dptr,#_month
	movx	@dptr,a
;	include/gsm_serial.c:326: day    = (lenh_sms[9] -48)*10 + lenh_sms[10] - 48;
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	dptr,#_day
	movx	@dptr,a
;	include/gsm_serial.c:327: hour   = (lenh_sms[12]-48)*10 + lenh_sms[13] - 48;
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x000d)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	_hour,a
;	include/gsm_serial.c:328: minute = (lenh_sms[15]-48)*10 + lenh_sms[16] - 48;
	mov	dptr,#(_lenh_sms + 0x000f)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0010)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	_minute,a
;	include/gsm_serial.c:329: second = (lenh_sms[18]-48)*10 + lenh_sms[19] - 48;
	mov	dptr,#(_lenh_sms + 0x0012)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0013)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	_second,a
;	include/gsm_serial.c:330: rtc_settime(hour,minute,second);
	mov	_rtc_settime_PARM_2,_minute
	mov	_rtc_settime_PARM_3,_second
	mov	dpl,_hour
	lcall	_rtc_settime
;	include/gsm_serial.c:331: u16 check = (23*month/9 + day + (month>2?!(year%4):2) + year + (year+3)/4 + 1) ;
	mov	dptr,#_month
	movx	a,@dptr
	mov	r7,a
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0017
	push	ar7
	lcall	__mulint
	mov	__divsint_PARM_2,#0x09
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	dptr,#_day
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	a,r7
	add	a,#0xff - 0x02
	jnc	00113$
	mov	dptr,#_year
	movx	a,@dptr
	anl	a,#0x03
	mov	r7,#0x00
	orl	a,r7
	cjne	a,#0x01,00146$
00146$:
	mov  _gsm_thietlapngaygiothuc_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r4,a
	mov	r7,#0x00
	sjmp	00114$
00113$:
	mov	r4,#0x02
	mov	r7,#0x00
00114$:
	mov	a,r4
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	dptr,#_year
	movx	a,@dptr
	mov	r7,a
	mov	r3,a
	mov	r4,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
;	include/gsm_serial.c:332: date = check%7+1;
	mov	__moduint_PARM_2,#0x07
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r5,dpl
	pop	ar7
	inc	r5
	mov	dptr,#_date
	mov	a,r5
	movx	@dptr,a
;	include/gsm_serial.c:333: rtc_setdate(date,day,month,year);
	mov	dptr,#_day
	movx	a,@dptr
	mov	_rtc_setdate_PARM_2,a
	mov	dptr,#_month
	movx	a,@dptr
	mov	_rtc_setdate_PARM_3,a
	mov	_rtc_setdate_PARM_4,r7
	mov	dpl,r5
	lcall	_rtc_setdate
;	include/gsm_serial.c:334: GPS_time_temp = 1;
;	assignBit
	setb	_gsm_thietlapngaygiothuc_GPS_time_temp_65536_124
00110$:
;	include/gsm_serial.c:339: GPS_time = GPS_time_temp;
;	assignBit
	mov	c,_gsm_thietlapngaygiothuc_GPS_time_temp_65536_124
	mov	_GPS_time,c
;	include/gsm_serial.c:340: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:341: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapgoidien'
;------------------------------------------------------------
;	include/gsm_serial.c:343: __bit gsm_thietlapgoidien(){
;	-----------------------------------------
;	 function gsm_thietlapgoidien
;	-----------------------------------------
_gsm_thietlapgoidien:
;	include/gsm_serial.c:345: if(gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_61
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_61 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00104$
;	include/gsm_serial.c:346: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:347: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:348: gsm_serial_cmd = CALR;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0b
	movx	@dptr,a
;	include/gsm_serial.c:349: if(gsm_sendandcheck("AT+CCALR?\r",15,1," THIET LAP GOI ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_63
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_63 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00104$
;	include/gsm_serial.c:350: return 1;
	setb	c
	ret
00104$:
;	include/gsm_serial.c:353: return 0;
	clr	c
;	include/gsm_serial.c:355: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapnhantin'
;------------------------------------------------------------
;	include/gsm_serial.c:357: __bit gsm_thietlapnhantin(){
;	-----------------------------------------
;	 function gsm_thietlapnhantin
;	-----------------------------------------
_gsm_thietlapnhantin:
;	include/gsm_serial.c:358: if(!gsm_pw || !sms_on) return 0;
	jnb	_P20,00101$
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
00101$:
	clr	c
	ret
00102$:
;	include/gsm_serial.c:359: if(gsm_sendandcheck("AT+CMGF=1\r", 15, 1,"  SENDING CMGF  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_65
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_65 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:360: if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_67
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_67 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:361: if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  THIET LAP TN  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_69
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_69 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:362: kiemtratinhieu();
	lcall	_kiemtratinhieu
;	include/gsm_serial.c:363: return 1;
	setb	c
	ret
00109$:
;	include/gsm_serial.c:367: return 0;
	clr	c
;	include/gsm_serial.c:368: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapnhantin1'
;------------------------------------------------------------
;	include/gsm_serial.c:370: __bit gsm_thietlapnhantin1(){
;	-----------------------------------------
;	 function gsm_thietlapnhantin1
;	-----------------------------------------
_gsm_thietlapnhantin1:
;	include/gsm_serial.c:371: if(!gsm_pw || !sms_on) return 0;
	jnb	_P20,00101$
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
00101$:
	clr	c
	ret
00102$:
;	include/gsm_serial.c:372: if(!gsm_sendandcheck("AT\r", 15, 1,"THIET LAP TNHAN ")) return 0;
	mov	_gsm_sendandcheck_PARM_4,#___str_70
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_70 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00105$
	ret
00105$:
;	include/gsm_serial.c:373: if(gsm_sendandcheck("AT+CMGF=1\r", 15, 2,"  SENDING CMGF  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_65
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_65 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x02
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:374: if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_67
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_67 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:375: if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 20, 3,"  SENDING CMGDA  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_71
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_71 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x14
	mov	_gsm_sendandcheck_PARM_3,#0x03
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:376: return 1;
	setb	c
	ret
00111$:
;	include/gsm_serial.c:380: return 0;
	clr	c
;	include/gsm_serial.c:381: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_laygio_gps'
;------------------------------------------------------------
;phay                      Allocated to registers r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	include/gsm_serial.c:384: void gsm_laygio_gps(){
;	-----------------------------------------
;	 function gsm_laygio_gps
;	-----------------------------------------
_gsm_laygio_gps:
;	include/gsm_serial.c:385: __bit GPS_time_temp = 0;
;	assignBit
	clr	_gsm_laygio_gps_GPS_time_temp_65536_141
;	include/gsm_serial.c:386: if(sim_test_sec==61) return;
	mov	dptr,#_sim_test_sec
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3d,00102$
	ret
00102$:
;	include/gsm_serial.c:387: if(gsm_sendandcheck("AT\r", 15, 1,"LAY GIO VE TINH ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_72
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_72 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00220$
	ljmp	00132$
00220$:
;	include/gsm_serial.c:388: if(gsm_sendandcheck("AT+IPR=0\r", 15, 1,"  SENDING IPR   ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_74
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_74 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_73
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00221$
	ljmp	00132$
00221$:
;	include/gsm_serial.c:389: gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ");
	mov	_gsm_sendandcheck_PARM_4,#___str_61
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_61 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_gsm_sendandcheck
;	include/gsm_serial.c:390: if(eep_gpson){
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jnz	00222$
	ljmp	00132$
00222$:
;	include/gsm_serial.c:391: if(gsm_sendandcheck("AT+CLTS=1\r", 15, 1,"  SENDING CLTS  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_75
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_75 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00223$
	ljmp	00132$
00223$:
;	include/gsm_serial.c:392: if(gsm_sendandcheck("AT+CFUN=0\r", 15, 1,"  SENDING CFUN0  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_77
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_77 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_76
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00224$
	ljmp	00132$
00224$:
;	include/gsm_serial.c:393: gsm_serial_cmd = CFUN1;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x06
	movx	@dptr,a
;	include/gsm_serial.c:394: if(gsm_sendandcheck("AT+CFUN=1\r", 15, 2,"  SENDING CFUN1  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_79
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_79 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x02
	mov	dptr,#___str_78
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jc	00225$
	ljmp	00132$
00225$:
;	include/gsm_serial.c:395: if(have_time == CFUN){
	mov	dptr,#_have_time
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00226$
	sjmp	00227$
00226$:
	ljmp	00132$
00227$:
;	include/gsm_serial.c:397: while((date_str[i++]!=',' || ++phay<3) && i<11)WATCHDOG;
	mov	r7,#0x00
	mov	r6,#0x00
00105$:
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	inc	r6
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2c,00104$
	inc	r7
	cjne	r7,#0x03,00230$
00230$:
	jnc	00107$
00104$:
	cjne	r6,#0x0b,00232$
00232$:
	jnc	00107$
	orl	_WDT_CONTR,#0x10
	sjmp	00105$
00107$:
;	include/gsm_serial.c:398: if(phay>2){
	mov	a,r7
	add	a,#0xff - 0x02
	jc	00234$
	ljmp	00132$
00234$:
;	include/gsm_serial.c:399: if(date_str[i+1]==',') hour = (date_str[i++]-'0');
	mov	ar7,r6
	inc	r7
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r7
	add	a,#_date_str
	mov	dpl,a
	mov	a,r5
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x2c,00109$
	mov	a,r6
	inc	a
	mov	r7,a
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0xd0
	mov	_hour,a
	sjmp	00110$
00109$:
;	include/gsm_serial.c:400: else hour = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
	mov	a,r6
	inc	a
	mov	r5,a
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,r5
	inc	a
	mov	r7,a
	mov	a,r5
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0xd0
	add	a,r6
	mov	_hour,a
00110$:
;	include/gsm_serial.c:401: if(date_str[++i+1]==',') minute = (date_str[i++]-'0');
	inc	r7
	mov	ar6,r7
	inc	r6
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	mov	a,r5
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x2c,00112$
	mov	a,r7
	inc	a
	mov	r6,a
	mov	a,r7
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0xd0
	mov	_minute,a
	sjmp	00113$
00112$:
;	include/gsm_serial.c:402: else minute = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
	mov	a,r7
	inc	a
	mov	r5,a
	mov	a,r7
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	a,r5
	inc	a
	mov	r6,a
	mov	a,r5
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0xd0
	add	a,r7
	mov	_minute,a
00113$:
;	include/gsm_serial.c:403: if(date_str[++i+1]==',') second = (date_str[i++]-'0');
	mov	a,r6
	inc	a
	mov	r7,a
	mov	r6,a
	inc	r6
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	mov	a,r5
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x2c,00115$
	mov	a,r7
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	add	a,#0xd0
	mov	_second,a
	sjmp	00116$
00115$:
;	include/gsm_serial.c:404: else second = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
	mov	a,r7
	inc	a
	mov	r6,a
	mov	a,r7
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	a,r6
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	add	a,#0xd0
	add	a,r7
	mov	_second,a
00116$:
;	include/gsm_serial.c:405: hour = (hour+7>23) ? hour-17 : hour+7;
	mov	r6,_hour
	mov	r7,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,#0x17
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00135$
	mov	a,_hour
	add	a,#0xef
	mov	r7,a
	sjmp	00136$
00135$:
	mov	r6,_hour
	mov	a,#0x07
	add	a,r6
	mov	r7,a
00136$:
	mov	_hour,r7
;	include/gsm_serial.c:406: rtc_settime(hour,minute,second);
	mov	_rtc_settime_PARM_2,_minute
	mov	_rtc_settime_PARM_3,_second
	mov	dpl,_hour
	lcall	_rtc_settime
;	include/gsm_serial.c:407: GPS_time_temp = 1;
;	assignBit
	setb	_gsm_laygio_gps_GPS_time_temp_65536_141
00132$:
;	include/gsm_serial.c:416: GPS_time = GPS_time_temp;
;	assignBit
	mov	c,_gsm_laygio_gps_GPS_time_temp_65536_141
	mov	_GPS_time,c
;	include/gsm_serial.c:417: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:418: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_serial_interrupt'
;------------------------------------------------------------
;	include/gsm_serial.c:424: void gsm_serial_interrupt() __interrupt gsm_SERIAL_INT __using SERIAL_MEM{
;	-----------------------------------------
;	 function gsm_serial_interrupt
;	-----------------------------------------
_gsm_serial_interrupt:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x10
;	include/gsm_serial.c:425: if(gsm_RI){
	jb	_RI,00955$
	ljmp	00350$
00955$:
;	include/gsm_serial.c:426: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/gsm_serial.c:427: connect = connect_time_out;
	mov	dptr,#_connect_time_out
	movx	a,@dptr
	mov	dptr,#_connect
	movx	@dptr,a
;	include/gsm_serial.c:428: gsm_receive_buf[gsm_receive_pointer] = SBUF;
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	add	a,#_gsm_receive_buf
	mov	dpl,a
	clr	a
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	include/gsm_serial.c:430: if((gsm_receive_buf[gsm_receive_pointer]=='N' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r7,a
	add	a,#_gsm_receive_buf
	mov	dpl,a
	clr	a
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x4e,00956$
	sjmp	00957$
00956$:
	ljmp	00102$
00957$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x49,00958$
	sjmp	00959$
00958$:
	ljmp	00102$
00959$:
;	include/gsm_serial.c:431: gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x20,00960$
	sjmp	00961$
00960$:
	ljmp	00102$
00961$:
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x54,00102$
;	include/gsm_serial.c:432: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='O' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='N')){
	mov	a,#0x09
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x4f,00102$
	mov	a,#0x08
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x4e,00102$
;	include/gsm_serial.c:434: nosim = 1;
;	assignBit
	setb	_nosim
00102$:
;	include/gsm_serial.c:439: switch(gsm_serial_cmd){
	mov	dptr,#_gsm_serial_cmd
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x0e
	jnc	00968$
	ljmp	00345$
00968$:
	mov	a,r5
	add	a,#(00969$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(00970$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00969$:
	.db	00142$
	.db	00202$
	.db	00134$
	.db	00207$
	.db	00345$
	.db	00242$
	.db	00191$
	.db	00261$
	.db	00253$
	.db	00345$
	.db	00124$
	.db	00131$
	.db	00114$
	.db	00304$
	.db	00108$
00970$:
	.db	00142$>>8
	.db	00202$>>8
	.db	00134$>>8
	.db	00207$>>8
	.db	00345$>>8
	.db	00242$>>8
	.db	00191$>>8
	.db	00261$>>8
	.db	00253$>>8
	.db	00345$>>8
	.db	00124$>>8
	.db	00131$>>8
	.db	00114$>>8
	.db	00304$>>8
	.db	00108$>>8
;	include/gsm_serial.c:440: case CSQ:
00108$:
;	include/gsm_serial.c:441: lenh_sms[sms_index++] = SBUF;
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r4,a
	inc	a
	movx	@dptr,a
	mov	a,r4
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	include/gsm_serial.c:442: if(SBUF==' ' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':')sms_index = 0;
	mov	a,#0x20
	cjne	a,_SBUF,00110$
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x3a,00110$
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
00110$:
;	include/gsm_serial.c:443: if(SBUF==',')sms_index = gsm_serial_cmd = NORMAL;
	mov	a,#0x2c
	cjne	a,_SBUF,00975$
	sjmp	00976$
00975$:
	ljmp	00345$
00976$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
	mov	dptr,#_sms_index
	movx	@dptr,a
;	include/gsm_serial.c:444: break;
	ljmp	00345$
;	include/gsm_serial.c:445: case COPS:
00114$:
;	include/gsm_serial.c:446: if(SBUF=='T' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='S' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='D')
	mov	a,#0x54
	cjne	a,_SBUF,00120$
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x53,00120$
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x44,00120$
;	include/gsm_serial.c:447: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00120$:
;	include/gsm_serial.c:448: else if(SBUF=='R' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='R')
	mov	a,#0x52
	cjne	a,_SBUF,00983$
	sjmp	00984$
00983$:
	ljmp	00345$
00984$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4f,00985$
	sjmp	00986$
00985$:
	ljmp	00345$
00986$:
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x52,00987$
	sjmp	00988$
00987$:
	ljmp	00345$
00988$:
;	include/gsm_serial.c:449: connect = 0;
	mov	dptr,#_connect
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:450: break;
	ljmp	00345$
;	include/gsm_serial.c:451: case CSPN:
00124$:
;	include/gsm_serial.c:452: lenh_sms[sms_index++] = SBUF;
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r4,a
	inc	a
	movx	@dptr,a
	mov	a,r4
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	include/gsm_serial.c:453: if(SBUF=='"' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ')sms_index = 0;
	mov	a,#0x22
	cjne	a,_SBUF,00126$
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x20,00126$
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
00126$:
;	include/gsm_serial.c:454: if(SBUF==',' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
	mov	a,#0x2c
	cjne	a,_SBUF,00993$
	sjmp	00994$
00993$:
	ljmp	00345$
00994$:
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x22,00995$
	sjmp	00996$
00995$:
	ljmp	00345$
00996$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
	mov	dptr,#_sms_index
	movx	@dptr,a
;	include/gsm_serial.c:455: break;
	ljmp	00345$
;	include/gsm_serial.c:456: case CALR:
00131$:
;	include/gsm_serial.c:457: if(SBUF=='1')gui_lenh_thanh_cong = 1;
	mov	a,#0x31
	cjne	a,_SBUF,00997$
	sjmp	00998$
00997$:
	ljmp	00345$
00998$:
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:459: break;
	ljmp	00345$
;	include/gsm_serial.c:460: case CLK:
00134$:
;	include/gsm_serial.c:461: lenh_sms[sms_index++] = SBUF;
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r4,a
	inc	a
	movx	@dptr,a
	mov	a,r4
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	include/gsm_serial.c:462: if(SBUF=='K' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='L' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C')sms_index = 0;
	mov	a,#0x4b
	cjne	a,_SBUF,00136$
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4c,00136$
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x43,00136$
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
00136$:
;	include/gsm_serial.c:463: if(SBUF=='\r' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
	mov	a,#0x0d
	cjne	a,_SBUF,01005$
	sjmp	01006$
01005$:
	ljmp	00345$
01006$:
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x22,01007$
	sjmp	01008$
01007$:
	ljmp	00345$
01008$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
	mov	dptr,#_sms_index
	movx	@dptr,a
;	include/gsm_serial.c:464: break;
	ljmp	00345$
;	include/gsm_serial.c:465: case NORMAL:
00142$:
;	include/gsm_serial.c:466: if(SBUF=='>'){
	mov	a,#0x3e
	cjne	a,_SBUF,00189$
;	include/gsm_serial.c:467: send_gsm_cmd("\032");
	mov	dptr,#___str_7
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00189$:
;	include/gsm_serial.c:469: }else if((gsm_receive_buf[gsm_receive_pointer]=='G' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='N' &&
	cjne	r6,#0x47,01011$
	sjmp	01012$
01011$:
	ljmp	00183$
01012$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4e,01013$
	sjmp	01014$
01013$:
	ljmp	00183$
01014$:
;	include/gsm_serial.c:470: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='I' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='R')){
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x49,00183$
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x52,00183$
;	include/gsm_serial.c:472: send_gsm_cmd("ATH\r");
	mov	dptr,#___str_80
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00183$:
;	include/gsm_serial.c:476: }else if((gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
	cjne	r6,#0x3a,01019$
	sjmp	01020$
01019$:
	ljmp	00175$
01020$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x49,01021$
	sjmp	01022$
01021$:
	ljmp	00175$
01022$:
;	include/gsm_serial.c:477: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='M' &&
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x54,01023$
	sjmp	01024$
01023$:
	ljmp	00175$
01024$:
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4d,01025$
	sjmp	01026$
01025$:
	ljmp	00175$
01026$:
;	include/gsm_serial.c:478: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='+')){
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x43,00175$
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x2b,00175$
;	include/gsm_serial.c:480: co_tin_nhan_moi = 1;
;	assignBit
	setb	_co_tin_nhan_moi
	ljmp	00345$
00175$:
;	include/gsm_serial.c:484: }else if((gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
	clr	a
	cjne	r6,#0x20,01031$
	inc	a
01031$:
	mov	r4,a
	jnz	01033$
	ljmp	00173$
01033$:
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,#0x0c
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r1
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x3a,01034$
	sjmp	01035$
01034$:
	ljmp	00173$
01035$:
;	include/gsm_serial.c:485: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='L' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='G' &&
	mov	a,#0x0b
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r1
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x4c,01036$
	sjmp	01037$
01036$:
	ljmp	00173$
01037$:
	mov	a,#0x0a
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r1
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x47,01038$
	sjmp	01039$
01038$:
	ljmp	00173$
01039$:
;	include/gsm_serial.c:486: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='M'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
	mov	a,#0x09
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r1
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x4d,01040$
	sjmp	01041$
01040$:
	ljmp	00173$
01041$:
	mov	a,#0x08
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r1
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x43,00173$
;	include/gsm_serial.c:487: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')||(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
	mov	a,#0x07
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x2b,01044$
	ljmp	00158$
01044$:
00173$:
	mov	a,r4
	jnz	01045$
	ljmp	00159$
01045$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x3a,01046$
	sjmp	01047$
01046$:
	ljmp	00159$
01047$:
;	include/gsm_serial.c:488: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='I' &&
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x50,01048$
	sjmp	01049$
01048$:
	ljmp	00159$
01049$:
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x49,01050$
	sjmp	01051$
01050$:
	ljmp	00159$
01051$:
;	include/gsm_serial.c:489: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4c,01052$
	sjmp	01053$
01052$:
	ljmp	00159$
01053$:
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x43,01054$
	sjmp	01055$
01054$:
	ljmp	00159$
01055$:
;	include/gsm_serial.c:490: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')){
	mov	a,#0x07
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x2b,00159$
00158$:
;	include/gsm_serial.c:491: co_cuoc_goi_toi = gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L';
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x4c,01058$
	setb	c
	sjmp	01059$
01058$:
	clr	c
01059$:
;	include/gsm_serial.c:492: if(!co_cuoc_goi_toi && sms_dang_xu_ly) break;
	mov	_co_cuoc_goi_toi,c
	jc	00144$
	jnb	_sms_dang_xu_ly,01061$
	ljmp	00345$
01061$:
00144$:
;	include/gsm_serial.c:495: phone_header = 0;
;	assignBit
	clr	_phone_header
;	include/gsm_serial.c:496: phone_phu_so_sanh_that_bai = 0;
;	assignBit
	clr	_phone_phu_so_sanh_that_bai
;	include/gsm_serial.c:497: phone_chinh_so_sanh_that_bai = 0;
;	assignBit
	clr	_phone_chinh_so_sanh_that_bai
;	include/gsm_serial.c:498: gsm_serial_cmd = PHONE;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x03
	movx	@dptr,a
	ljmp	00345$
00159$:
;	include/gsm_serial.c:500: }else if(gsm_receive_buf[gsm_receive_pointer]=='K' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O'){
	cjne	r6,#0x4b,00155$
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x4f,00155$
;	include/gsm_serial.c:501: if(gsm_serial_cmd==CLK) sms_index = 0;
	cjne	r5,#0x02,00147$
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
00147$:
;	include/gsm_serial.c:502: gui_lenh_thanh_cong = !have_not;
	mov	c,_have_not
	cpl	c
	mov	_gui_lenh_thanh_cong,c
;	include/gsm_serial.c:503: have_not = 0;
;	assignBit
	clr	_have_not
;	include/gsm_serial.c:504: if(sms_index){
	mov	dptr,#_sms_index
	movx	a,@dptr
	jnz	01068$
	ljmp	00345$
01068$:
;	include/gsm_serial.c:505: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:506: send_gsm_cmd("AT+CMGDA=\"DEL ALL\"\r");
	mov	dptr,#___str_68
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00155$:
;	include/gsm_serial.c:510: }else if(gsm_receive_buf[gsm_receive_pointer]=='T' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&
	cjne	r6,#0x54,01069$
	sjmp	01070$
01069$:
	ljmp	00345$
01070$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x4f,01071$
	sjmp	01072$
01071$:
	ljmp	00345$
01072$:
;	include/gsm_serial.c:511: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='N'){
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x4e,01073$
	sjmp	01074$
01073$:
	ljmp	00345$
01074$:
;	include/gsm_serial.c:513: have_not = 1;
;	assignBit
	setb	_have_not
;	include/gsm_serial.c:516: break;
	ljmp	00345$
;	include/gsm_serial.c:517: case CFUN1:
00191$:
;	include/gsm_serial.c:518: if(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
	cjne	r6,#0x20,01075$
	sjmp	01076$
01075$:
	ljmp	00345$
01076$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x3a,01077$
	sjmp	01078$
01077$:
	ljmp	00345$
01078$:
;	include/gsm_serial.c:519: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='Z' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x5a,01079$
	sjmp	01080$
01079$:
	ljmp	00345$
01080$:
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x54,01081$
	sjmp	01082$
01081$:
	ljmp	00345$
01082$:
;	include/gsm_serial.c:520: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='U' &&
	mov	a,#0x09
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x54,01083$
	sjmp	01084$
01083$:
	ljmp	00345$
01084$:
	mov	a,#0x08
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x55,01085$
	sjmp	01086$
01085$:
	ljmp	00345$
01086$:
;	include/gsm_serial.c:521: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='S' && gsm_receive_buf[(gsm_receive_pointer+6)%13] =='P' &&
	mov	a,#0x07
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x53,01087$
	sjmp	01088$
01087$:
	ljmp	00345$
01088$:
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x50,01089$
	sjmp	01090$
01089$:
	ljmp	00345$
01090$:
;	include/gsm_serial.c:522: gsm_receive_buf[(gsm_receive_pointer+5)%13] =='*'){
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2a,01091$
	sjmp	01092$
01091$:
	ljmp	00345$
01092$:
;	include/gsm_serial.c:524: date_pointer = 0;
	mov	dptr,#_date_pointer
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:525: gsm_serial_cmd = CFUN;
	mov	dptr,#_gsm_serial_cmd
	inc	a
	movx	@dptr,a
;	include/gsm_serial.c:528: break;
	ljmp	00345$
;	include/gsm_serial.c:530: case CFUN:
00202$:
;	include/gsm_serial.c:531: if(SBUF!='\r' && date_pointer<30)
	mov	a,#0x0d
	cjne	a,_SBUF,01093$
	sjmp	00204$
01093$:
	mov	dptr,#_date_pointer
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x1e,01094$
01094$:
	jnc	00204$
;	include/gsm_serial.c:532: date_str[date_pointer++] = SBUF;
	mov	dptr,#_date_pointer
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	a,r5
	add	a,#_date_str
	mov	dpl,a
	clr	a
	addc	a,#(_date_str >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
	ljmp	00345$
00204$:
;	include/gsm_serial.c:534: date_str[date_pointer-1] = 0;
	mov	dptr,#_date_pointer
	movx	a,@dptr
	mov	r5,a
	dec	r5
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_date_str
	mov	dpl,a
	mov	a,r4
	addc	a,#(_date_str >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:535: have_time = gsm_serial_cmd;
	mov	dptr,#_gsm_serial_cmd
	movx	a,@dptr
	mov	dptr,#_have_time
	movx	@dptr,a
;	include/gsm_serial.c:536: gsm_serial_cmd = 0;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:537: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:539: break;
	ljmp	00345$
;	include/gsm_serial.c:540: case PHONE:
00207$:
;	include/gsm_serial.c:543: if(phone_header){
	jb	_phone_header,01096$
	ljmp	00240$
01096$:
;	include/gsm_serial.c:544: if(!sms_index){
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	jnz	00227$
;	include/gsm_serial.c:545: if(SBUF=='\r'){
	mov	a,#0x0d
	cjne	a,_SBUF,01098$
	sjmp	01099$
01098$:
	ljmp	00345$
01099$:
;	include/gsm_serial.c:546: if(co_cuoc_goi_toi){
	jnb	_co_cuoc_goi_toi,00209$
;	include/gsm_serial.c:547: delay_cuoc_goi_ke_tiep = 2;
	mov	dptr,#_delay_cuoc_goi_ke_tiep
	mov	a,#0x02
	movx	@dptr,a
;	include/gsm_serial.c:548: so_lan_goi_dien++;
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00209$:
;	include/gsm_serial.c:550: gsm_serial_cmd = CMD;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x05
	movx	@dptr,a
	ljmp	00345$
00227$:
;	include/gsm_serial.c:554: else if(sms_index==PHONE_LENGTH && gsm_SBUF == '"') {/*SMS buoc 5: neu tat ca chu so dt deu trung chuyen qua tim lenh */
	cjne	r5,#0x0a,00223$
	mov	a,#0x22
	cjne	a,_SBUF,00223$
;	include/gsm_serial.c:555: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
	ljmp	00345$
00223$:
;	include/gsm_serial.c:560: if(!phone_chinh_so_sanh_that_bai && phone_chinh[sms_index] != gsm_SBUF)phone_chinh_so_sanh_that_bai = 1;
	jb	_phone_chinh_so_sanh_that_bai,00213$
	mov	a,r5
	add	a,#_phone_chinh
	mov	dpl,a
	clr	a
	addc	a,#(_phone_chinh >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	a,_SBUF,01106$
	sjmp	00213$
01106$:
;	assignBit
	setb	_phone_chinh_so_sanh_that_bai
00213$:
;	include/gsm_serial.c:561: if(!bat_phone_phu || (!phone_phu_so_sanh_that_bai && eep_phonephu[sms_index] != gsm_SBUF))phone_phu_so_sanh_that_bai = 1;
	jnb	_bat_phone_phu,00215$
	jb	_phone_phu_so_sanh_that_bai,00216$
	mov	a,r5
	mov	dptr,#_eep_phonephu
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_SBUF,01109$
	sjmp	00216$
01109$:
00215$:
;	assignBit
	setb	_phone_phu_so_sanh_that_bai
00216$:
;	include/gsm_serial.c:562: sms_index++;
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
;	include/gsm_serial.c:563: if(phone_chinh_so_sanh_that_bai && phone_phu_so_sanh_that_bai) gsm_serial_cmd = NORMAL;
	jb	_phone_chinh_so_sanh_that_bai,01110$
	ljmp	00345$
01110$:
	jb	_phone_phu_so_sanh_that_bai,01111$
	ljmp	00345$
01111$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
	ljmp	00345$
00240$:
;	include/gsm_serial.c:569: if((co_cuoc_goi_toi && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"') || (gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8' &&
	jnb	_co_cuoc_goi_toi,00236$
	cjne	r6,#0x30,00236$
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar7
	push	ar6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x22,01115$
	ljmp	00229$
01115$:
00236$:
	cjne	r6,#0x34,01116$
	sjmp	01117$
01116$:
	ljmp	00230$
01117$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x38,00230$
;	include/gsm_serial.c:570: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='+' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='"')){
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x2b,00230$
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x22,00230$
00229$:
;	include/gsm_serial.c:571: phone_header = 1;
;	assignBit
	setb	_phone_header
;	include/gsm_serial.c:572: sms_index = 1;
	mov	dptr,#_sms_index
	mov	a,#0x01
	movx	@dptr,a
00230$:
;	include/gsm_serial.c:574: if(SBUF=='\r') gsm_serial_cmd = NORMAL;
	mov	a,#0x0d
	cjne	a,_SBUF,01124$
	sjmp	01125$
01124$:
	ljmp	00345$
01125$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:576: break;
	ljmp	00345$
;	include/gsm_serial.c:577: case CMD:/*SMS buoc 7: tim duoc pin chinh xac tien hanh lay lenh trong tin nhan
00242$:
;	include/gsm_serial.c:580: if(pin_chinh_xac){
	jnb	_pin_chinh_xac,00251$
;	include/gsm_serial.c:582: if(SBUF!=';' && SBUF!='\r' && sms_index<160){
	mov	a,#0x3b
	cjne	a,_SBUF,01127$
	sjmp	00244$
01127$:
	mov	a,#0x0d
	cjne	a,_SBUF,01128$
	sjmp	00244$
01128$:
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xa0,01129$
01129$:
	jnc	00244$
;	include/gsm_serial.c:584: lenh_sms[sms_index++] = SBUF;    
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	a,r5
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
	ljmp	00345$
00244$:
;	include/gsm_serial.c:587: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:588: pin_chinh_xac = 0;
;	assignBit
	clr	_pin_chinh_xac
;	include/gsm_serial.c:589: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:590: sms_dang_xu_ly = 1;
;	assignBit
	setb	_sms_dang_xu_ly
	ljmp	00345$
00251$:
;	include/gsm_serial.c:594: pin_chinh_xac = gsm_receive_buf[gsm_receive_pointer]==',' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' &&
	cjne	r6,#0x2c,01131$
	sjmp	01132$
01131$:
	ljmp	00352$
01132$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x43,01133$
	sjmp	01134$
01133$:
	ljmp	00352$
01134$:
;	include/gsm_serial.c:595: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='U' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='D' &&
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x55,01135$
	sjmp	01136$
01135$:
	ljmp	00352$
01136$:
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x44,00352$
;	include/gsm_serial.c:596: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='*';
	mov	a,#0x09
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x50,00352$
	mov	a,#0x08
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2a,01141$
	sjmp	00353$
01141$:
00352$:
;	assignBit
	clr	_gsm_serial_interrupt_sloc0_1_0
	sjmp	00354$
00353$:
;	assignBit
	setb	_gsm_serial_interrupt_sloc0_1_0
00354$:
;	assignBit
	mov	c,_gsm_serial_interrupt_sloc0_1_0
	mov	_pin_chinh_xac,c
;	include/gsm_serial.c:597: if(SBUF=='\r'){sms_index =1; gsm_serial_cmd = NORMAL;}
	mov	a,#0x0d
	cjne	a,_SBUF,01142$
	sjmp	01143$
01142$:
	ljmp	00345$
01143$:
	mov	dptr,#_sms_index
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:599: break;
	ljmp	00345$
;	include/gsm_serial.c:600: case CMGS:
00253$:
;	include/gsm_serial.c:601: if(SBUF=='>'){
	mov	a,#0x3e
	cjne	a,_SBUF,00259$
;	include/gsm_serial.c:602: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:603: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00259$:
;	include/gsm_serial.c:604: }else if(gsm_receive_buf[gsm_receive_pointer]=='R' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E') connect  = 0;
	cjne	r6,#0x52,01146$
	sjmp	01147$
01146$:
	ljmp	00345$
01147$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x52,01148$
	sjmp	01149$
01148$:
	ljmp	00345$
01149$:
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x45,01150$
	sjmp	01151$
01150$:
	ljmp	00345$
01151$:
	mov	dptr,#_connect
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:605: break;
	ljmp	00345$
;	include/gsm_serial.c:606: case CUSD:
00261$:
;	include/gsm_serial.c:607: if(have_cusd){
	jnb	_have_cusd,00302$
;	include/gsm_serial.c:608: if((((nha_mang == VINAPHONE || nha_mang == MOBIFONE) && SBUF !=' ') || ((nha_mang==VIETTEL || nha_mang==VIETNAM) && SBUF!='d'))  && sms_index<160){
	mov	dptr,#_nha_mang
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x50,01153$
	sjmp	00268$
01153$:
	cjne	r5,#0x66,00271$
00268$:
	mov	a,#0x20
	cjne	a,_SBUF,00272$
00271$:
	cjne	r5,#0x74,01158$
	sjmp	00270$
01158$:
	cjne	r5,#0x6e,00265$
00270$:
	mov	a,#0x64
	cjne	a,_SBUF,01161$
	sjmp	00265$
01161$:
00272$:
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xa0,01162$
01162$:
	jnc	00265$
;	include/gsm_serial.c:609: if(SBUF!='.')lenh_sms[sms_index++] = SBUF;
	mov	a,#0x2e
	cjne	a,_SBUF,01164$
	ljmp	00345$
01164$:
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
	mov	a,r5
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
	ljmp	00345$
00265$:
;	include/gsm_serial.c:612: have_quote = have_cusd = 0;
;	assignBit
	clr	_have_cusd
;	assignBit
	clr	_have_quote
;	include/gsm_serial.c:613: lenh_sms[sms_index] = 0;
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:614: sms_index = 0;
	mov	dptr,#_sms_index
	movx	@dptr,a
;	include/gsm_serial.c:616: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00302$:
;	include/gsm_serial.c:619: }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]=='=' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='h' &&
	mov	dptr,#_nha_mang
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x50,01165$
	sjmp	01166$
01165$:
	ljmp	00287$
01166$:
	cjne	r6,#0x3d,01167$
	sjmp	01168$
01167$:
	ljmp	00287$
01168$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x68,01169$
	sjmp	01170$
01169$:
	ljmp	00287$
01170$:
;	include/gsm_serial.c:620: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='n' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='i' &&
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x6e,01171$
	sjmp	01172$
01171$:
	ljmp	00287$
01172$:
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x69,01173$
	sjmp	01174$
01173$:
	ljmp	00287$
01174$:
;	include/gsm_serial.c:621: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='h' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='c') ||
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x68,00287$
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x63,01177$
	ljmp	00273$
01177$:
00287$:
;	include/gsm_serial.c:622: (nha_mang == VIETTEL && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
	cjne	r5,#0x74,01178$
	sjmp	01179$
01178$:
	ljmp	00294$
01179$:
	cjne	r6,#0x20,01180$
	sjmp	01181$
01180$:
	ljmp	00294$
01181$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x3a,01182$
	sjmp	01183$
01182$:
	ljmp	00294$
01183$:
;	include/gsm_serial.c:623: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='G' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x47,01184$
	sjmp	01185$
01184$:
	ljmp	00294$
01185$:
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4b,01186$
	sjmp	01187$
01186$:
	ljmp	00294$
01187$:
;	include/gsm_serial.c:624: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] ==' ') ||
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x54,00294$
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x20,01190$
	ljmp	00273$
01190$:
00294$:
;	include/gsm_serial.c:625: (nha_mang == MOBIFONE && gsm_receive_buf[gsm_receive_pointer]==' ' &&
	cjne	r5,#0x66,01191$
	sjmp	01192$
01191$:
	ljmp	00300$
01192$:
	cjne	r6,#0x20,01193$
	sjmp	01194$
01193$:
	ljmp	00300$
01194$:
;	include/gsm_serial.c:626: gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='K' &&
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x43,01195$
	sjmp	01196$
01195$:
	ljmp	00300$
01196$:
	mov	a,#0x0b
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x4b,01197$
	sjmp	01198$
01197$:
	ljmp	00300$
01198$:
;	include/gsm_serial.c:627: gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+9)%13] ==' ' &&
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x54,01199$
	sjmp	01200$
01199$:
	ljmp	00300$
01200$:
	mov	a,#0x09
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r1
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x20,00300$
;	include/gsm_serial.c:628: gsm_receive_buf[(gsm_receive_pointer+8)%13] =='.') ||
	mov	a,#0x08
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x2e,01203$
	ljmp	00273$
01203$:
00300$:
;	include/gsm_serial.c:633: (nha_mang == VIETNAM && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
	cjne	r5,#0x6e,01204$
	sjmp	01205$
01204$:
	ljmp	00345$
01205$:
	cjne	r6,#0x20,01206$
	sjmp	01207$
01206$:
	ljmp	00345$
01207$:
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x0c
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x3a,01208$
	sjmp	01209$
01208$:
	ljmp	00345$
01209$:
;	include/gsm_serial.c:634: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
	mov	a,#0x0b
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x43,01210$
	sjmp	01211$
01210$:
	ljmp	00345$
01211$:
	mov	a,#0x0a
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar5
	push	ar4
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x4b,01212$
	sjmp	01213$
01212$:
	ljmp	00345$
01213$:
;	include/gsm_serial.c:635: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T'))
	mov	a,#0x09
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x54,01214$
	sjmp	01215$
01214$:
	ljmp	00345$
01215$:
00273$:
;	include/gsm_serial.c:636: {have_cusd = 1;}
;	assignBit
	setb	_have_cusd
;	include/gsm_serial.c:637: break;
	ljmp	00345$
;	include/gsm_serial.c:638: case SDT:
00304$:
;	include/gsm_serial.c:639: if(have_cusd){
	jb	_have_cusd,01216$
	ljmp	00342$
01216$:
;	include/gsm_serial.c:640: if((((nha_mang == VINAPHONE || nha_mang == VIETNAM) && SBUF !='\n') || (nha_mang == MOBIFONE && SBUF !='"') || (nha_mang == VIETTEL && SBUF !='.'))  && sms_index<10) 
	mov	dptr,#_nha_mang
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x50,01217$
	sjmp	00315$
01217$:
	cjne	r5,#0x6e,00317$
00315$:
	mov	a,#0x0a
	cjne	a,_SBUF,00320$
00317$:
	cjne	r5,#0x66,00319$
	mov	a,#0x22
	cjne	a,_SBUF,00320$
00319$:
	cjne	r5,#0x74,00312$
	mov	a,#0x2e
	cjne	a,_SBUF,01228$
	sjmp	00312$
01228$:
00320$:
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,01229$
01229$:
	jnc	00312$
;	include/gsm_serial.c:641: if(sms_index<9) phone[1+sms_index++] = SBUF;
	cjne	r5,#0x09,01231$
01231$:
	jnc	00306$
	mov	ar4,r5
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
	inc	r4
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_phone
	mov	dpl,a
	mov	a,r3
	addc	a,#(_phone >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
	ljmp	00345$
00306$:
;	include/gsm_serial.c:642: else sms_index++;
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
	ljmp	00345$
00312$:
;	include/gsm_serial.c:644: have_quote = have_cusd = 0;                            
;	assignBit
	clr	_have_cusd
;	assignBit
	clr	_have_quote
;	include/gsm_serial.c:645: if(sms_index<10){
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,01233$
01233$:
	jnc	00309$
;	include/gsm_serial.c:646: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:647: phone[sms_index+1] = 0;
	inc	r5
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_phone
	mov	dpl,a
	mov	a,r4
	addc	a,#(_phone >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	sjmp	00310$
00309$:
;	include/gsm_serial.c:649: else connect =0;
	mov	dptr,#_connect
	clr	a
	movx	@dptr,a
00310$:
;	include/gsm_serial.c:650: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
	ljmp	00345$
00342$:
;	include/gsm_serial.c:653: }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==')') ||
	mov	dptr,#_nha_mang
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x50,00336$
	cjne	r6,#0x3a,00336$
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x29,01239$
	ljmp	00329$
01239$:
00336$:
;	include/gsm_serial.c:654: (nha_mang == VIETNAM   && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ') ||
	cjne	r5,#0x6e,00340$
	cjne	r6,#0x30,00340$
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x0c
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x20,01244$
	sjmp	00329$
01244$:
00340$:
;	include/gsm_serial.c:655: ((nha_mang == MOBIFONE || nha_mang == VIETTEL)  && gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8'))
	cjne	r5,#0x66,01245$
	sjmp	00338$
01245$:
	cjne	r5,#0x74,00330$
00338$:
	cjne	r6,#0x34,00330$
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x0c
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r6
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x38,00330$
00329$:
;	include/gsm_serial.c:656: have_cusd = 1;
;	assignBit
	setb	_have_cusd
	ljmp	00345$
00330$:
;	include/gsm_serial.c:657: else if((SBUF=='5' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='1' && gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] ==',') ||
	mov	a,#0x35
	cjne	a,_SBUF,01252$
	sjmp	01253$
01252$:
	ljmp	00328$
01253$:
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x0c
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x31,00328$
	mov	a,#0x0b
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r4
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x20,00328$
	mov	a,#0x0a
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	a,r5
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r6
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x2c,01258$
	sjmp	00321$
01258$:
00328$:
;	include/gsm_serial.c:658: (SBUF=='R'  && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E'))
	mov	a,#0x52
	cjne	a,_SBUF,00345$
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,#0x0c
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	push	ar7
	push	ar6
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x52,00345$
	mov	a,#0x0b
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	__modsint_PARM_2,#0x0d
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	psw,#0x00
	lcall	__modsint
	mov	psw,#0x10
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_gsm_receive_buf
	mov	dpl,a
	mov	a,r7
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x45,00345$
00321$:
;	include/gsm_serial.c:659: error = 1;
;	assignBit
	setb	_error
;	include/gsm_serial.c:662: }
00345$:
;	include/gsm_serial.c:663: if(++gsm_receive_pointer>12) gsm_receive_pointer = 0;
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00347$
	mov	dptr,#_gsm_receive_pointer
	clr	a
	movx	@dptr,a
00347$:
;	include/gsm_serial.c:664: gsm_RI = 0;
;	assignBit
	clr	_RI
00350$:
;	include/gsm_serial.c:666: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'xu_ly_tin_nhan'
;------------------------------------------------------------
;giodelta                  Allocated to registers r5 
;phutdelta                 Allocated with name '_xu_ly_tin_nhan_phutdelta_65537_185'
;kim_index                 Allocated with name '_xu_ly_tin_nhan_kim_index_65537_185'
;nam                       Allocated to registers r7 
;check                     Allocated to registers r6 r7 
;sloc0                     Allocated with name '_xu_ly_tin_nhan_sloc0_1_0'
;sloc1                     Allocated with name '_xu_ly_tin_nhan_sloc1_1_0'
;sloc2                     Allocated with name '_xu_ly_tin_nhan_sloc2_1_0'
;sloc3                     Allocated with name '_xu_ly_tin_nhan_sloc3_1_0'
;sloc4                     Allocated with name '_xu_ly_tin_nhan_sloc4_1_0'
;sloc5                     Allocated with name '_xu_ly_tin_nhan_sloc5_1_0'
;sloc6                     Allocated with name '_xu_ly_tin_nhan_sloc6_1_0'
;sloc7                     Allocated with name '_xu_ly_tin_nhan_sloc7_1_0'
;i                         Allocated with name '_xu_ly_tin_nhan_i_65537_185'
;------------------------------------------------------------
;	include/xu_ly_tin_nhan.c:1: void xu_ly_tin_nhan(){
;	-----------------------------------------
;	 function xu_ly_tin_nhan
;	-----------------------------------------
_xu_ly_tin_nhan:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	include/xu_ly_tin_nhan.c:3: lenh_khong_hop_le = 0;
;	assignBit
	clr	_lenh_khong_hop_le
;	include/xu_ly_tin_nhan.c:6: while(lenh_sms[i++])WATCHDOG;
	mov	r7,#0x00
00101$:
	mov	a,r7
	add	a,#_lenh_sms
	mov	r5,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	r6,a
	inc	r7
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00505$
	orl	_WDT_CONTR,#0x10
;	include/xu_ly_tin_nhan.c:7: while(i<160)lenh_sms[i++] = 0;
	sjmp	00101$
00505$:
00104$:
	cjne	r7,#0xa0,01673$
01673$:
	jnc	00106$
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	inc	r7
	clr	a
	movx	@dptr,a
	sjmp	00104$
00106$:
;	include/xu_ly_tin_nhan.c:9: if((lenh_sms[0]=='?'||lenh_sms[1]=='?') && !phone_chinh_so_sanh_that_bai)gui_huong_dan();
	mov	dptr,#_lenh_sms
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3f,01675$
	sjmp	00487$
01675$:
	mov	dptr,#(_lenh_sms + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3f,00484$
00487$:
	jb	_phone_chinh_so_sanh_that_bai,00484$
	ljmp	_gui_huong_dan
00484$:
;	include/xu_ly_tin_nhan.c:11: switch(lenh_sms[1]){
	mov	dptr,#(_lenh_sms + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x43,01679$
	ljmp	00230$
01679$:
	cjne	r7,#0x45,01680$
	ljmp	00288$
01680$:
	cjne	r7,#0x48,01681$
	sjmp	00108$
01681$:
	cjne	r7,#0x49,01682$
	ljmp	00377$
01682$:
	cjne	r7,#0x50,01683$
	ljmp	00320$
01683$:
	cjne	r7,#0x53,01684$
	ljmp	00259$
01684$:
	cjne	r7,#0x54,01685$
	ljmp	00392$
01685$:
	cjne	r7,#0x63,01686$
	ljmp	00230$
01686$:
	cjne	r7,#0x65,01687$
	ljmp	00288$
01687$:
	cjne	r7,#0x68,01688$
	sjmp	00108$
01688$:
	cjne	r7,#0x69,01689$
	ljmp	00377$
01689$:
	cjne	r7,#0x70,01690$
	ljmp	00320$
01690$:
	cjne	r7,#0x73,01691$
	ljmp	00259$
01691$:
	cjne	r7,#0x74,01692$
	ljmp	00392$
01692$:
	ljmp	00475$
;	include/xu_ly_tin_nhan.c:13: case 'H':
00108$:
;	include/xu_ly_tin_nhan.c:14: if(lenh_sms[3]>48 && lenh_sms[3]<53 && !lenh_sms[6]){
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x30
	subb	a,r7
	clr	a
	rlc	a
	mov	r6,a
	mov	r5,#0x00
	jnz	01693$
	ljmp	00216$
01693$:
	cjne	r7,#0x35,01694$
01694$:
	jc	01695$
	ljmp	00216$
01695$:
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	jz	01696$
	ljmp	00216$
01696$:
;	include/xu_ly_tin_nhan.c:15: if(lenh_sms[4] =='D' || lenh_sms[4] =='d') phutdelta = 4;
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x44,01697$
	sjmp	00112$
01697$:
	cjne	r6,#0x64,00113$
00112$:
	mov	r5,#0x04
	sjmp	00114$
00113$:
;	include/xu_ly_tin_nhan.c:16: else if(lenh_sms[4] != 'S' && lenh_sms[4] !='s' ) lenh_khong_hop_le = 1;
	cjne	r6,#0x53,01700$
	sjmp	00114$
01700$:
	cjne	r6,#0x73,01701$
	sjmp	00114$
01701$:
;	assignBit
	setb	_lenh_khong_hop_le
00114$:
;	include/xu_ly_tin_nhan.c:17: if(!lenh_khong_hop_le && (lenh_sms[5] == 'A' || lenh_sms[5] == 'a' || lenh_sms[3]>50)) phutdelta += 8;
	jb	_lenh_khong_hop_le,00121$
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x41,01703$
	sjmp	00120$
01703$:
	cjne	r6,#0x61,01704$
	sjmp	00120$
01704$:
	mov	a,r7
	add	a,#0xff - 0x32
	jnc	00121$
00120$:
	mov	ar6,r5
	mov	a,#0x08
	add	a,r6
	mov	r5,a
	sjmp	00122$
00121$:
;	include/xu_ly_tin_nhan.c:18: else if(!lenh_khong_hop_le && lenh_sms[5] != 'S' || lenh_sms[5] != 's') lenh_khong_hop_le = 1;
	jb	_lenh_khong_hop_le,00119$
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x53,00116$
00119$:
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x73,01709$
	sjmp	00122$
01709$:
00116$:
;	assignBit
	setb	_lenh_khong_hop_le
00122$:
;	include/xu_ly_tin_nhan.c:19: phutdelta += lenh_sms[3]-48;
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	add	a,r5
	mov	r6,a
;	include/xu_ly_tin_nhan.c:20: IAP_docxoasector1();
	push	ar6
	lcall	_IAP_docxoasector1
	pop	ar6
;	include/xu_ly_tin_nhan.c:21: eeprom_buf[MOTOR_EEPROM] = phutdelta;
	mov	dptr,#_eeprom_buf
	mov	a,r6
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:22: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:23: baocaosms(CHINH,"\rthay doi may va reset bo dieu khien");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_81
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:24: EA=0;
;	assignBit
	clr	_EA
;	include/xu_ly_tin_nhan.c:25: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
;	include/xu_ly_tin_nhan.c:26: gsm_pw = 0;
;	assignBit
	clr	_P20
;	include/xu_ly_tin_nhan.c:27: IAP_ghibyte(NORRESET_EEPROM,0);
	mov	_IAP_ghibyte_PARM_2,#0x00
	mov	dptr,#0x0005
	lcall	_IAP_ghibyte
;	include/xu_ly_tin_nhan.c:28: RingRelay = 1;
;	assignBit
	setb	_P23
;	include/xu_ly_tin_nhan.c:29: delay_ms(4000);
	mov	dptr,#0x0fa0
	lcall	_delay_ms
;	include/xu_ly_tin_nhan.c:30: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
	ljmp	00217$
00216$:
;	include/xu_ly_tin_nhan.c:32: else if(lenh_sms[3]=='+'){
	cjne	r7,#0x2b,01710$
	sjmp	01711$
01710$:
	ljmp	00213$
01711$:
;	include/xu_ly_tin_nhan.c:33: if (lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#0x2f
	subb	a,r6
	clr	a
	rlc	a
	mov	r5,a
	jnz	01712$
	ljmp	00133$
01712$:
	cjne	r6,#0x33,01713$
01713$:
	jc	01714$
	ljmp	00133$
01714$:
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01715$
	ljmp	00133$
01715$:
	cjne	r4,#0x3a,01716$
01716$:
	jc	01717$
	ljmp	00133$
01717$:
;	include/xu_ly_tin_nhan.c:34: lenh_sms[6]>47 && lenh_sms[6]<54 && lenh_sms[7]>47 && lenh_sms[7]<58 &&
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	mov  r3,a
	add	a,#0xff - 0x2f
	jc	01718$
	ljmp	00133$
01718$:
	cjne	r3,#0x36,01719$
01719$:
	jc	01720$
	ljmp	00133$
01720$:
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	mov  _xu_ly_tin_nhan_sloc4_1_0,a
	add	a,#0xff - 0x2f
	jc	01721$
	ljmp	00133$
01721$:
	mov	a,#0x100 - 0x3a
	add	a,_xu_ly_tin_nhan_sloc4_1_0
	jnc	01722$
	ljmp	00133$
01722$:
;	include/xu_ly_tin_nhan.c:35: lenh_sms[9]>47 && lenh_sms[9]<51 && lenh_sms[10]>47 && lenh_sms[10]<58 &&
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	mov  _xu_ly_tin_nhan_sloc0_1_0,a
	add	a,#0xff - 0x2f
	jc	01723$
	ljmp	00133$
01723$:
	mov	a,#0x100 - 0x33
	add	a,_xu_ly_tin_nhan_sloc0_1_0
	jnc	01724$
	ljmp	00133$
01724$:
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov  _xu_ly_tin_nhan_sloc1_1_0,a
	add	a,#0xff - 0x2f
	jc	01725$
	ljmp	00133$
01725$:
	mov	a,#0x100 - 0x3a
	add	a,_xu_ly_tin_nhan_sloc1_1_0
	jnc	01726$
	ljmp	00133$
01726$:
;	include/xu_ly_tin_nhan.c:36: lenh_sms[11]>47 && lenh_sms[11]<54 && lenh_sms[12]>47 && lenh_sms[12]<58){
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov  _xu_ly_tin_nhan_sloc2_1_0,a
	add	a,#0xff - 0x2f
	jc	01727$
	ljmp	00133$
01727$:
	mov	a,#0x100 - 0x36
	add	a,_xu_ly_tin_nhan_sloc2_1_0
	jnc	01728$
	ljmp	00133$
01728$:
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	mov  _xu_ly_tin_nhan_sloc3_1_0,a
	add	a,#0xff - 0x2f
	jc	01729$
	ljmp	00133$
01729$:
	mov	a,#0x100 - 0x3a
	add	a,_xu_ly_tin_nhan_sloc3_1_0
	jnc	01730$
	ljmp	00133$
01730$:
;	include/xu_ly_tin_nhan.c:37: giodelta = 2+lenh_sms[4]-lenh_sms[9];
	mov	ar2,r6
	mov	a,#0x02
	add	a,r2
	mov	_xu_ly_tin_nhan_sloc5_1_0,a
	mov	r2,_xu_ly_tin_nhan_sloc0_1_0
	clr	c
	subb	a,r2
;	include/xu_ly_tin_nhan.c:38: giodelta = giodelta*10 + 4 + hour + lenh_sms[5]-lenh_sms[10];
	mov	b,#0x0a
	mul	ab
	add	a,#0x04
	mov	_xu_ly_tin_nhan_sloc5_1_0,a
	add	a,_hour
	add	a,r4
	mov	r4,_xu_ly_tin_nhan_sloc1_1_0
	clr	c
	subb	a,r4
	mov	r2,a
;	include/xu_ly_tin_nhan.c:39: phutdelta = 6+lenh_sms[11]-lenh_sms[6];
	mov	r4,_xu_ly_tin_nhan_sloc2_1_0
	mov	a,#0x06
	add	a,r4
	clr	c
	subb	a,r3
;	include/xu_ly_tin_nhan.c:40: phutdelta = phutdelta*10 + lenh_sms[12]-lenh_sms[7];
	mov	b,#0x0a
	mul	ab
	add	a,_xu_ly_tin_nhan_sloc3_1_0
	mov	r3,_xu_ly_tin_nhan_sloc4_1_0
	clr	c
	subb	a,r3
	mov	_xu_ly_tin_nhan_phutdelta_65537_185,a
;	include/xu_ly_tin_nhan.c:41: gio[0]  = (giodelta - (minute+60<phutdelta))%12;
	mov	_xu_ly_tin_nhan_sloc6_1_0,r2
	mov	(_xu_ly_tin_nhan_sloc6_1_0 + 1),#0x00
	mov	r3,_minute
	mov	r4,#0x00
	mov	a,#0x3c
	add	a,r3
	mov	_xu_ly_tin_nhan_sloc7_1_0,a
	clr	a
	addc	a,r4
	mov	(_xu_ly_tin_nhan_sloc7_1_0 + 1),a
	mov	r2,_xu_ly_tin_nhan_phutdelta_65537_185
	mov	r4,#0x00
	clr	c
	mov	a,_xu_ly_tin_nhan_sloc7_1_0
	subb	a,r2
	mov	a,(_xu_ly_tin_nhan_sloc7_1_0 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r2,a
	mov	r4,#0x00
	mov	a,_xu_ly_tin_nhan_sloc6_1_0
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,(_xu_ly_tin_nhan_sloc6_1_0 + 1)
	subb	a,r4
	mov	dph,a
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	lcall	__modsint
	mov	r3,dpl
	mov	_gio,r3
;	include/xu_ly_tin_nhan.c:42: phutdelta = minute+120-phutdelta;
	mov	r4,_minute
	mov	a,#0x78
	add	a,r4
	mov	r3,_xu_ly_tin_nhan_phutdelta_65537_185
	clr	c
	subb	a,r3
	mov	r4,a
;	include/xu_ly_tin_nhan.c:43: phut[0] = phutdelta%60;
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	r3,dpl
	mov	_phut,r3
;	include/xu_ly_tin_nhan.c:44: luu_gio_kim();
	lcall	_luu_gio_kim
	ljmp	00217$
00133$:
;	include/xu_ly_tin_nhan.c:45: }else if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
	mov	a,r5
	jz	00127$
	cjne	r6,#0x36,01732$
01732$:
	jnc	00127$
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x2f
	jnc	00127$
	cjne	r5,#0x3a,01735$
01735$:
	jnc	00127$
;	include/xu_ly_tin_nhan.c:46: phutdelta = (lenh_sms[4] - '0')*10 +lenh_sms[5]-'0';
	mov	a,r6
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	add	a,r5
	add	a,#0xd0
	mov	r6,a
;	include/xu_ly_tin_nhan.c:47: giodelta = 12 + gio[0] - (phut[0]<phutdelta);
	mov	r5,_gio
	mov	a,#0x0c
	add	a,r5
	mov	r5,a
	clr	c
	mov	a,_phut
	subb	a,r6
	clr	a
	rlc	a
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
;	include/xu_ly_tin_nhan.c:48: gio[0] = giodelta%12;
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	mov	_gio,r4
;	include/xu_ly_tin_nhan.c:49: phut[0] = (60+phut[0]-phutdelta)%60;
	mov	r4,_phut
	mov	r5,#0x00
	mov	a,#0x3c
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	a,r4
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,r5
	subb	a,r3
	mov	dph,a
	mov	__modsint_PARM_2,#0x3c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	lcall	__modsint
	mov	r5,dpl
	mov	_phut,r5
;	include/xu_ly_tin_nhan.c:50: luu_gio_kim();
	lcall	_luu_gio_kim
	ljmp	00217$
00127$:
;	include/xu_ly_tin_nhan.c:53: }else lenh_khong_hop_le=1;
;	assignBit
	setb	_lenh_khong_hop_le
	ljmp	00217$
00213$:
;	include/xu_ly_tin_nhan.c:54: }else if(lenh_sms[3]=='-'){
	cjne	r7,#0x2d,00210$
;	include/xu_ly_tin_nhan.c:55: if(lenh_sms[4]>47 && lenh_sms[4]<54 && lenh_sms[5]>47 && lenh_sms[5]<58){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jnc	00153$
	cjne	r7,#0x36,01740$
01740$:
	jnc	00153$
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x2f
	jnc	00153$
	cjne	r6,#0x3a,01743$
01743$:
	jnc	00153$
;	include/xu_ly_tin_nhan.c:56: phut[0] = phut[0] + (lenh_sms[4]-'0')*10 + lenh_sms[5]-'0';
	mov	a,r7
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r5,_phut
	add	a,r5
	add	a,r6
	add	a,#0xd0
;	include/xu_ly_tin_nhan.c:57: if(phut[0]>59){
	mov  _phut,a
	add	a,#0xff - 0x3b
	jnc	00151$
;	include/xu_ly_tin_nhan.c:58: gio[0]++;
	mov	a,_gio
	inc	a
	mov	_gio,a
;	include/xu_ly_tin_nhan.c:59: phut[0]-=60;
	mov	a,_phut
	mov	r7,a
	add	a,#0xc4
	mov	_phut,a
00151$:
;	include/xu_ly_tin_nhan.c:61: luu_gio_kim();
	lcall	_luu_gio_kim
	ljmp	00217$
00153$:
;	include/xu_ly_tin_nhan.c:64: }else lenh_khong_hop_le=1;
;	assignBit
	setb	_lenh_khong_hop_le
	ljmp	00217$
00210$:
;	include/xu_ly_tin_nhan.c:65: }else if(lenh_sms[4]=='N' || lenh_sms[4]=='n'){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x4e,01746$
	sjmp	00205$
01746$:
	cjne	r7,#0x6e,00206$
00205$:
;	include/xu_ly_tin_nhan.c:67: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01749$
	ljmp	00479$
01749$:
;	include/xu_ly_tin_nhan.c:68: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:69: eeprom_buf[MOTOR_EEPROM] &= 0xef;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	anl	a,#0xef
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:70: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:71: motor_dung = 0;
;	assignBit
	clr	_motor_dung
;	include/xu_ly_tin_nhan.c:72: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	include/xu_ly_tin_nhan.c:73: mp3_hour= 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/xu_ly_tin_nhan.c:74: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
	ljmp	00217$
00206$:
;	include/xu_ly_tin_nhan.c:75: }else if(lenh_sms[4]=='F' || lenh_sms[4]=='f'){
	cjne	r7,#0x46,01750$
	sjmp	00201$
01750$:
	cjne	r7,#0x66,00202$
00201$:
;	include/xu_ly_tin_nhan.c:77: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01753$
	ljmp	00479$
01753$:
;	include/xu_ly_tin_nhan.c:78: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:79: eeprom_buf[MOTOR_EEPROM] |= 0x10;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:80: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:81: motor_dung = 1;
;	assignBit
	setb	_motor_dung
;	include/xu_ly_tin_nhan.c:82: if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r6,a
	mov	r7,#0x00
	cjne	r6,#0x02,00163$
	cjne	r7,#0x00,00163$
	jnb	_P12,00163$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00163$:
;	include/xu_ly_tin_nhan.c:83: AmplyRelay = 0;
;	assignBit
	clr	_P42
	ljmp	00217$
00202$:
;	include/xu_ly_tin_nhan.c:86: i = 3;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x03
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:87: kim_index = 1;
	mov	_xu_ly_tin_nhan_kim_index_65537_185,#0x01
;	include/xu_ly_tin_nhan.c:88: do{
00198$:
;	include/xu_ly_tin_nhan.c:89: if(lenh_sms[i]==','){
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	mov	r6,a
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2c,00196$
;	include/xu_ly_tin_nhan.c:90: if(!kim_index)i = 101;
	mov	a,_xu_ly_tin_nhan_kim_index_65537_185
	jnz	00166$
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x65
	movx	@dptr,a
	ljmp	00199$
00166$:
;	include/xu_ly_tin_nhan.c:92: kim_index = (kim_index+1)%(so_motor+1);
	mov	r3,_xu_ly_tin_nhan_kim_index_65537_185
	mov	r4,#0x00
	mov	a,#0x01
	add	a,r3
	mov	_xu_ly_tin_nhan_sloc7_1_0,a
	clr	a
	addc	a,r4
	mov	(_xu_ly_tin_nhan_sloc7_1_0 + 1),a
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0x01
	add	a,r2
	mov	__modsint_PARM_2,a
	clr	a
	addc	a,r4
	mov	(__modsint_PARM_2 + 1),a
	mov	dpl,_xu_ly_tin_nhan_sloc7_1_0
	mov	dph,(_xu_ly_tin_nhan_sloc7_1_0 + 1)
	push	ar6
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	mov	_xu_ly_tin_nhan_kim_index_65537_185,r3
;	include/xu_ly_tin_nhan.c:93: i++;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,r6
	inc	a
	movx	@dptr,a
	ljmp	00199$
00196$:
;	include/xu_ly_tin_nhan.c:96: else if(lenh_sms[i]<48) i = !kim_index?101:202;
	cjne	r5,#0x30,01760$
01760$:
	jnc	00193$
	mov	a,_xu_ly_tin_nhan_kim_index_65537_185
	jnz	00496$
	mov	r4,#0x65
	mov	r6,a
	sjmp	00497$
00496$:
	mov	r4,#0xca
	mov	r6,#0x00
00497$:
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,r4
	movx	@dptr,a
	ljmp	00199$
00193$:
;	include/xu_ly_tin_nhan.c:97: else if(!kim_index && (lenh_sms[i]=='g' || lenh_sms[i]=='G' || lenh_sms[i]=='a' || lenh_sms[i]=='A')){
	mov	a,_xu_ly_tin_nhan_kim_index_65537_185
	jnz	00186$
	cjne	r5,#0x67,01764$
	sjmp	00185$
01764$:
	cjne	r5,#0x47,01765$
	sjmp	00185$
01765$:
	cjne	r5,#0x61,01766$
	sjmp	00185$
01766$:
	cjne	r5,#0x41,00186$
00185$:
;	include/xu_ly_tin_nhan.c:99: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00169$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00169$:
;	include/xu_ly_tin_nhan.c:100: AmplyRelay=0;
;	assignBit
	clr	_P42
;	include/xu_ly_tin_nhan.c:101: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	include/xu_ly_tin_nhan.c:103: gsm_thietlapngaygiothuc();
	lcall	_gsm_thietlapngaygiothuc
;	include/xu_ly_tin_nhan.c:104: hour12 = hour%12;
	mov	r5,_hour
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	mov	_hour12,r5
;	include/xu_ly_tin_nhan.c:105: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/xu_ly_tin_nhan.c:106: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	include/xu_ly_tin_nhan.c:107: i = 101;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x65
	movx	@dptr,a
	ljmp	00199$
00186$:
;	include/xu_ly_tin_nhan.c:109: else if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	mov	r6,a
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x2f
	jc	01770$
	ljmp	00176$
01770$:
	cjne	r5,#0x33,01771$
01771$:
	jc	01772$
	ljmp	00176$
01772$:
	mov	ar3,r6
	mov	r4,#0x00
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01773$
	ljmp	00176$
01773$:
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,01774$
01774$:
	jc	01775$
	ljmp	00176$
01775$:
;	include/xu_ly_tin_nhan.c:110: lenh_sms[i+2]>47 && lenh_sms[i+2]<54 && lenh_sms[i+3]>47 && lenh_sms[i+3]<58){
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01776$
	ljmp	00176$
01776$:
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x36,01777$
01777$:
	jc	01778$
	ljmp	00176$
01778$:
	mov	a,#0x03
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01779$
	ljmp	00176$
01779$:
	mov	a,#0x03
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3a,01780$
01780$:
	jc	01781$
	ljmp	00176$
01781$:
;	include/xu_ly_tin_nhan.c:111: if(kim_index){
	mov	a,_xu_ly_tin_nhan_kim_index_65537_185
	jnz	01782$
	ljmp	00173$
01782$:
;	include/xu_ly_tin_nhan.c:112: gio[kim_index-1] = ((lenh_sms[i]-'0')*10 + lenh_sms[i+1] - '0')%12;
	mov	r7,_xu_ly_tin_nhan_kim_index_65537_185
	dec	r7
	mov	a,r7
	add	a,#_gio
	mov	_xu_ly_tin_nhan_sloc7_1_0,a
	mov	r2,#0x00
	mov	a,r5
	add	a,#0xd0
	mov	__mulint_PARM_2,a
	mov	a,r2
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	__mulint
	mov	_xu_ly_tin_nhan_sloc6_1_0,dpl
	mov	(_xu_ly_tin_nhan_sloc6_1_0 + 1),dph
	pop	ar3
	pop	ar4
	mov	a,#0x01
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r5
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,#0x00
	add	a,_xu_ly_tin_nhan_sloc6_1_0
	mov	r5,a
	mov	a,r2
	addc	a,(_xu_ly_tin_nhan_sloc6_1_0 + 1)
	mov	r2,a
	mov	a,r5
	add	a,#0xd0
	mov	dpl,a
	mov	a,r2
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x0c
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	r0,_xu_ly_tin_nhan_sloc7_1_0
	mov	@r0,ar2
;	include/xu_ly_tin_nhan.c:113: phut[kim_index-1] = (lenh_sms[i+2]-'0')*10 + lenh_sms[i+3] - '0';
	mov	a,r7
	add	a,#_phut
	mov	r1,a
	mov	a,#0x02
	add	a,r3
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	a,r5
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	@r1,a
;	include/xu_ly_tin_nhan.c:114: luu_gio_kim();
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
;	include/xu_ly_tin_nhan.c:115: kim_index = (kim_index+1)%(so_motor+1);
	mov	r5,_xu_ly_tin_nhan_kim_index_65537_185
	mov	r7,#0x00
	inc	r5
	cjne	r5,#0x00,01783$
	inc	r7
01783$:
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x01
	add	a,r4
	mov	__modsint_PARM_2,a
	clr	a
	addc	a,r3
	mov	(__modsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	__modsint
	mov	r5,dpl
	mov	r7,dph
	pop	ar6
	mov	_xu_ly_tin_nhan_kim_index_65537_185,r5
;	include/xu_ly_tin_nhan.c:116: i+=5;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x05
	add	a,r6
	movx	@dptr,a
	ljmp	00199$
00173$:
;	include/xu_ly_tin_nhan.c:118: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00171$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00171$:
;	include/xu_ly_tin_nhan.c:119: AmplyRelay=0;
;	assignBit
	clr	_P42
;	include/xu_ly_tin_nhan.c:120: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	include/xu_ly_tin_nhan.c:121: hour = ((lenh_sms[i]-'0')*10 + lenh_sms[i+1] - '0')%24;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	mov	r7,a
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,#0x00
	add	a,#0xd0
	mov	__mulint_PARM_2,a
	mov	a,r5
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	r4,#0x00
	mov	a,#0x01
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r3,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r3
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#0xd0
	mov	dpl,a
	mov	a,r6
	addc	a,#0xff
	mov	dph,a
	mov	__modsint_PARM_2,#0x18
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	push	ar7
	push	ar4
	lcall	__modsint
	mov	r5,dpl
	pop	ar4
	pop	ar7
	mov	_hour,r5
;	include/xu_ly_tin_nhan.c:122: minute = (lenh_sms[i+2]-'0')*10 + lenh_sms[i+3] - '0';
	mov	a,#0x02
	add	a,r7
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	a,r5
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	a,#0x03
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,r6
	add	a,#0xd0
	mov	_minute,a
;	include/xu_ly_tin_nhan.c:123: hour12=hour%12;
	mov	r6,_hour
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	_hour12,r6
;	include/xu_ly_tin_nhan.c:124: rtc_settime(hour,minute,second);
	mov	_rtc_settime_PARM_2,_minute
	mov	_rtc_settime_PARM_3,_second
	mov	dpl,_hour
	lcall	_rtc_settime
;	include/xu_ly_tin_nhan.c:125: GPS_time = 0;
;	assignBit
	clr	_GPS_time
;	include/xu_ly_tin_nhan.c:126: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/xu_ly_tin_nhan.c:127: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	include/xu_ly_tin_nhan.c:128: i= 101;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x65
	movx	@dptr,a
	sjmp	00199$
00176$:
;	include/xu_ly_tin_nhan.c:130: }else i = 202;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0xca
	movx	@dptr,a
00199$:
;	include/xu_ly_tin_nhan.c:131: }while(i<100);
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,01785$
01785$:
	jnc	01786$
	ljmp	00198$
01786$:
;	include/xu_ly_tin_nhan.c:132: lenh_khong_hop_le = i==202;
	cjne	r7,#0xca,01787$
	setb	c
	sjmp	01788$
01787$:
	clr	c
01788$:
	mov	_lenh_khong_hop_le,c
00217$:
;	include/xu_ly_tin_nhan.c:138: motor_index = motor_run_check();
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	include/xu_ly_tin_nhan.c:139: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
;	include/xu_ly_tin_nhan.c:140: if(lenh_khong_hop_le){
	jnb	_lenh_khong_hop_le,00227$
;	include/xu_ly_tin_nhan.c:141: if(phone_phu_so_sanh_that_bai)
	jnb	_phone_phu_so_sanh_that_bai,00221$
;	include/xu_ly_tin_nhan.c:142: baocaosms(CHINH,"\rlenh khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00221$:
;	include/xu_ly_tin_nhan.c:144: baocaosms(CHINH,"\rlenh dong ho khong hop le\rPhone phu gui lenh");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_83
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:145: baocaosms(PHU,"\rlenh khong hop le");
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00227$:
;	include/xu_ly_tin_nhan.c:150: if(phone_phu_so_sanh_that_bai)
	jnb	_phone_phu_so_sanh_that_bai,00224$
;	include/xu_ly_tin_nhan.c:151: baocaosms(CHINH,"\rchinh dong ho thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00224$:
;	include/xu_ly_tin_nhan.c:153: baocaosms(CHINH,"\rchinh dong ho thanh cong\rPhone phu gui lenh");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_85
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:154: baocaosms(PHU,"\rchinh dong ho thanh cong");
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_84
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:157: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:159: case 'C':
00230$:
;	include/xu_ly_tin_nhan.c:160: if(lenh_sms[4]=='e' || lenh_sms[4]=='E'){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x65,01792$
	sjmp	00251$
01792$:
	cjne	r7,#0x45,00252$
00251$:
;	include/xu_ly_tin_nhan.c:161: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01795$
	ljmp	00479$
01795$:
;	include/xu_ly_tin_nhan.c:162: baocaoden(CHINH,"\rbao cao den thanh cong");
;	assignBit
	setb	_baocaoden_PARM_1
	mov	dptr,#___str_86
	mov	b,#0x80
	lcall	_baocaoden
;	include/xu_ly_tin_nhan.c:164: break;
	ljmp	00479$
00252$:
;	include/xu_ly_tin_nhan.c:166: else if(lenh_sms[4]=='n' || lenh_sms[4]=='N'){
	cjne	r7,#0x6e,01796$
	sjmp	00247$
01796$:
	cjne	r7,#0x4e,00248$
00247$:
;	include/xu_ly_tin_nhan.c:167: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01799$
	ljmp	00479$
01799$:
;	include/xu_ly_tin_nhan.c:168: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:169: eeprom_buf[BAOCAO_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:170: IAP_ghisector1();
	lcall	_IAP_ghisector1
	sjmp	00253$
00248$:
;	include/xu_ly_tin_nhan.c:171: }else if(lenh_sms[4]=='f' || lenh_sms[4]=='F'){
	cjne	r7,#0x66,01800$
	sjmp	00243$
01800$:
	cjne	r7,#0x46,00244$
00243$:
;	include/xu_ly_tin_nhan.c:172: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01803$
	ljmp	00479$
01803$:
;	include/xu_ly_tin_nhan.c:173: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:174: eeprom_buf[BAOCAO_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0001)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:175: IAP_ghisector1();
	lcall	_IAP_ghisector1
	sjmp	00253$
00244$:
;	include/xu_ly_tin_nhan.c:176: }else if(lenh_sms[2] && lenh_sms[3]){
	mov	dptr,#(_lenh_sms + 0x0002)
	movx	a,@dptr
	jz	00253$
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	a,@dptr
	jz	00253$
;	include/xu_ly_tin_nhan.c:177: if(phone_phu_so_sanh_that_bai)
	jnb	_phone_phu_so_sanh_that_bai,00238$
;	include/xu_ly_tin_nhan.c:178: baocaosms(CHINH,"\rlenh khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00238$:
;	include/xu_ly_tin_nhan.c:180: baocaosms(CHINH,"\rlenh khong hop le\rPhone phu gui lenh den");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_87
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:181: baocaosms(PHU,"\rlenh khong hop le");
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_82
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:183: break;
	ljmp	00479$
00253$:
;	include/xu_ly_tin_nhan.c:185: if(phone_phu_so_sanh_that_bai)
	jnb	_phone_phu_so_sanh_that_bai,00256$
;	include/xu_ly_tin_nhan.c:186: baocaosms(CHINH,"\rbao cao thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00256$:
;	include/xu_ly_tin_nhan.c:188: baocaosms(CHINH,"\rbao cao thanh cong\rPhone phu gui lenh");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_89
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:189: baocaosms(PHU,"\rbao cao thanh cong");
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_88
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:191: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:193: case 'S':
00259$:
;	include/xu_ly_tin_nhan.c:195: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01808$
	ljmp	00479$
01808$:
;	include/xu_ly_tin_nhan.c:196: if(lenh_sms[4]=='y' || lenh_sms[4]=='Y' || lenh_sms[4]=='D' || lenh_sms[4]=='d'){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x79,01809$
	sjmp	00281$
01809$:
	cjne	r7,#0x59,01810$
	sjmp	00281$
01810$:
	cjne	r7,#0x44,01811$
	sjmp	00281$
01811$:
	cjne	r7,#0x64,00282$
00281$:
;	include/xu_ly_tin_nhan.c:197: baocaosms(CHINH,"\rreset bo dieu khien");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_90
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:198: EA=0;
;	assignBit
	clr	_EA
;	include/xu_ly_tin_nhan.c:199: gsm_pw = 0;
;	assignBit
	clr	_P20
;	include/xu_ly_tin_nhan.c:200: IAP_ghibyte(NORRESET_EEPROM,0);
	mov	_IAP_ghibyte_PARM_2,#0x00
	mov	dptr,#0x0005
	lcall	_IAP_ghibyte
;	include/xu_ly_tin_nhan.c:201: RingRelay = 1;
;	assignBit
	setb	_P23
;	include/xu_ly_tin_nhan.c:202: delay_ms(4000);
	mov	dptr,#0x0fa0
	lcall	_delay_ms
;	include/xu_ly_tin_nhan.c:203: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
	ljmp	00479$
00282$:
;	include/xu_ly_tin_nhan.c:206: else if(lenh_sms[4]=='g' || lenh_sms[4]=='G'){
	cjne	r7,#0x67,01814$
	sjmp	00277$
01814$:
	cjne	r7,#0x47,00278$
00277$:
;	include/xu_ly_tin_nhan.c:207: if(lenh_sms[8]>47 && lenh_sms[8]<58){
	mov	dptr,#(_lenh_sms + 0x0008)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x2f
	jnc	00270$
	cjne	r6,#0x3a,01818$
01818$:
	jnc	00270$
;	include/xu_ly_tin_nhan.c:208: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:209: ngay_reset_con_lai = eeprom_buf[NGAYRESET_EEPROM] = lenh_sms[8]-'0';
	mov	dptr,#(_lenh_sms + 0x0008)
	movx	a,@dptr
	add	a,#0xd0
	mov	r6,a
	mov	dptr,#(_eeprom_buf + 0x0003)
	movx	@dptr,a
	mov	dptr,#_ngay_reset_con_lai
	mov	a,r6
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:210: if (lenh_sms[10]>47 && lenh_sms[10]<51 && lenh_sms[11]>47 && lenh_sms[11]<58){
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x2f
	jnc	00265$
	cjne	r6,#0x33,01821$
01821$:
	jnc	00265$
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x2f
	jnc	00265$
	cjne	r5,#0x3a,01824$
01824$:
	jnc	00265$
;	include/xu_ly_tin_nhan.c:211: giodelta = (lenh_sms[10] - '0')*10 + lenh_sms[11] - '0';
	mov	a,r6
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	add	a,r5
	add	a,#0xd0
	mov	r6,a
;	include/xu_ly_tin_nhan.c:212: if(giodelta<24)
	cjne	r6,#0x18,01826$
01826$:
	jnc	00265$
;	include/xu_ly_tin_nhan.c:213: eeprom_buf[GIORESET_EEPROM] = giodelta;
	mov	dptr,#(_eeprom_buf + 0x0004)
	mov	a,r6
	movx	@dptr,a
00265$:
;	include/xu_ly_tin_nhan.c:215: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:216: baocaosms(CHINH,"\rdat reset thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_91
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00270$:
;	include/xu_ly_tin_nhan.c:219: baocaosms(CHINH,"\rdat reset khong hop le");   
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_92
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:220: break;
	ljmp	00479$
00278$:
;	include/xu_ly_tin_nhan.c:224: else if(lenh_sms[4] == 'i' || lenh_sms[4] == 'I'){
	cjne	r7,#0x69,01828$
	sjmp	00273$
01828$:
	cjne	r7,#0x49,00274$
00273$:
;	include/xu_ly_tin_nhan.c:225: baocaosms(CHINH,"\rreset gsm sau10s");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_93
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:226: gsm_pw = 0;
;	assignBit
	clr	_P20
	ljmp	00479$
00274$:
;	include/xu_ly_tin_nhan.c:227: }else baocaosms(CHINH,"\rlenh reset khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_94
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:232: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:247: case 'E':
00288$:
;	include/xu_ly_tin_nhan.c:248: if(phone_chinh_so_sanh_that_bai)break;
	jnb	_phone_chinh_so_sanh_that_bai,01831$
	ljmp	00479$
01831$:
;	include/xu_ly_tin_nhan.c:249: if(lenh_sms[4]=='X' || lenh_sms[4]=='x'){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x58,01832$
	sjmp	00315$
01832$:
	cjne	r7,#0x78,00316$
00315$:
;	include/xu_ly_tin_nhan.c:250: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:251: eeprom_buf[TATMODEN_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0007)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:252: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:253: baocaoden(CHINH,"\rxoa gio den thanh cong");
;	assignBit
	setb	_baocaoden_PARM_1
	mov	dptr,#___str_95
	mov	b,#0x80
	lcall	_baocaoden
	ljmp	00479$
00316$:
;	include/xu_ly_tin_nhan.c:256: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:257: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:258: eeprom_buf[TATMODEN_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0007)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:259: for(i=4;i<75;i+=10){
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x04
	movx	@dptr,a
00488$:
;	include/xu_ly_tin_nhan.c:260: if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	mov	r7,a
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x2f
	jc	01835$
	ljmp	00292$
01835$:
	cjne	r6,#0x33,01836$
01836$:
	jc	01837$
	ljmp	00292$
01837$:
	mov	ar5,r7
	mov	r7,#0x00
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01838$
	ljmp	00292$
01838$:
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x3a,01839$
01839$:
	jc	01840$
	ljmp	00292$
01840$:
;	include/xu_ly_tin_nhan.c:261: lenh_sms[i+2]>47 && lenh_sms[i+2]<54 && lenh_sms[i+3]>47 && lenh_sms[i+3]<58 &&
	mov	a,#0x02
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01841$
	ljmp	00292$
01841$:
	mov	a,#0x02
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x36,01842$
01842$:
	jc	01843$
	ljmp	00292$
01843$:
	mov	a,#0x03
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01844$
	ljmp	00292$
01844$:
	mov	a,#0x03
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x3a,01845$
01845$:
	jc	01846$
	ljmp	00292$
01846$:
;	include/xu_ly_tin_nhan.c:262: lenh_sms[i+5]>47 && lenh_sms[i+5]<51 && lenh_sms[i+6]>47 && lenh_sms[i+6]<58 &&
	mov	a,#0x05
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01847$
	ljmp	00292$
01847$:
	mov	a,#0x05
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x33,01848$
01848$:
	jc	01849$
	ljmp	00292$
01849$:
	mov	a,#0x06
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01850$
	ljmp	00292$
01850$:
	mov	a,#0x06
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x3a,01851$
01851$:
	jc	01852$
	ljmp	00292$
01852$:
;	include/xu_ly_tin_nhan.c:263: lenh_sms[i+7]>47 && lenh_sms[i+7]<54 && lenh_sms[i+8]>47 && lenh_sms[i+8]<58 &&
	mov	a,#0x07
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01853$
	ljmp	00292$
01853$:
	mov	a,#0x07
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x36,01854$
01854$:
	jc	01855$
	ljmp	00292$
01855$:
	mov	a,#0x08
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x2f
	jc	01856$
	ljmp	00292$
01856$:
	mov	a,#0x08
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x3a,01857$
01857$:
	jc	01858$
	ljmp	00292$
01858$:
;	include/xu_ly_tin_nhan.c:264: lenh_sms[i]*10+lenh_sms[i+1]<552 && lenh_sms[i+5]*10+lenh_sms[i+6]<552){
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar6
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r6,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,#0x00
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x28
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	pop	ar6
	jc	01859$
	ljmp	00292$
01859$:
	push	ar6
	mov	a,#0x05
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r6,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,#0x00
	add	a,r3
	mov	r3,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x28
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	pop	ar6
	jc	01860$
	ljmp	00292$
01860$:
;	include/xu_ly_tin_nhan.c:265: eeprom_buf[TATMODEN_EEPROM+(i-4)/5+1] = ((lenh_sms[i] -'0')*10 + lenh_sms[i+1] -'0')*6 + lenh_sms[i+2]-'0';
	mov	a,r5
	add	a,#0xfc
	mov	dpl,a
	mov	a,r7
	addc	a,#0xff
	mov	dph,a
	mov	__divsint_PARM_2,#0x05
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x08
	add	a,r3
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r4
	add	a,#_eeprom_buf
	mov	_xu_ly_tin_nhan_sloc6_1_0,a
	mov	a,r2
	addc	a,#(_eeprom_buf >> 8)
	mov	(_xu_ly_tin_nhan_sloc6_1_0 + 1),a
	mov	a,r6
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	_xu_ly_tin_nhan_sloc7_1_0,a
	mov	a,#0x01
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r6,a
	mov	a,r4
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r6
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,_xu_ly_tin_nhan_sloc7_1_0
	add	a,#0xd0
	mov	b,#0x06
	mul	ab
	mov	r6,a
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,r6
	add	a,#0xd0
	mov	dpl,_xu_ly_tin_nhan_sloc6_1_0
	mov	dph,(_xu_ly_tin_nhan_sloc6_1_0 + 1)
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:266: eeprom_buf[TATMODEN_EEPROM+(i-4)/5+2] = ((lenh_sms[i+5]-'0')*10 + lenh_sms[i+6]-'0')*6 + lenh_sms[i+7]-'0';
	mov	a,#0x09
	add	a,r3
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r3
	add	a,#_eeprom_buf
	mov	r3,a
	mov	a,r6
	addc	a,#(_eeprom_buf >> 8)
	mov	r6,a
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	_xu_ly_tin_nhan_sloc7_1_0,a
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r4
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,_xu_ly_tin_nhan_sloc7_1_0
	add	a,#0xd0
	mov	b,#0x06
	mul	ab
	mov	r4,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r5
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,r4
	add	a,#0xd0
	mov	dpl,r3
	mov	dph,r6
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:267: eeprom_buf[TATMODEN_EEPROM]+=2;
	mov	dptr,#(_eeprom_buf + 0x0007)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	mov	dptr,#(_eeprom_buf + 0x0007)
	mov	a,r7
	movx	@dptr,a
	sjmp	00489$
00292$:
;	include/xu_ly_tin_nhan.c:269: else i = 75;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	mov	a,#0x4b
	movx	@dptr,a
00489$:
;	include/xu_ly_tin_nhan.c:259: for(i=4;i<75;i+=10){
	mov	dptr,#_xu_ly_tin_nhan_i_65537_185
	movx	a,@dptr
	add	a,#0x0a
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x4b,01861$
01861$:
	jnc	01862$
	ljmp	00488$
01862$:
;	include/xu_ly_tin_nhan.c:271: if(eeprom_buf[TATMODEN_EEPROM]){
	mov	dptr,#(_eeprom_buf + 0x0007)
	movx	a,@dptr
	jz	00313$
;	include/xu_ly_tin_nhan.c:272: IAP_xoasector(SECTOR1);
	mov	dptr,#0x0000
	lcall	_IAP_xoasector
;	include/xu_ly_tin_nhan.c:273: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:274: baocaoden(CHINH,"\rlenh den thanh cong");
;	assignBit
	setb	_baocaoden_PARM_1
	mov	dptr,#___str_96
	mov	b,#0x80
	lcall	_baocaoden
	ljmp	00479$
00313$:
;	include/xu_ly_tin_nhan.c:276: }else baocaosms(CHINH,"\rthong so den khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_97
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:279: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:281: case 'P':
00320$:
;	include/xu_ly_tin_nhan.c:282: if(!phone_chinh_so_sanh_that_bai){
	jnb	_phone_chinh_so_sanh_that_bai,01864$
	ljmp	00479$
01864$:
;	include/xu_ly_tin_nhan.c:283: if(!(eep_mp3%4)){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jnz	00372$
;	include/xu_ly_tin_nhan.c:284: baocaosms(CHINH,"\rKhong Co Module Mp3");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_98
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00372$:
;	include/xu_ly_tin_nhan.c:286: else if(lenh_sms[5]=='T' || lenh_sms[5]=='t'){
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x54,01867$
	sjmp	00367$
01867$:
	cjne	r7,#0x74,00368$
00367$:
;	include/xu_ly_tin_nhan.c:287: if(mp3_playing) mp3_play(9,0,0); //mp3_stop() TODO
	jnb	_P12,00322$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00322$:
;	include/xu_ly_tin_nhan.c:288: AmplyRelay = 0;
;	assignBit
	clr	_P42
;	include/xu_ly_tin_nhan.c:289: baocaosms(CHINH,"\rDung Mp3");    
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_99
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00368$:
;	include/xu_ly_tin_nhan.c:291: else if(lenh_sms[5]=='N' || lenh_sms[5]=='n'){
	cjne	r7,#0x4e,01871$
	sjmp	00363$
01871$:
	cjne	r7,#0x6e,00364$
00363$:
;	include/xu_ly_tin_nhan.c:292: if(eep_mp3%4==1){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r5,a
	mov	r6,#0x00
	cjne	r5,#0x01,00324$
	cjne	r6,#0x00,00324$
;	include/xu_ly_tin_nhan.c:293: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:294: eeprom_buf[MP3_EEPROM] += 1;
	mov	dptr,#(_eeprom_buf + 0x0010)
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,r6
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:295: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:296: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	include/xu_ly_tin_nhan.c:297: mp3_hour= 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/xu_ly_tin_nhan.c:298: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
00324$:
;	include/xu_ly_tin_nhan.c:300: baocaosms(CHINH,"\rBat mp3");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_100
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00364$:
;	include/xu_ly_tin_nhan.c:301: }else if(lenh_sms[5]=='F' || lenh_sms[5]=='f'){
	cjne	r7,#0x46,01876$
	sjmp	00359$
01876$:
	cjne	r7,#0x66,00360$
00359$:
;	include/xu_ly_tin_nhan.c:302: if(eep_mp3%4==2){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r5,a
	mov	r6,#0x00
	cjne	r5,#0x02,00328$
	cjne	r6,#0x00,00328$
;	include/xu_ly_tin_nhan.c:303: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00326$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00326$:
;	include/xu_ly_tin_nhan.c:304: AmplyRelay = 0;
;	assignBit
	clr	_P42
;	include/xu_ly_tin_nhan.c:305: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:306: eeprom_buf[MP3_EEPROM] -= 1;
	mov	dptr,#(_eeprom_buf + 0x0010)
	movx	a,@dptr
	mov	r6,a
	dec	r6
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,r6
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:307: IAP_ghisector1();
	lcall	_IAP_ghisector1
00328$:
;	include/xu_ly_tin_nhan.c:309: baocaosms(CHINH,"\rTat mp3");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_101
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00360$:
;	include/xu_ly_tin_nhan.c:310: }else if(lenh_sms[4]>47 && lenh_sms[4]<51 && lenh_sms[5]>47 && lenh_sms[5]<58 &&
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x2f
	jc	01882$
	ljmp	00338$
01882$:
	cjne	r6,#0x33,01883$
01883$:
	jc	01884$
	ljmp	00338$
01884$:
	mov	a,r7
	add	a,#0xff - 0x2f
	jc	01885$
	ljmp	00338$
01885$:
	cjne	r7,#0x3a,01886$
01886$:
	jc	01887$
	ljmp	00338$
01887$:
;	include/xu_ly_tin_nhan.c:311: lenh_sms[6]>47 && lenh_sms[6]<54 && (lenh_sms[7]==48 || lenh_sms[7]==53) &&
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01888$
	ljmp	00338$
01888$:
	cjne	r7,#0x36,01889$
01889$:
	jc	01890$
	ljmp	00338$
01890$:
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,01891$
	sjmp	00347$
01891$:
	cjne	r7,#0x35,01892$
	sjmp	01893$
01892$:
	ljmp	00338$
01893$:
00347$:
;	include/xu_ly_tin_nhan.c:312: lenh_sms[9]>47 && lenh_sms[9]<52 && lenh_sms[10]>47 && lenh_sms[10]<58 &&
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01894$
	ljmp	00338$
01894$:
	cjne	r7,#0x34,01895$
01895$:
	jc	01896$
	ljmp	00338$
01896$:
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01897$
	ljmp	00338$
01897$:
	cjne	r7,#0x3a,01898$
01898$:
	jc	01899$
	ljmp	00338$
01899$:
;	include/xu_ly_tin_nhan.c:313: lenh_sms[11]>47 && lenh_sms[11]<50 && lenh_sms[12]>47 && lenh_sms[12]<58 &&
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01900$
	ljmp	00338$
01900$:
	cjne	r7,#0x32,01901$
01901$:
	jc	01902$
	ljmp	00338$
01902$:
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01903$
	ljmp	00338$
01903$:
	cjne	r7,#0x3a,01904$
01904$:
	jc	01905$
	ljmp	00338$
01905$:
;	include/xu_ly_tin_nhan.c:314: lenh_sms[13]>47 && lenh_sms[13]<58 && lenh_sms[14]>47 && lenh_sms[14]<58){
	mov	dptr,#(_lenh_sms + 0x000d)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01906$
	ljmp	00338$
01906$:
	cjne	r7,#0x3a,01907$
01907$:
	jc	01908$
	ljmp	00338$
01908$:
	mov	dptr,#(_lenh_sms + 0x000e)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x2f
	jc	01909$
	ljmp	00338$
01909$:
	cjne	r7,#0x3a,01910$
01910$:
	jc	01911$
	ljmp	00338$
01911$:
;	include/xu_ly_tin_nhan.c:315: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00330$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
00330$:
;	include/xu_ly_tin_nhan.c:316: if(!mp3_playing){
	jnb	_P12,01913$
	ljmp	00335$
01913$:
;	include/xu_ly_tin_nhan.c:317: AmplyRelay = 1;
;	assignBit
	setb	_P42
;	include/xu_ly_tin_nhan.c:318: u8 nam = (lenh_sms[13]-'0')*10+lenh_sms[14]-'0';
	mov	dptr,#(_lenh_sms + 0x000d)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x000e)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	r7,a
;	include/xu_ly_tin_nhan.c:319: u16 check = (23*((lenh_sms[11]-'0')*10+lenh_sms[12]-'0')/9 + ((lenh_sms[9]-'0')*10+lenh_sms[10]-'0') + 
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov	r5,#0x00
	add	a,#0xd0
	mov	__mulint_PARM_2,a
	mov	a,r5
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x0017
	push	ar6
	push	ar5
	lcall	__mulint
	mov	__divsint_PARM_2,#0x09
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	add	a,#0xd1
	mov	r3,a
	mov	a,#0xff
	addc	a,b
	mov	r4,a
	clr	c
	mov	a,#0x02
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00498$
	mov	a,#0x03
	anl	a,r7
	mov	r6,#0x00
	orl	a,r6
	cjne	a,#0x01,01915$
01915$:
	mov  _xu_ly_tin_nhan_sloc8_1_0,c
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	sjmp	00499$
00498$:
	mov	r5,#0x02
	mov	r6,#0x00
00499$:
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	r6,#0x00
	mov	a,r7
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	mov	r6,#0x00
	add	a,#0xd0
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,r3
	mov	r6,a
	mov	a,r7
	addc	a,r4
	mov	r7,a
;	include/xu_ly_tin_nhan.c:321: mp3_play(eep_mp3>3?check%7+1:10,(lenh_sms[4]-'0')*10+lenh_sms[5]-'0',(lenh_sms[6]-'0')*10+lenh_sms[7]-'0');
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	00500$
	mov	__moduint_PARM_2,#0x07
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	inc	r6
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00501$
00500$:
	mov	r6,#0x0a
	mov	r7,#0x00
00501$:
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	_mp3_play_PARM_2,a
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	add	a,r7
	add	a,#0xd0
	mov	_mp3_play_PARM_3,a
	mov	dpl,r6
	lcall	_mp3_play
;	include/xu_ly_tin_nhan.c:322: delay_ms(1500);
	mov	dptr,#0x05dc
	lcall	_delay_ms
;	include/xu_ly_tin_nhan.c:323: if(mp3_playing) baocaosms(CHINH,"\rTest mp3 thanh cong");
	jnb	_P12,00332$
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_102
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00332$:
;	include/xu_ly_tin_nhan.c:324: else baocaosms(CHINH,"\rkhong dung gio phat hoac mp3 loi");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_103
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00335$:
;	include/xu_ly_tin_nhan.c:325: }else baocaosms(CHINH,"\rMp3 dang choi nhac nen chua the test");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_104
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00338$:
;	include/xu_ly_tin_nhan.c:326: }else baocaosms(CHINH,"\rLenh MP3 khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_105
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:328: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:330: case 'I':
00377$:
;	include/xu_ly_tin_nhan.c:331: if(!phone_chinh_so_sanh_that_bai){
	jnb	_phone_chinh_so_sanh_that_bai,01918$
	ljmp	00479$
01918$:
;	include/xu_ly_tin_nhan.c:332: if(lenh_sms[4]=='B' || lenh_sms[4]=='b' || lenh_sms[5]=='N' || lenh_sms[5]=='n' ){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x42,01919$
	sjmp	00383$
01919$:
	cjne	r7,#0x62,01920$
	sjmp	00383$
01920$:
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x4e,01921$
	sjmp	00383$
01921$:
	cjne	r6,#0x6e,00384$
00383$:
;	include/xu_ly_tin_nhan.c:333: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:334: eeprom_buf[GPSON_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:335: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:337: gsm_thietlapngaygiothuc();
	lcall	_gsm_thietlapngaygiothuc
;	include/xu_ly_tin_nhan.c:338: baocaosms(CHINH,"\rBat GPS");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_106
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00479$
00384$:
;	include/xu_ly_tin_nhan.c:340: else if(lenh_sms[4]=='T' || lenh_sms[4]=='t' || lenh_sms[5]=='B' || lenh_sms[5]=='b' ){
	cjne	r7,#0x54,01924$
	sjmp	00378$
01924$:
	cjne	r7,#0x74,01925$
	sjmp	00378$
01925$:
	cjne	r6,#0x42,01926$
	sjmp	00378$
01926$:
	cjne	r6,#0x62,01927$
	sjmp	01928$
01927$:
	ljmp	00479$
01928$:
00378$:
;	include/xu_ly_tin_nhan.c:341: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:342: eeprom_buf[GPSON_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0002)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:343: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:344: GPS_time = 0;
;	assignBit
	clr	_GPS_time
;	include/xu_ly_tin_nhan.c:345: baocaosms(CHINH,"\rTat GPS"); 
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_107
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:348: break;
	ljmp	00479$
;	include/xu_ly_tin_nhan.c:350: case 'T':
00392$:
;	include/xu_ly_tin_nhan.c:351: if(!phone_chinh_so_sanh_that_bai){
	jnb	_phone_chinh_so_sanh_that_bai,01929$
	ljmp	00474$
01929$:
;	include/xu_ly_tin_nhan.c:352: if(lenh_sms[3]=='G' || lenh_sms[3]=='g' || lenh_sms[3]=='C' || lenh_sms[3]=='c' ){
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x47,01930$
	sjmp	00467$
01930$:
	cjne	r7,#0x67,01931$
	sjmp	00467$
01931$:
	cjne	r7,#0x43,01932$
	sjmp	00467$
01932$:
	cjne	r7,#0x63,00468$
00467$:
;	include/xu_ly_tin_nhan.c:353: goi_dien_thoai = 1;
;	assignBit
	setb	_goi_dien_thoai
;	include/xu_ly_tin_nhan.c:354: baocaosms(CHINH,"\rDang goi dien thoai ve ...."); 
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_108
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00468$:
;	include/xu_ly_tin_nhan.c:356: else if(lenh_sms[3]=='+' && lenh_sms[4]=='8' && lenh_sms[5]=='4'){
	cjne	r7,#0x2b,01935$
	sjmp	01936$
01935$:
	ljmp	00463$
01936$:
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x38,01937$
	sjmp	01938$
01937$:
	ljmp	00463$
01938$:
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x34,01939$
	sjmp	01940$
01939$:
	ljmp	00463$
01940$:
;	include/xu_ly_tin_nhan.c:357: if(lenh_sms[6]>='0' && lenh_sms[6]<='9' && lenh_sms[7]>='0' && lenh_sms[7]<='9' &&
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01941$
01941$:
	jnc	01942$
	ljmp	00397$
01942$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01943$
	ljmp	00397$
01943$:
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01944$
01944$:
	jnc	01945$
	ljmp	00397$
01945$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01946$
	ljmp	00397$
01946$:
;	include/xu_ly_tin_nhan.c:358: lenh_sms[8]>='0' && lenh_sms[8]<='9' && lenh_sms[9]>='0' && lenh_sms[9]<='9' &&
	mov	dptr,#(_lenh_sms + 0x0008)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01947$
01947$:
	jnc	01948$
	ljmp	00397$
01948$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01949$
	ljmp	00397$
01949$:
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01950$
01950$:
	jnc	01951$
	ljmp	00397$
01951$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01952$
	ljmp	00397$
01952$:
;	include/xu_ly_tin_nhan.c:359: lenh_sms[10]>='0' && lenh_sms[10]<='9' && lenh_sms[11]>='0' && lenh_sms[11]<='9' &&
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01953$
01953$:
	jnc	01954$
	ljmp	00397$
01954$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01955$
	ljmp	00397$
01955$:
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01956$
01956$:
	jnc	01957$
	ljmp	00397$
01957$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01958$
	ljmp	00397$
01958$:
;	include/xu_ly_tin_nhan.c:360: lenh_sms[12]>='0' && lenh_sms[12]<='9' && lenh_sms[13]>='0' && lenh_sms[13]<='9' &&
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01959$
01959$:
	jnc	01960$
	ljmp	00397$
01960$:
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00397$
	mov	dptr,#(_lenh_sms + 0x000d)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01962$
01962$:
	jc	00397$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00397$
;	include/xu_ly_tin_nhan.c:361: lenh_sms[14]>='0' && lenh_sms[14]<='9'){
	mov	dptr,#(_lenh_sms + 0x000e)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01965$
01965$:
	jc	00397$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00397$
;	include/xu_ly_tin_nhan.c:362: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:363: eeprom_buf[PHONEPHU_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0011)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:364: for(i=1;i<10;i++)
	mov	r6,#0x01
00490$:
;	include/xu_ly_tin_nhan.c:365: eeprom_buf[PHONEPHU_EEPROM+i] = lenh_sms[6+i];
	mov	ar5,r6
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_eeprom_buf
	mov	r5,a
	mov	a,r4
	addc	a,#(_eeprom_buf >> 8)
	mov	r4,a
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r3
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:364: for(i=1;i<10;i++)
	inc	r6
	cjne	r6,#0x0a,01968$
01968$:
	jc	00490$
;	include/xu_ly_tin_nhan.c:366: if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 1;
	mov	dptr,#(_eeprom_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00395$
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x01
	movx	@dptr,a
00395$:
;	include/xu_ly_tin_nhan.c:367: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:368: baocaosms(CHINH,"\rghi phone phu moi thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00397$:
;	include/xu_ly_tin_nhan.c:369: }else baocaosms(CHINH,"\rthay doi phone phu khong thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00463$:
;	include/xu_ly_tin_nhan.c:371: else if(lenh_sms[3]=='0'){
	cjne	r7,#0x30,01972$
	sjmp	01973$
01972$:
	ljmp	00460$
01973$:
;	include/xu_ly_tin_nhan.c:372: if(lenh_sms[4]>='0' && lenh_sms[4]<='9' && lenh_sms[5]>='0' && lenh_sms[5]<='9' &&
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01974$
01974$:
	jnc	01975$
	ljmp	00420$
01975$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01976$
	ljmp	00420$
01976$:
	mov	dptr,#(_lenh_sms + 0x0005)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01977$
01977$:
	jnc	01978$
	ljmp	00420$
01978$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01979$
	ljmp	00420$
01979$:
;	include/xu_ly_tin_nhan.c:373: lenh_sms[6]>='0' && lenh_sms[6]<='9' && lenh_sms[7]>='0' && lenh_sms[7]<='9' &&
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01980$
01980$:
	jnc	01981$
	ljmp	00420$
01981$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01982$
	ljmp	00420$
01982$:
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01983$
01983$:
	jnc	01984$
	ljmp	00420$
01984$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01985$
	ljmp	00420$
01985$:
;	include/xu_ly_tin_nhan.c:374: lenh_sms[8]>='0' && lenh_sms[8]<='9' && lenh_sms[9]>='0' && lenh_sms[9]<='9' &&
	mov	dptr,#(_lenh_sms + 0x0008)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01986$
01986$:
	jnc	01987$
	ljmp	00420$
01987$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01988$
	ljmp	00420$
01988$:
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01989$
01989$:
	jnc	01990$
	ljmp	00420$
01990$:
	mov	a,r6
	add	a,#0xff - 0x39
	jnc	01991$
	ljmp	00420$
01991$:
;	include/xu_ly_tin_nhan.c:375: lenh_sms[10]>='0' && lenh_sms[10]<='9' && lenh_sms[11]>='0' && lenh_sms[11]<='9' &&
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01992$
01992$:
	jc	00420$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00420$
	mov	dptr,#(_lenh_sms + 0x000b)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01995$
01995$:
	jc	00420$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00420$
;	include/xu_ly_tin_nhan.c:376: lenh_sms[12]>='0' && lenh_sms[12]<='9'){
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x30,01998$
01998$:
	jc	00420$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00420$
;	include/xu_ly_tin_nhan.c:377: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:378: for(i=0;i<10;i++)
	mov	r6,#0x00
00492$:
;	include/xu_ly_tin_nhan.c:379: eeprom_buf[PHONEPHU_EEPROM+i] = lenh_sms[3+i];
	mov	ar5,r6
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_eeprom_buf
	mov	r5,a
	mov	a,r4
	addc	a,#(_eeprom_buf >> 8)
	mov	r4,a
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_lenh_sms
	mov	dpl,a
	mov	a,r3
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:378: for(i=0;i<10;i++)
	inc	r6
	cjne	r6,#0x0a,02001$
02001$:
	jc	00492$
;	include/xu_ly_tin_nhan.c:380: if(eeprom_buf[PHONEPHU_EEPROM+11]==2) eeprom_buf[PHONEPHU_EEPROM+11] = 1;
	mov	dptr,#(_eeprom_buf + 0x001c)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00418$
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x01
	movx	@dptr,a
00418$:
;	include/xu_ly_tin_nhan.c:381: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:382: baocaosms(CHINH,"\rghi phone phu moi thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_109
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00420$:
;	include/xu_ly_tin_nhan.c:383: }else baocaosms(CHINH,"\rthay doi phone phu khong thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_110
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00460$:
;	include/xu_ly_tin_nhan.c:384: }else if(lenh_sms[3]=='x' || lenh_sms[3]=='X'){
	cjne	r7,#0x78,02005$
	sjmp	00455$
02005$:
	cjne	r7,#0x58,00456$
00455$:
;	include/xu_ly_tin_nhan.c:385: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:386: eeprom_buf[PHONEPHU_EEPROM+11] = 2;
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x02
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:387: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:388: baocaosms(CHINH,"\rXoa phone phu");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_111
	mov	b,#0x80
	lcall	_baocaosms
	ljmp	00474$
00456$:
;	include/xu_ly_tin_nhan.c:389: }else if(eep_phonephu[11]==2){
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x02,00453$
;	include/xu_ly_tin_nhan.c:390: if(lenh_sms[4]=='n' || lenh_sms[4]=='N'|| lenh_sms[4]=='f'|| lenh_sms[4]=='F')
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x6e,02010$
	sjmp	00439$
02010$:
	cjne	r7,#0x4e,02011$
	sjmp	00439$
02011$:
	cjne	r7,#0x66,02012$
	sjmp	00439$
02012$:
	cjne	r7,#0x46,00474$
00439$:
;	include/xu_ly_tin_nhan.c:391: baocaosms(CHINH,"\rlenh khong thanh cong do chua khoi tao phone phu");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_112
	mov	b,#0x80
	lcall	_baocaosms
	sjmp	00474$
00453$:
;	include/xu_ly_tin_nhan.c:392: }else if(lenh_sms[4]=='N' || lenh_sms[4]=='n'){
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x4e,02015$
	sjmp	00448$
02015$:
	cjne	r7,#0x6e,00449$
00448$:
;	include/xu_ly_tin_nhan.c:393: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:394: eeprom_buf[PHONEPHU_EEPROM+11] = 1;
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x01
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:395: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:396: baocaosms(CHINH,"\rBat phone phu");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_113
	mov	b,#0x80
	lcall	_baocaosms
	sjmp	00474$
00449$:
;	include/xu_ly_tin_nhan.c:397: }else if(lenh_sms[4]=='F' || lenh_sms[4]=='f'){
	cjne	r7,#0x46,02018$
	sjmp	00444$
02018$:
	cjne	r7,#0x66,00445$
00444$:
;	include/xu_ly_tin_nhan.c:399: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
;	include/xu_ly_tin_nhan.c:400: eeprom_buf[PHONEPHU_EEPROM+11] = 0;
	mov	dptr,#(_eeprom_buf + 0x001c)
	clr	a
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:401: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	include/xu_ly_tin_nhan.c:402: baocaosms(CHINH,"\rTat phone phu");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_114
	mov	b,#0x80
	lcall	_baocaosms
	sjmp	00474$
00445$:
;	include/xu_ly_tin_nhan.c:403: }else baocaosms(CHINH,"\rLenh phone phu khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_115
	mov	b,#0x80
	lcall	_baocaosms
00474$:
;	include/xu_ly_tin_nhan.c:405: bat_phone_phu = eep_phonephu[11]&1;
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x01
;	assignBit
	mov	r7,a
	add	a,#0xff
	mov	_bat_phone_phu,c
;	include/xu_ly_tin_nhan.c:406: break;
;	include/xu_ly_tin_nhan.c:407: default:
	sjmp	00479$
00475$:
;	include/xu_ly_tin_nhan.c:408: if(phone_phu_so_sanh_that_bai)
	jnb	_phone_phu_so_sanh_that_bai,00477$
;	include/xu_ly_tin_nhan.c:409: baocaosms(CHINH,"\rLenh khong hop le");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_baocaosms
	sjmp	00479$
00477$:
;	include/xu_ly_tin_nhan.c:411: baocaosms(CHINH,"\rLenh khong hop le\rPhone phu gui lenh");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_117
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:412: baocaosms(PHU,"\rLenh khong hop le");
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_116
	mov	b,#0x80
	lcall	_baocaosms
;	include/xu_ly_tin_nhan.c:414: }
00479$:
;	include/xu_ly_tin_nhan.c:417: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/xu_ly_tin_nhan.c:418: while(lenh_sms[phutdelta])lenh_sms[phutdelta++] = 0;
	mov	r7,#0x00
00480$:
	mov	a,r7
	add	a,#_lenh_sms
	mov	r5,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00494$
	mov	a,r7
	add	a,#_lenh_sms
	mov	dpl,a
	clr	a
	addc	a,#(_lenh_sms >> 8)
	mov	dph,a
	inc	r7
	clr	a
	movx	@dptr,a
	sjmp	00480$
00494$:
;	include/xu_ly_tin_nhan.c:420: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;giotemp                   Allocated with name '_main_giotemp_65536_253'
;phuttemp                  Allocated to registers r5 
;debug_dem                 Allocated with name '_main_debug_dem_131073_263'
;mp3temp                   Allocated with name '_main_mp3temp_131073_263'
;retry                     Allocated with name '_main_retry_131073_284'
;retry                     Allocated with name '_main_retry_131073_287'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;ngaytemp                  Allocated with name '_main_ngaytemp_65536_253'
;thangtemp                 Allocated with name '_main_thangtemp_65536_253'
;namtemp                   Allocated with name '_main_namtemp_65536_253'
;thutemp                   Allocated with name '_main_thutemp_65536_253'
;check                     Allocated with name '_main_check_65536_253'
;i                         Allocated with name '_main_i_65537_254'
;------------------------------------------------------------
;	src\main.c:22: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src\main.c:23: u8 __data giotemp=0,phuttemp=0;
	mov	r7,#0x00
	mov	r6,#0x00
;	src\main.c:24: u8 __xdata  ngaytemp = 1, thangtemp=1, namtemp = 21, thutemp = 1;
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_main_thangtemp_65536_253
	movx	@dptr,a
	mov	dptr,#_main_namtemp_65536_253
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#_main_thutemp_65536_253
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:27: P0M1 = 0; P0M0 = 0xff; //port LCD -- chân xuất với điện trở kéo lên nhỏ, dòng lớn -> 20mA
;	1-genFromRTrack replaced	mov	_P0M1,#0x00
	mov	_P0M1,r7
	mov	_P0M0,#0xff
;	src\main.c:28: P1M1 = P1M0 = 0;
;	1-genFromRTrack replaced	mov	_P1M0,#0x00
	mov	_P1M0,r7
;	1-genFromRTrack replaced	mov	_P1M1,#0x00
	mov	_P1M1,r7
;	src\main.c:29: P2M1 = 0; P2M0 = 0xff; // output
;	1-genFromRTrack replaced	mov	_P2M1,#0x00
	mov	_P2M1,r7
	mov	_P2M0,#0xff
;	src\main.c:30: P3M1 = P3M0 = 0; //full compatip 8051 -- key and cam
;	1-genFromRTrack replaced	mov	_P3M0,#0x00
	mov	_P3M0,r7
;	1-genFromRTrack replaced	mov	_P3M1,#0x00
	mov	_P3M1,r7
;	src\main.c:31: P4M1 = 2; P4M0 = 0x1c;//full compatip 8051 --motor port
	mov	_P4M1,#0x02
	mov	_P4M0,#0x1c
;	src\main.c:32: P5M1 = P5M0 = 0; // full compatip 8051
;	1-genFromRTrack replaced	mov	_P5M0,#0x00
	mov	_P5M0,r7
;	1-genFromRTrack replaced	mov	_P5M1,#0x00
	mov	_P5M1,r7
;	src\main.c:33: P4 = 0;
;	1-genFromRTrack replaced	mov	_P4,#0x00
	mov	_P4,r7
;	src\main.c:34: P3 = 0xff;
	mov	_P3,#0xff
;	src\main.c:35: P2 = 0;
;	1-genFromRTrack replaced	mov	_P2,#0x00
	mov	_P2,r7
;	src\main.c:37: IP = 0x81; //priority PCA
	mov	_IP,#0x81
;	src\main.c:39: P1ASF = 8;
	mov	_P1ASF,#0x08
;	src\main.c:40: CLK_DIV = 0;
;	1-genFromRTrack replaced	mov	_CLK_DIV,#0x00
	mov	_CLK_DIV,r7
;	src\main.c:41: ADC_RES = 0;
;	1-genFromRTrack replaced	mov	_ADC_RES,#0x00
	mov	_ADC_RES,r7
;	src\main.c:42: ADC_CONTR = 0x83;
	mov	_ADC_CONTR,#0x83
;	src\main.c:43: EADC = 1;
;	assignBit
	setb	_EADC
;	src\main.c:44: EA = 1; //bat tat ca interupt
;	assignBit
	setb	_EA
;	src\main.c:47: xung_giay_check=250;
	mov	dptr,#_xung_giay_check
	mov	a,#0xfa
	movx	@dptr,a
;	src\main.c:48: so_lan_goi_dien = 0;
	mov	dptr,#_so_lan_goi_dien
	clr	a
	movx	@dptr,a
;	src\main.c:49: motor_index = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:50: phone[0]='0';
	mov	dptr,#_phone
	mov	a,#0x30
	movx	@dptr,a
;	src\main.c:53: gsm_delay_reset=10;
	mov	dptr,#_gsm_delay_reset
	mov	a,#0x0a
	movx	@dptr,a
;	src\main.c:54: phim_mode_doi = phim_back_doi = phim_cong_doi = 2;
	mov	dptr,#_phim_cong_doi
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_phim_back_doi
	movx	@dptr,a
	mov	dptr,#_phim_mode_doi
	movx	@dptr,a
;	src\main.c:55: mode = SELECT; sub_mode = GIOKIM;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:59: LCD_Init();
	push	ar7
	push	ar6
	lcall	_LCD_Init
;	src\main.c:60: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:61: LCD_guichuoi(ver);
	mov	dptr,#_ver
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:64: delay_ms(5000);
	mov	dptr,#0x1388
	lcall	_delay_ms
;	src\main.c:70: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:71: LCD_guichuoi("THIET LAP EEPROM");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:72: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
	pop	ar6
	pop	ar7
;	src\main.c:73: if(eeprom_buf[MOTOR_EEPROM]==0xff)eeprom_buf[MOTOR_EEPROM] = MOTOR_DEFAULT;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xff,00102$
	mov	dptr,#_eeprom_buf
	mov	a,#0x04
	movx	@dptr,a
00102$:
;	src\main.c:88: if(eeprom_buf[BAOCAO_EEPROM]>1)eeprom_buf[BAOCAO_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0001)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00104$
	mov	dptr,#(_eeprom_buf + 0x0001)
	clr	a
	movx	@dptr,a
00104$:
;	src\main.c:89: if(eeprom_buf[GPSON_EEPROM]>1)eeprom_buf[GPSON_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0002)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00106$
	mov	dptr,#(_eeprom_buf + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
00106$:
;	src\main.c:90: if(eeprom_buf[NGAYRESET_EEPROM]>9)eeprom_buf[NGAYRESET_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0003)
	movx	a,@dptr
	add	a,#0xff - 0x09
	jnc	00108$
	mov	dptr,#(_eeprom_buf + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
00108$:
;	src\main.c:92: if(eeprom_buf[GIORESET_EEPROM]>23)eeprom_buf[GIORESET_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0004)
	movx	a,@dptr
	add	a,#0xff - 0x17
	jnc	00110$
	mov	dptr,#(_eeprom_buf + 0x0004)
	clr	a
	movx	@dptr,a
00110$:
;	src\main.c:93: if((eeprom_buf[GIOSACXA_EEPROM]>>4) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0x0f | 0x50;
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	swap	a
	anl	a,#0x0f
	mov	r4,a
	mov	r3,#0x00
	dec	r4
	cjne	r4,#0xff,02361$
	dec	r3
02361$:
	clr	c
	mov	a,#0x08
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
	mov	a,#0x0f
	anl	a,r5
	orl	a,#0x50
	mov	r5,a
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	@dptr,a
00112$:
;	src\main.c:94: if((eeprom_buf[GIOSACXA_EEPROM] & 0x0f) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0xf0 | 0x01;	
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	r4,#0x00
	dec	r5
	cjne	r5,#0xff,02363$
	dec	r4
02363$:
	clr	c
	mov	a,#0x08
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	a,#0xf0
	anl	a,r5
	orl	a,#0x01
	mov	r5,a
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	@dptr,a
00114$:
;	src\main.c:95: i=1;
	mov	dptr,#_main_i_65537_254
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:96: if(eeprom_buf[TATMODEN_EEPROM]<9 && !(eeprom_buf[TATMODEN_EEPROM]&1))
	mov	dptr,#(_eeprom_buf + 0x0007)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x09,02365$
02365$:
	jnc	00117$
	mov	a,r5
	jb	acc.0,00117$
;	src\main.c:97: for(i=1;i<=eeprom_buf[TATMODEN_EEPROM] && eeprom_buf[TATMODEN_EEPROM+i]<144;i++);
	mov	r4,#0x01
00649$:
	clr	c
	mov	a,r5
	subb	a,r4
	jc	01097$
	mov	ar3,r4
	mov	a,#0x07
	add	a,r3
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_eeprom_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x90,02369$
02369$:
	jnc	01097$
	inc	r4
	sjmp	00649$
01097$:
	mov	dptr,#_main_i_65537_254
	mov	a,r4
	movx	@dptr,a
00117$:
;	src\main.c:98: if(i<=eeprom_buf[TATMODEN_EEPROM]){
	mov	dptr,#_main_i_65537_254
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00120$
;	src\main.c:99: eeprom_buf[TATMODEN_EEPROM] = 2;
	mov	dptr,#(_eeprom_buf + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	src\main.c:100: eeprom_buf[TATMODEN_EEPROM+1] = 36;
	mov	dptr,#(_eeprom_buf + 0x0008)
	mov	a,#0x24
	movx	@dptr,a
;	src\main.c:101: eeprom_buf[TATMODEN_EEPROM+2] = 108;
	mov	dptr,#(_eeprom_buf + 0x0009)
	mov	a,#0x6c
	movx	@dptr,a
00120$:
;	src\main.c:103: i=0;
	mov	dptr,#_main_i_65537_254
	clr	a
	movx	@dptr,a
;	src\main.c:104: if(eeprom_buf[PHONEPHU_EEPROM+11]<2 && !eeprom_buf[PHONEPHU_EEPROM+10])
	mov	dptr,#(_eeprom_buf + 0x001c)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x02,02372$
02372$:
	jnc	00123$
	mov	dptr,#(_eeprom_buf + 0x001b)
	movx	a,@dptr
;	src\main.c:105: for(i=0;i<10 && eeprom_buf[PHONEPHU_EEPROM+i]>='0' && eeprom_buf[PHONEPHU_EEPROM+i]<='9';i++);
	jnz	00123$
	mov	r5,a
00654$:
	cjne	r5,#0x0a,02375$
02375$:
	jnc	01098$
	mov	ar4,r5
	mov	a,#0x11
	add	a,r4
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_eeprom_buf
	mov	dpl,a
	mov	a,r2
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x30,02377$
02377$:
	jc	01098$
	mov	a,#0x11
	add	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#_eeprom_buf
	mov	dpl,a
	mov	a,r3
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x39
	jc	01098$
	inc	r5
	sjmp	00654$
01098$:
	mov	dptr,#_main_i_65537_254
	mov	a,r5
	movx	@dptr,a
00123$:
;	src\main.c:106: if(i<10){
	mov	dptr,#_main_i_65537_254
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,02380$
02380$:
	jnc	00126$
;	src\main.c:107: eeprom_buf[PHONEPHU_EEPROM+10] = 0;
	mov	dptr,#(_eeprom_buf + 0x001b)
	clr	a
	movx	@dptr,a
;	src\main.c:108: eeprom_buf[PHONEPHU_EEPROM+11] = 2;
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x02
	movx	@dptr,a
00126$:
;	src\main.c:111: if(eeprom_buf[LOITHESIM_EEPROM]>24)eeprom_buf[LOITHESIM_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x001d)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x18
	jnc	00128$
	mov	dptr,#(_eeprom_buf + 0x001d)
	clr	a
	movx	@dptr,a
00128$:
;	src\main.c:112: if(mp3_playing) eeprom_buf[MP3_EEPROM] &= 4;
	jnb	_P12,00135$
	mov	dptr,#(_eeprom_buf + 0x0010)
	movx	a,@dptr
	anl	a,#0x04
	mov	r5,a
	movx	@dptr,a
	sjmp	00136$
00135$:
;	src\main.c:113: else if(eeprom_buf[MP3_EEPROM]>6)eeprom_buf[MP3_EEPROM] = 2;
	mov	dptr,#(_eeprom_buf + 0x0010)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x06
	jnc	00132$
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00136$
00132$:
;	src\main.c:114: else if(!(eeprom_buf[MP3_EEPROM]&3))eeprom_buf[MP3_EEPROM] += 2;
	mov	a,r5
	anl	a,#0x03
	jnz	00136$
	inc	r5
	inc	r5
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,r5
	movx	@dptr,a
00136$:
;	src\main.c:115: if((eeprom_buf[DEBUG_EEPROM]&15) -1 > 10)eeprom_buf[DEBUG_EEPROM] = 0x3b; 	
	mov	dptr,#(_eeprom_buf + 0x001e)
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	r4,#0x00
	dec	r5
	cjne	r5,#0xff,02387$
	dec	r4
02387$:
	clr	c
	mov	a,#0x0a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00138$
	mov	dptr,#(_eeprom_buf + 0x001e)
	mov	a,#0x3b
	movx	@dptr,a
00138$:
;	src\main.c:116: if(eeprom_buf[CAM_EEPROM]>1)eeprom_buf[CAM_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x001f)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00140$
	mov	dptr,#(_eeprom_buf + 0x001f)
	mov	a,#0x01
	movx	@dptr,a
00140$:
;	src\main.c:118: IAP_ghisector1();
	push	ar7
	push	ar6
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
;	src\main.c:119: so_motor = (eep_motor & 3) + 1;
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x03
	anl	a,r5
	mov	dptr,#_so_motor
	inc	a
	movx	@dptr,a
;	src\main.c:120: may_dc   = (eep_motor & 4);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_may_dc,c
;	src\main.c:121: motorDir = atmel_phat = (eep_motor & 8);
	clr	a
	movc	a,@a+dptr
	mov	c,acc[3]
	clr	a
	rlc	a
;	assignBit
	add	a,#0xff
;	assignBit
	mov  _atmel_phat,c
	mov	_motorDir,c
;	src\main.c:122: motor_dung  = (eep_motor & 16);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_motor_dung,c
;	src\main.c:123: motor_debug = (eep_motor & 32);
	clr	a
	movc	a,@a+dptr
	mov	c,acc[5]
	clr	a
	rlc	a
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_motor_debug,c
;	src\main.c:124: if(!may_dc && !atmel_phat) toc_do_motor_step = (eep_motor & 192) >> 64;
	jb	_may_dc,00142$
	jb	_atmel_phat,00142$
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xc0
	clr	a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	dptr,#_toc_do_motor_step
	mov	a,r5
	movx	@dptr,a
	sjmp	00143$
00142$:
;	src\main.c:125: else toc_do_motor_step = 0;
	mov	dptr,#_toc_do_motor_step
	clr	a
	movx	@dptr,a
00143$:
;	src\main.c:127: sms_on = (eep_debug & 96)>>5;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0x60
	clr	a
	rr	a
	xch	a,r5
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r5
	xch	a,r5
	anl	a,#0x07
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	jnb	acc.2,02392$
	orl	a,#0xf8
02392$:
	mov	r4,a
	mov	dptr,#_sms_on
	mov	a,r5
	movx	@dptr,a
;	src\main.c:128: if(sms_on==2) for(i=0;i<11;i++)phone_chinh[i]= phone2[i];
	cjne	r5,#0x02,00821$
	mov	r5,#0x00
00656$:
	mov	a,r5
	add	a,#_phone_chinh
	mov	r3,a
	clr	a
	addc	a,#(_phone_chinh >> 8)
	mov	r4,a
	mov	a,r5
	mov	dptr,#_phone2
	movc	a,@a+dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x0b,02395$
02395$:
	jc	00656$
;	src\main.c:129: else for(i=0;i<11;i++)phone_chinh[i]= phone1[i];
	sjmp	00149$
00821$:
	mov	r5,#0x00
00658$:
	mov	a,r5
	add	a,#_phone_chinh
	mov	r3,a
	clr	a
	addc	a,#(_phone_chinh >> 8)
	mov	r4,a
	mov	a,r5
	mov	dptr,#_phone1
	movc	a,@a+dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x0b,02397$
02397$:
	jc	00658$
00149$:
;	src\main.c:130: sim_test_sec = 0;
	mov	dptr,#_sim_test_sec
	clr	a
	movx	@dptr,a
;	src\main.c:131: max_second = (eep_debug & 15)<6?(eep_debug & 15) + 1 : (60/(12-(eep_debug & 15)));
	mov	dptr,#_eep_debug
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,#0x06
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00662$
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x0f
	anl	a,r5
	inc	a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00663$
00662$:
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	anl	ar3,#0x0f
	mov	r2,#0x00
	mov	a,#0x0c
	clr	c
	subb	a,r3
	mov	__divsint_PARM_2,a
	clr	a
	subb	a,r2
	mov	(__divsint_PARM_2 + 1),a
	mov	dptr,#0x003c
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
00663$:
	mov	dptr,#_max_second
	mov	a,r4
	movx	@dptr,a
;	src\main.c:132: if(!(eep_debug & 16) || max_second<60) sim_test_sec = 61;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	jnb	acc.4,00150$
	cjne	r4,#0x3c,02401$
02401$:
	jnc	00151$
00150$:
	mov	dptr,#_sim_test_sec
	mov	a,#0x3d
	movx	@dptr,a
00151$:
;	src\main.c:134: thoi_gian_doi_cam_chuan = (eep_motor & 64)?255:(may_dc?30:10);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	jnb	acc.6,00664$
	mov	r4,#0xff
	mov	r5,#0x00
	sjmp	00665$
00664$:
	jnb	_may_dc,00666$
	mov	r2,#0x1e
	mov	r3,#0x00
	sjmp	00667$
00666$:
	mov	r2,#0x0a
	mov	r3,#0x00
00667$:
	mov	ar4,r2
	mov	ar5,r3
00665$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	mov	a,r4
	movx	@dptr,a
;	src\main.c:136: switch(so_motor){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,02405$
	ljmp	00165$
02405$:
	cjne	r5,#0x02,02406$
	sjmp	00161$
02406$:
	cjne	r5,#0x03,02407$
	sjmp	00157$
02407$:
	cjne	r5,#0x04,02408$
	sjmp	02409$
02408$:
	ljmp	00170$
02409$:
;	src\main.c:137: case 4: thoi_gian_doi_doc_cam[3]=thoi_gian_doi_cam_chuan;
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0003)
	mov	a,r4
	movx	@dptr,a
;	src\main.c:138: if(eep_phut4>59 || eep_gio4>11)
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00154$
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00155$
00154$:
;	src\main.c:139: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00155$:
;	src\main.c:140: phut[3] = eep_phut4; 
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0003),a
;	src\main.c:141: gio[3] = eep_gio4;
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0003),a
;	src\main.c:142: case 3: thoi_gian_doi_doc_cam[2]=thoi_gian_doi_cam_chuan;
00157$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	@dptr,a
;	src\main.c:143: if(eep_phut3>59 || eep_gio3>11)
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00158$
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00159$
00158$:
;	src\main.c:144: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00159$:
;	src\main.c:145: phut[2] = eep_phut3; gio[2] = eep_gio3;
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0002),a
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0002),a
;	src\main.c:146: case 2: thoi_gian_doi_doc_cam[1]=thoi_gian_doi_cam_chuan;
00161$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	@dptr,a
;	src\main.c:147: if(eep_phut2>59 || eep_gio2>11)
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00162$
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00163$
00162$:
;	src\main.c:148: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00163$:
;	src\main.c:149: phut[1] = eep_phut2; gio[1] = eep_gio2;
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0001),a
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0001),a
;	src\main.c:150: case 1: thoi_gian_doi_doc_cam[0]=thoi_gian_doi_cam_chuan;
00165$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	@dptr,a
;	src\main.c:151: if(eep_phut1>59 || eep_gio1>11)
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00166$
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00167$
00166$:
;	src\main.c:152: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00167$:
;	src\main.c:153: phut[0] = eep_phut1; gio[0] = eep_gio1;
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	mov	_phut,a
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov	_gio,a
;	src\main.c:155: }
00170$:
;	src\main.c:157: ChargeRelay = 1;
;	assignBit
	setb	_P22
;	src\main.c:160: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:161: LCD_guichuoi("POWER ON SIM800 ");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:162: gsm_init();
	lcall	_gsm_init
;	src\main.c:166: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:167: LCD_guichuoi("  KHOI TAO MP3  ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:168: if(eep_mp3%4==2){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00172$
	cjne	r5,#0x00,00172$
;	src\main.c:169: mp3_serial_init();
	push	ar7
	push	ar6
	lcall	_mp3_serial_init
	pop	ar6
	pop	ar7
;	src\main.c:170: mp3_status= mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	src\main.c:171: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:172: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
00172$:
;	src\main.c:176: da_gui_bao_cao = 1;
;	assignBit
	setb	_da_gui_bao_cao
;	src\main.c:177: ngay_reset_con_lai = eep_ngayreset;
	mov	dptr,#_eep_ngayreset
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ngay_reset_con_lai
	movx	@dptr,a
;	src\main.c:180: PCA_Timer_init();
	push	ar7
	push	ar6
	lcall	_PCA_Timer_init
	pop	ar6
	pop	ar7
;	src\main.c:187: if(phim_mode_nhan && phim_back_nhan && phim_cong_nhan){
	jb	_phim_mode_nhan,02420$
	ljmp	00251$
02420$:
	jb	_phim_back_nhan,02421$
	ljmp	00251$
02421$:
	jb	_phim_cong_nhan,02422$
	ljmp	00251$
02422$:
;	src\main.c:188: u8 debug_dem = 0;
	mov	_main_debug_dem_131073_263,#0x00
;	src\main.c:190: u8 mp3temp = eep_mp3;
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov	_main_mp3temp_131073_263,a
;	src\main.c:191: __bit debug = 0;
;	assignBit
	clr	_main_debug_131073_263
;	src\main.c:192: giotemp = eep_debug;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	_main_giotemp_65536_253,a
;	src\main.c:194: i = eep_motor;
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	mov	r2,a
;	src\main.c:196: phim_mode_nhan = phim_back_nhan = phim_cong_nhan = 0;
;	assignBit
	clr	_phim_cong_nhan
;	assignBit
	clr	_phim_back_nhan
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:197: LCD_guichuoi("\200 NHA PHAT TRIEN");
	mov	dptr,#___str_121
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:198: LCD_guichuoi("\300MAY:");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:199: LCD_guidulieu(so_motor+'0');
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:200: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00668$
	mov	_main_sloc0_1_0,#___str_123
	mov	(_main_sloc0_1_0 + 1),#(___str_123 >> 8)
	sjmp	00669$
00668$:
	mov	_main_sloc0_1_0,#___str_124
	mov	(_main_sloc0_1_0 + 1),#(___str_124 >> 8)
00669$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
	mov	r5,#0x80
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:201: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00670$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00671$
00670$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00671$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:202: LCD_guichuoi("\315S:");
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:203: LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:204: LCD_blinkXY(DUOI,4);
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar2
;	src\main.c:205: sub_mode = so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:206: mode = 0;
	mov	dptr,#_mode
	clr	a
	movx	@dptr,a
;	src\main.c:207: while(1){
00248$:
;	src\main.c:208: if(debug){
	jb	_main_debug_131073_263,02425$
	ljmp	00245$
02425$:
;	src\main.c:209: if(lcd_update_chop){
	jb	_lcd_update_chop,02426$
	ljmp	00174$
02426$:
;	src\main.c:210: lcd_update_chop = 0;
	push	ar2
;	assignBit
	clr	_lcd_update_chop
;	src\main.c:211: LCD_guichuoi("\300P:");
	mov	dptr,#___str_128
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:212: phuttemp = (giotemp & 15) < 6?(giotemp & 15)+1:(60/(12-(giotemp & 15)));
	mov	r3,_main_giotemp_65536_253
	mov	r5,#0x00
	mov	a,#0x0f
	anl	a,r3
	mov	r2,a
	mov	r4,#0x00
	clr	c
	mov	a,r2
	subb	a,#0x06
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar2
	jnc	00672$
	mov	r4,_main_giotemp_65536_253
	mov	a,#0x0f
	anl	a,r4
	inc	a
	mov	r4,a
	mov	_main_sloc0_1_0,r4
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
	sjmp	00673$
00672$:
	push	ar2
	mov	a,#0x0f
	anl	a,r3
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0x0c
	clr	c
	subb	a,r2
	mov	__divsint_PARM_2,a
	clr	a
	subb	a,r4
	mov	(__divsint_PARM_2 + 1),a
	mov	dptr,#0x003c
	push	ar5
	push	ar3
	push	ar2
	lcall	__divsint
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:973: WATCHDOG;
	pop	ar2
;	src\main.c:212: phuttemp = (giotemp & 15) < 6?(giotemp & 15)+1:(60/(12-(giotemp & 15)));
00673$:
	mov	_main_sloc1_1_0,_main_sloc0_1_0
;	src\main.c:213: LCD_guidulieu((mode==0&&chop)?'_':phuttemp/10+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00674$
	jnb	_chop,00674$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00675$
00674$:
	push	ar2
	mov	r2,_main_sloc1_1_0
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r2
	mov	dph,r4
	push	ar5
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
;	src\main.c:973: WATCHDOG;
	pop	ar2
;	src\main.c:213: LCD_guidulieu((mode==0&&chop)?'_':phuttemp/10+'0');
00675$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:214: LCD_guidulieu((mode==0&&chop)?'_':phuttemp%10+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00679$
	jnb	_chop,00679$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00680$
00679$:
	push	ar2
	mov	r2,_main_sloc1_1_0
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r2
	mov	dph,r4
	push	ar5
	push	ar3
	lcall	__modsint
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
;	src\main.c:973: WATCHDOG;
	pop	ar2
;	src\main.c:214: LCD_guidulieu((mode==0&&chop)?'_':phuttemp%10+'0');
00680$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:215: LCD_guichuoi(" T:");
	mov	dptr,#___str_129
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:216: LCD_guidulieu((mode==1&&chop)?'_':(((giotemp&96)>>5)+'0'));
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00684$
	jnb	_chop,00684$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00685$
00684$:
	push	ar2
	mov	a,#0x60
	anl	a,r3
	mov	r2,a
	clr	a
	rr	a
	xch	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r2
	xch	a,r2
	anl	a,#0x07
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	jnb	acc.2,02435$
	orl	a,#0xf8
02435$:
	mov	r4,a
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
;	src\main.c:973: WATCHDOG;
	pop	ar2
;	src\main.c:216: LCD_guidulieu((mode==1&&chop)?'_':(((giotemp&96)>>5)+'0'));
00685$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:217: LCD_guichuoi(" G:");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:218: LCD_guidulieu((mode==2&&chop)?'_':(((giotemp&16)>>4)+'0'));
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00689$
	jnb	_chop,00689$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00690$
00689$:
	anl	ar3,#0x10
	clr	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.3,02439$
	orl	a,#0xf0
02439$:
	mov	r5,a
	mov	a,#0x30
	add	a,r3
	mov	r3,a
	mov	_main_sloc0_1_0,r3
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
00690$:
	mov	dpl,_main_sloc0_1_0
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:219: LCD_guichuoi(" M:");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:220: LCD_guidulieu((mode==3&&chop)?'_':((mp3temp&4)>>2)+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,00694$
	jnb	_chop,00694$
	mov	r4,#0x5f
	mov	r5,#0x00
	sjmp	00695$
00694$:
	push	ar2
	mov	r2,_main_mp3temp_131073_263
	anl	ar2,#0x04
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	c,acc.7
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,#0x30
	add	a,r2
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
;	src\main.c:973: WATCHDOG;
	pop	ar2
;	src\main.c:220: LCD_guidulieu((mode==3&&chop)?'_':((mp3temp&4)>>2)+'0');
00695$:
	mov	dpl,r4
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
00174$:
;	src\main.c:222: if(phim_mode_nhan){
;	src\main.c:223: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02443$
	ljmp	00181$
02443$:
;	src\main.c:224: mode++;
	mov	dptr,#_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:225: switch(mode){
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,02444$
	sjmp	00175$
02444$:
	cjne	r5,#0x02,02445$
	sjmp	00176$
02445$:
	cjne	r5,#0x03,02446$
	sjmp	00177$
02446$:
	cjne	r5,#0x04,02447$
	sjmp	00178$
02447$:
	ljmp	00181$
;	src\main.c:226: case 1:sub_mode = (giotemp&96)>>5;break;
00175$:
	mov	r3,_main_giotemp_65536_253
	anl	ar3,#0x60
	clr	a
	rr	a
	xch	a,r3
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r3
	xch	a,r3
	anl	a,#0x07
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.2,02448$
	orl	a,#0xf8
02448$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:227: case 2:sub_mode = (giotemp&16)>>4;break;
	sjmp	00181$
00176$:
	mov	r3,_main_giotemp_65536_253
	anl	ar3,#0x10
	clr	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.3,02449$
	orl	a,#0xf0
02449$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:228: case 3:sub_mode = (mp3temp&4)>>2;break;
	sjmp	00181$
00177$:
	mov	r4,_main_mp3temp_131073_263
	anl	ar4,#0x04
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r4
	movx	@dptr,a
;	src\main.c:229: case 4:IAP_docxoasector1();
	sjmp	00181$
00178$:
	push	ar2
	lcall	_IAP_docxoasector1
;	src\main.c:230: eeprom_buf[MOTOR_EEPROM] &= 0xef;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	anl	a,#0xef
	movx	@dptr,a
;	src\main.c:231: eeprom_buf[DEBUG_EEPROM] =  giotemp;
	mov	dptr,#(_eeprom_buf + 0x001e)
	mov	a,_main_giotemp_65536_253
	movx	@dptr,a
;	src\main.c:232: eeprom_buf[MP3_EEPROM] =  mp3temp;
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,_main_mp3temp_131073_263
	movx	@dptr,a
;	src\main.c:234: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	src\main.c:235: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
	pop	ar2
;	src\main.c:236: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
;	src\main.c:237: }
00181$:
;	src\main.c:239: if(phim_back_nhan){
;	src\main.c:240: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02450$
	sjmp	00189$
02450$:
;	src\main.c:241: if(mode) mode--;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00183$
	mov	a,r5
	dec	a
	mov	dptr,#_mode
	movx	@dptr,a
00183$:
;	src\main.c:242: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	jz	00184$
	cjne	r5,#0x01,02453$
	sjmp	00185$
02453$:
;	src\main.c:243: case 0:sub_mode = giotemp & 15;break;
	cjne	r5,#0x02,00189$
	sjmp	00186$
00184$:
	mov	dptr,#_sub_mode
	mov	a,#0x0f
	anl	a,_main_giotemp_65536_253
	movx	@dptr,a
;	src\main.c:244: case 1:sub_mode = (giotemp&96)>>5;break;
	sjmp	00189$
00185$:
	mov	r3,_main_giotemp_65536_253
	anl	ar3,#0x60
	clr	a
	rr	a
	xch	a,r3
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r3
	xch	a,r3
	anl	a,#0x07
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.2,02455$
	orl	a,#0xf8
02455$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:245: case 2:sub_mode = (giotemp&16)>>4;break;
	sjmp	00189$
00186$:
	mov	r3,_main_giotemp_65536_253
	anl	ar3,#0x10
	clr	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.3,02456$
	orl	a,#0xf0
02456$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:246: }
00189$:
;	src\main.c:248: if(phim_cong_nhan){
;	src\main.c:249: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02457$
	ljmp	00248$
02457$:
;	src\main.c:250: sub_mode++;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:251: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	02458$
	ljmp	00248$
02458$:
	mov	a,r5
	add	a,r5
;	src\main.c:252: case 0:if(sub_mode>11) sub_mode = 0;giotemp = giotemp & 0xf0 | sub_mode; break;
	mov	dptr,#02459$
	jmp	@a+dptr
02459$:
	sjmp	00190$
	sjmp	00193$
	sjmp	00196$
	sjmp	00199$
00190$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x0b
	jnc	00192$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00192$:
	mov	a,#0xf0
	anl	a,_main_giotemp_65536_253
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_253,a
	ljmp	00248$
;	src\main.c:253: case 1:if(sub_mode>3) sub_mode = 0;giotemp = giotemp & 0x9f | (sub_mode<<5); break;
00193$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x03
	jnc	00195$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00195$:
	mov	a,#0x9f
	anl	a,_main_giotemp_65536_253
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_253,a
	ljmp	00248$
;	src\main.c:254: case 2:if(sub_mode>1) sub_mode = 0;giotemp = giotemp & 0xef | (sub_mode<<4); break;
00196$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00198$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00198$:
	mov	a,#0xef
	anl	a,_main_giotemp_65536_253
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_253,a
	ljmp	00248$
;	src\main.c:255: case 3:if(sub_mode>1) sub_mode = 0;mp3temp = mp3temp & 0x03 | (sub_mode<<2); break;
00199$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00201$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00201$:
	mov	a,#0x03
	anl	a,_main_mp3temp_131073_263
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r4,a
	orl	a,r5
	mov	_main_mp3temp_131073_263,a
;	src\main.c:256: }
	ljmp	00248$
00245$:
;	src\main.c:260: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x05
	jnc	02464$
	ljmp	00222$
02464$:
	mov	a,r5
	add	a,r5
	add	a,r5
	mov	dptr,#02465$
	jmp	@a+dptr
02465$:
	ljmp	00205$
	ljmp	00206$
	ljmp	00209$
	ljmp	00212$
	ljmp	00215$
	ljmp	00216$
;	src\main.c:261: case 0:
00205$:
;	src\main.c:262: sub_mode = so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:263: LCD_guilenh(0xc4); 
	mov	dpl,#0xc4
	push	ar2
	lcall	_LCD_guilenh
	pop	ar2
;	src\main.c:264: break;
	ljmp	00222$
;	src\main.c:265: case 1:
00206$:
;	src\main.c:266: sub_mode = may_dc;
	mov	dptr,#_sub_mode
	mov	c,_may_dc
	clr	a
	rlc	a
	movx	@dptr,a
;	src\main.c:267: LCD_noblink(); 
	push	ar2
	lcall	_LCD_noblink
	pop	ar2
;	src\main.c:268: if(lcd_update_chop){
;	src\main.c:269: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02466$
	ljmp	00222$
02466$:
;	src\main.c:270: LCD_guichuoi(chop?"\305 __ ":(may_dc?"\305 DC ":"\305 ST "));
	jnb	_chop,00699$
	mov	r4,#___str_132
	mov	r5,#(___str_132 >> 8)
	sjmp	00700$
00699$:
	jnb	_may_dc,00701$
	mov	_main_sloc0_1_0,#___str_123
	mov	(_main_sloc0_1_0 + 1),#(___str_123 >> 8)
	sjmp	00702$
00701$:
	mov	_main_sloc0_1_0,#___str_124
	mov	(_main_sloc0_1_0 + 1),#(___str_124 >> 8)
00702$:
	mov	r4,_main_sloc0_1_0
	mov	r5,(_main_sloc0_1_0 + 1)
00700$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:272: break;
	ljmp	00222$
;	src\main.c:273: case 2:
00209$:
;	src\main.c:274: sub_mode = atmel_phat;
	mov	dptr,#_sub_mode
	mov	c,_atmel_phat
	clr	a
	rlc	a
	movx	@dptr,a
;	src\main.c:275: if(lcd_update_chop){
;	src\main.c:276: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02469$
	ljmp	00222$
02469$:
;	src\main.c:277: LCD_guichuoi(chop?"\311___":(atmel_phat?"\311C55 ":"\311STC "));
	jnb	_chop,00703$
	mov	r4,#___str_133
	mov	r5,#(___str_133 >> 8)
	sjmp	00704$
00703$:
	jnb	_atmel_phat,00705$
	mov	_main_sloc0_1_0,#___str_125
	mov	(_main_sloc0_1_0 + 1),#(___str_125 >> 8)
	sjmp	00706$
00705$:
	mov	_main_sloc0_1_0,#___str_126
	mov	(_main_sloc0_1_0 + 1),#(___str_126 >> 8)
00706$:
	mov	r4,_main_sloc0_1_0
	mov	r5,(_main_sloc0_1_0 + 1)
00704$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:279: break;
	ljmp	00222$
;	src\main.c:280: case 3:
00212$:
;	src\main.c:281: sub_mode = toc_do_motor_step;
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:282: if(lcd_update_chop){
;	src\main.c:283: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02472$
	ljmp	00222$
02472$:
;	src\main.c:284: LCD_guichuoi("\315S:");
	mov	dptr,#___str_127
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:285: LCD_guidulieu(chop?'_':(toc_do_motor_step+'0'));
	jnb	_chop,00707$
	mov	r4,#0x5f
	mov	r5,#0x00
	sjmp	00708$
00707$:
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	r3,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
00708$:
	mov	dpl,r4
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:287: break;
	ljmp	00222$
;	src\main.c:288: case 4:
00215$:
;	src\main.c:289: LCD_guichuoi("\200      SAVE      ");
	mov	dptr,#___str_134
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:290: LCD_guichuoi("\300MODE:OK    RS:BO");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:291: break;
;	src\main.c:292: case 5:
	sjmp	00222$
00216$:
;	src\main.c:293: phuttemp = (i & 0x10);
	mov	a,#0x10
	anl	a,r2
	mov	r5,a
;	src\main.c:294: phuttemp += (so_motor-1);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	dec	r4
	mov	a,r4
	add	a,r5
	mov	r5,a
;	src\main.c:295: phuttemp += (may_dc?4:0); 
	jnb	_may_dc,00709$
	mov	r3,#0x04
	mov	r4,#0x00
	sjmp	00710$
00709$:
	mov	r3,#0x00
	mov	r4,#0x00
00710$:
	mov	a,r3
	add	a,r5
	mov	r5,a
;	src\main.c:296: if(so_motor!=1) phuttemp += (atmel_phat?8:0);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,02475$
	sjmp	00218$
02475$:
	jnb	_atmel_phat,00711$
	mov	r3,#0x08
	mov	r4,#0x00
	sjmp	00712$
00711$:
	mov	r3,#0x00
	mov	r4,#0x00
00712$:
	mov	ar4,r5
	mov	a,r3
	add	a,r4
	mov	r5,a
00218$:
;	src\main.c:297: if(!may_dc && !atmel_phat) phuttemp += (toc_do_motor_step<<6);
	jb	_may_dc,00220$
	jb	_atmel_phat,00220$
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r4,a
	mov	ar3,r5
	add	a,r3
	mov	r5,a
00220$:
;	src\main.c:298: IAP_xoasector(SECTOR1);
	mov	dptr,#0x0000
	push	ar5
	push	ar2
	lcall	_IAP_xoasector
;	src\main.c:299: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
	pop	ar2
	pop	ar5
;	src\main.c:300: IAP_ghibyte(MOTOR_EEPROM,phuttemp);
	mov	_IAP_ghibyte_PARM_2,r5
	mov	dptr,#0x0000
	push	ar2
	lcall	_IAP_ghibyte
	pop	ar2
;	src\main.c:301: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
;	src\main.c:302: }
00222$:
;	src\main.c:303: if(phim_cong_nhan){
;	src\main.c:304: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02479$
	ljmp	00232$
02479$:
;	src\main.c:305: debug_dem = 0;
	mov	_main_debug_dem_131073_263,#0x00
;	src\main.c:306: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	02480$
	ljmp	00232$
02480$:
	mov	a,r5
	add	a,r5
;	src\main.c:307: case 0:
	mov	dptr,#02481$
	jmp	@a+dptr
02481$:
	sjmp	00223$
	sjmp	00224$
	sjmp	00225$
	sjmp	00229$
00223$:
;	src\main.c:308: sub_mode = sub_mode<3?sub_mode+1:0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,02482$
02482$:
	jnc	00713$
	inc	r5
	mov	a,r5
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00714$
00713$:
	mov	r4,#0x00
	mov	r5,#0x00
00714$:
	mov	dptr,#_sub_mode
	mov	a,r4
	movx	@dptr,a
;	src\main.c:309: so_motor = sub_mode + 1;
	inc	r4
	mov	dptr,#_so_motor
	mov	a,r4
	movx	@dptr,a
;	src\main.c:310: LCD_guidulieu(so_motor+'0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:311: LCD_guilenh(0xc4);
	mov	dpl,#0xc4
	lcall	_LCD_guilenh
	pop	ar2
;	src\main.c:312: break;
;	src\main.c:313: case 1:
	sjmp	00232$
00224$:
;	src\main.c:314: may_dc = sub_mode = 1 - sub_mode;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	clr	c
	subb	a,r5
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_may_dc,c
	mov	a,r5
	movx	@dptr,a
;	src\main.c:315: break;
;	src\main.c:316: case 2:
	sjmp	00232$
00225$:
;	src\main.c:317: if(so_motor>2) atmel_phat = sub_mode = 1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00227$
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	assignBit
	setb	_atmel_phat
	sjmp	00229$
00227$:
;	src\main.c:318: else atmel_phat = sub_mode = 1 - sub_mode;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x01
	clr	c
	subb	a,r5
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_atmel_phat,c
	mov	a,r5
	movx	@dptr,a
;	src\main.c:319: case 3:
00229$:
;	src\main.c:320: sub_mode = sub_mode<3?sub_mode+1:0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,02485$
02485$:
	jnc	00715$
	inc	r5
	mov	a,r5
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00716$
00715$:
	mov	r4,#0x00
	mov	r5,#0x00
00716$:
	mov	dptr,#_sub_mode
	mov	a,r4
	movx	@dptr,a
;	src\main.c:321: toc_do_motor_step = sub_mode;
	mov	dptr,#_toc_do_motor_step
	mov	a,r4
	movx	@dptr,a
;	src\main.c:323: }
00232$:
;	src\main.c:326: if(phim_mode_nhan){
;	src\main.c:327: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02487$
	sjmp	00234$
02487$:
;	src\main.c:328: debug_dem = 0;
	mov	_main_debug_dem_131073_263,#0x00
;	src\main.c:329: mode++;
	mov	dptr,#_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:330: LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
	mov	dptr,#___str_122
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:331: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00717$
	mov	r4,#___str_123
	mov	r5,#(___str_123 >> 8)
	sjmp	00718$
00717$:
	mov	r4,#___str_124
	mov	r5,#(___str_124 >> 8)
00718$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:332: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00719$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00720$
00719$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00720$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:333: LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:334: LCD_noblink();
	lcall	_LCD_noblink
	pop	ar2
00234$:
;	src\main.c:336: if(phim_back_nhan){
;	src\main.c:337: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02490$
	ljmp	00248$
02490$:
;	src\main.c:338: if(mode) mode--;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00236$
	mov	a,r5
	dec	a
	mov	dptr,#_mode
	movx	@dptr,a
00236$:
;	src\main.c:339: LCD_guichuoi("\200 NHA PHAT TRIEN"); 
	mov	dptr,#___str_121
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:340: LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:341: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00721$
	mov	r4,#___str_123
	mov	r5,#(___str_123 >> 8)
	sjmp	00722$
00721$:
	mov	r4,#___str_124
	mov	r5,#(___str_124 >> 8)
00722$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:342: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00723$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00724$
00723$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00724$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:343: LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:344: if(!mode){ 
	mov	dptr,#_mode
	movx	a,@dptr
	jz	02494$
	ljmp	00248$
02494$:
;	src\main.c:345: if(debug_dem++>8){
	mov	r5,_main_debug_dem_131073_263
	inc	_main_debug_dem_131073_263
	mov	a,r5
	add	a,#0xff - 0x08
	jnc	00238$
;	src\main.c:346: debug = 1;
;	assignBit
	setb	_main_debug_131073_263
;	src\main.c:347: LCD_noblink();
	push	ar2
	lcall	_LCD_noblink
	pop	ar2
;	src\main.c:348: sub_mode = eep_debug & 15;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_sub_mode
	anl	a,#0x0f
	movx	@dptr,a
	ljmp	00248$
00238$:
;	src\main.c:350: else LCD_blinkXY(DUOI,4);
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	push	ar2
	lcall	_LCD_blinkXY
	pop	ar2
	ljmp	00248$
00251$:
;	src\main.c:360: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:363: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:364: LCD_guichuoi("KIEM TRA GIO RTC");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:365: rtc_gettime(&hour, &minute, &second);
	mov	_rtc_gettime_PARM_2,#_minute
	mov	(_rtc_gettime_PARM_2 + 1),#0x00
	mov	(_rtc_gettime_PARM_2 + 2),#0x40
	mov	_rtc_gettime_PARM_3,#_second
	mov	(_rtc_gettime_PARM_3 + 1),#0x00
	mov	(_rtc_gettime_PARM_3 + 2),#0x40
	mov	dptr,#_hour
	mov	b,#0x40
	lcall	_rtc_gettime
	pop	ar6
	pop	ar7
;	src\main.c:366: if(hour>23 || minute > 59 || second >59)	
	mov	a,_hour
	add	a,#0xff - 0x17
	jc	00254$
	mov	a,_minute
	add	a,#0xff - 0x3b
	jc	00254$
	mov	a,_second
	add	a,#0xff - 0x3b
	jnc	00255$
00254$:
;	src\main.c:367: rtc_settime(0,0,0);
	mov	_rtc_settime_PARM_2,#0x00
	mov	_rtc_settime_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_rtc_settime
	pop	ar6
	pop	ar7
00255$:
;	src\main.c:370: rtc_init(); //khai bao cho ds1307 tao xung vuong moi giay
	push	ar7
	push	ar6
	lcall	_rtc_init
;	src\main.c:371: INT_DHO_EX = 1; //Bat ngat ngoai 0 (EX0)
;	assignBit
	setb	_EX0
;	src\main.c:372: INT_DHO_IT=1; // ngat ngoai 0 cho suon len
;	assignBit
	setb	_IT0
;	src\main.c:373: rtc_gettime(&hour, &minute, &second);
	mov	_rtc_gettime_PARM_2,#_minute
	mov	(_rtc_gettime_PARM_2 + 1),#0x00
	mov	(_rtc_gettime_PARM_2 + 2),#0x40
	mov	_rtc_gettime_PARM_3,#_second
	mov	(_rtc_gettime_PARM_3 + 1),#0x00
	mov	(_rtc_gettime_PARM_3 + 2),#0x40
	mov	dptr,#_hour
	mov	b,#0x40
	lcall	_rtc_gettime
;	src\main.c:376: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:377: LCD_guichuoi("KIEM MOTOR 1 - 3");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:378: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jc	02499$
	ljmp	00265$
02499$:
;	src\main.c:380: while(!cam_che && retry--){
	mov	_main_retry_131073_284,#0x14
00261$:
	jnb	_P36,02500$
	ljmp	00265$
02500$:
	mov	r4,_main_retry_131073_284
	dec	_main_retry_131073_284
	mov	a,r4
	jnz	02501$
	ljmp	00265$
02501$:
;	src\main.c:381: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:382: LCD_guidulieu(retry/10+'0');
	mov	r3,_main_retry_131073_284
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar3
	pop	ar4
;	src\main.c:383: LCD_guidulieu(retry%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:384: motor1 = 1;
;	assignBit
	setb	_P27
;	src\main.c:385: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00725$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00726$
00725$:
	mov	r4,#0xfa
	mov	r5,#0x00
00726$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:386: motor1 = 0;
;	assignBit
	clr	_P27
;	src\main.c:387: if(!cam_che){
	jb	_P36,00261$
;	src\main.c:388: motor3 = 1;
;	assignBit
	setb	_P26
;	src\main.c:389: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00727$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00728$
00727$:
	mov	r4,#0xfa
	mov	r5,#0x00
00728$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:390: motor3 = 0;
;	assignBit
	clr	_P26
	ljmp	00261$
00265$:
;	src\main.c:394: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:395: LCD_guichuoi("KIEM MOTOR 2 - 4");
	mov	dptr,#___str_138
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:396: if(so_motor>3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jc	02505$
	ljmp	00273$
02505$:
;	src\main.c:398: while(!cam_che2 && retry--){
	mov	_main_retry_131073_287,#0x05
00269$:
	jnb	_P37,02506$
	ljmp	00273$
02506$:
	mov	r4,_main_retry_131073_287
	dec	_main_retry_131073_287
	mov	a,r4
	jnz	02507$
	ljmp	00273$
02507$:
;	src\main.c:399: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:400: LCD_guidulieu(retry/10+'0');
	mov	r3,_main_retry_131073_287
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar3
	pop	ar4
;	src\main.c:401: LCD_guidulieu(retry%10+'0');
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:402: motor2 = 1;
;	assignBit
	setb	_P25
;	src\main.c:403: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00729$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00730$
00729$:
	mov	r4,#0xfa
	mov	r5,#0x00
00730$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:404: motor2 = 0;
;	assignBit
	clr	_P25
;	src\main.c:405: if(!cam_che2){
	jb	_P37,00269$
;	src\main.c:406: motor4 = 1;
;	assignBit
	setb	_P24
;	src\main.c:407: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00731$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00732$
00731$:
	mov	r4,#0xfa
	mov	r5,#0x00
00732$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:408: motor4 = 0;
;	assignBit
	clr	_P24
	ljmp	00269$
00273$:
;	src\main.c:412: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:413: LCD_guichuoi("THIET LAP MOTOR ");
	mov	dptr,#___str_139
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:414: motor_step_int_init();
	lcall	_motor_step_int_init
	pop	ar6
	pop	ar7
;	src\main.c:417: bat_phone_phu = eep_phonephu[11]&1;
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_bat_phone_phu,c
;	src\main.c:418: if(!nosim && gsm_thietlapsim800()){
	jb	_nosim,00282$
	push	ar7
	push	ar6
	lcall	_gsm_thietlapsim800
	pop	ar6
	pop	ar7
	jnc	00282$
;	src\main.c:419: gsm_thietlapngaygiothuc();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
;	src\main.c:420: gsm_thietlapgoidien();
	lcall	_gsm_thietlapgoidien
;	src\main.c:422: if(gsm_thietlapnhantin()){ // thiet lap thong so nhan tin
	lcall	_gsm_thietlapnhantin
	pop	ar6
	pop	ar7
	jnc	00282$
;	src\main.c:423: if(!eep_norreset)baocaosms(CHINH,"\rkhoi dong phan mem san sang");
	mov	dptr,#_eep_norreset
	clr	a
	movc	a,@a+dptr
	jnz	00277$
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_140
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
	sjmp	00278$
00277$:
;	src\main.c:425: baocaosms(CHINH,"\rkhoi dong san sang");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:426: if(bat_phone_phu)baocaosms(PHU,"\rkhoi dong san sang");
	jnb	_bat_phone_phu,00278$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00278$:
;	src\main.c:428: kiemtrasodienthoai();
	push	ar7
	push	ar6
	lcall	_kiemtrasodienthoai
	pop	ar6
	pop	ar7
00282$:
;	src\main.c:433: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00733$
	mov	a,_hour
	add	a,#0xf4
	mov	r5,a
	sjmp	00734$
00733$:
	mov	r5,_hour
00734$:
	mov	_hour12,r5
;	src\main.c:434: if(!eep_norreset){
	mov	dptr,#_eep_norreset
	clr	a
	movc	a,@a+dptr
	jnz	00285$
;	src\main.c:435: mode_wait = 5;
	mov	dptr,#_mode_wait
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:436: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:437: eeprom_buf[NORRESET_EEPROM] = 0xff;
	mov	dptr,#(_eeprom_buf + 0x0005)
	mov	a,#0xff
	movx	@dptr,a
;	src\main.c:438: IAP_ghisector1();
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
	sjmp	00286$
00285$:
;	src\main.c:439: }else mode_wait = 60;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
00286$:
;	src\main.c:441: WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64; // Enable watchdog, clear watchdog, pre scale = 64, watchdog idle mode = NO
	mov	_WDT_CONTR,#0x65
;	src\main.c:445: while(1){
00645$:
;	src\main.c:447: if(so_motor==4 && (eep_phut4!=phut[3] || eep_gio4!=gio[3])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x04,00301$
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0003),00300$
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0003),02522$
	sjmp	00301$
02522$:
00300$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00302$
00301$:
;	src\main.c:448: else if(so_motor>2 && (eep_phut3!=phut[2] || eep_gio3!=gio[2])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00296$
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0002),00295$
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0002),02526$
	sjmp	00296$
02526$:
00295$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00302$
00296$:
;	src\main.c:449: else if(so_motor>1 && (eep_phut2!=phut[1] || eep_gio2!=gio[1])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00291$
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0001),00290$
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0001),02530$
	sjmp	00291$
02530$:
00290$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00302$
00291$:
;	src\main.c:450: else if(eep_phut1!=phut[0] || eep_gio1!=gio[0]) luu_gio_kim();
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	cjne	a,_phut,00287$
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,_gio,02533$
	sjmp	00302$
02533$:
00287$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00302$:
;	src\main.c:452: if(!mode_wait || !mode) {
	mov	dptr,#_mode_wait
	movx	a,@dptr
	jz	00309$
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00310$
00309$:
;	src\main.c:453: mode=0;
	mov	dptr,#_mode
	clr	a
	movx	@dptr,a
;	src\main.c:454: if(motor_index  == 5) motor_index  = motor_run_check();
	mov	a,#0x05
	cjne	a,_motor_index,00306$
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
	pop	ar6
	pop	ar7
00306$:
;	src\main.c:455: if(motor_index2 == 5) motor_index2 = motor_run_check2();
	mov	a,#0x05
	cjne	a,_motor_index2,00310$
	push	ar7
	push	ar6
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
00310$:
;	src\main.c:458: if(phut_out){
;	src\main.c:459: phut_out = 0;
;	assignBit
	jbc	_phut_out,02540$
	ljmp	00313$
02540$:
;	src\main.c:460: send_gsm_cmd("***stc");
	mov	dptr,#___str_142
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_send_gsm_cmd
;	src\main.c:461: send_gsm_byte(day/10+'0');
	mov	dptr,#_day
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:462: send_gsm_byte(day%10+'0');
	mov	dptr,#_day
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:463: send_gsm_byte(month/10+'0');
	mov	dptr,#_month
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:464: send_gsm_byte(month%10+'0');
	mov	dptr,#_month
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:465: send_gsm_byte(year/10+'0');
	mov	dptr,#_year
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:466: send_gsm_byte(year%10+'0');
	mov	dptr,#_year
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r5
	mov	dph,r4
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:467: send_gsm_byte(hour/10+'0');
	mov	r4,_hour
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:468: send_gsm_byte(hour%10+'0');
	mov	r4,_hour
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:469: send_gsm_byte(minute/10+'0');
	mov	r4,_minute
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:470: send_gsm_byte(minute%10+'0');
	mov	r4,_minute
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:471: send_gsm_byte(second/10+'0');
	mov	r4,_second
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:472: send_gsm_byte(second%10+'0');
	mov	r4,_second
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	lcall	__modsint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_send_gsm_byte
;	src\main.c:473: send_gsm_cmd("###\r\n");
	mov	dptr,#___str_143
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
	pop	ar7
00313$:
;	src\main.c:475: if(!bao_cao_dien_ap_thap && dien_ap_thap){
	jb	_bao_cao_dien_ap_thap,00317$
	jnb	_dien_ap_thap,00317$
;	src\main.c:476: baocaosms(CHINH,"\rdien ap thap");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_144
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:477: if(bat_phone_phu)baocaosms(PHU,"\rdien ap thap");
	jnb	_bat_phone_phu,00315$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_144
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00315$:
;	src\main.c:478: bao_cao_dien_ap_thap = 1;
;	assignBit
	setb	_bao_cao_dien_ap_thap
00317$:
;	src\main.c:480: if(bao_cao_dien_ap_thap && !dien_ap_thap){
	jnb	_bao_cao_dien_ap_thap,00322$
	jb	_dien_ap_thap,00322$
;	src\main.c:481: baocaosms(CHINH,"\rdien ap khoi phuc");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_145
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:482: if(bat_phone_phu)baocaosms(PHU,"\rdien ap khoi phuc");
	jnb	_bat_phone_phu,00320$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_145
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00320$:
;	src\main.c:483: bao_cao_dien_ap_thap = 0;
;	assignBit
	clr	_bao_cao_dien_ap_thap
00322$:
;	src\main.c:485: if(!xung_giay_check && !mat_xung_giay){
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	jnz	00325$
	jb	_mat_xung_giay,00325$
;	src\main.c:486: mat_xung_giay = 1;
;	assignBit
	setb	_mat_xung_giay
;	src\main.c:487: baocaosms(CHINH,"\rmat xung giay");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_146
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00325$:
;	src\main.c:490: if(!thoi_gian_doi_doc_cam[0] && !loi_cam_motor1){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00330$
	jb	_loi_cam_motor1,00330$
;	src\main.c:491: loi_cam_motor1 = 1;
;	assignBit
	setb	_loi_cam_motor1
;	src\main.c:492: baocaosms(CHINH,"\rloi doc cam 1");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:493: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 1");
	jnb	_bat_phone_phu,00330$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00330$:
;	src\main.c:495: if(so_motor>1 && !thoi_gian_doi_doc_cam[1] && !loi_cam_motor2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00335$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	a,@dptr
	jnz	00335$
	jb	_loi_cam_motor2,00335$
;	src\main.c:496: loi_cam_motor2 = 1;
;	assignBit
	setb	_loi_cam_motor2
;	src\main.c:497: baocaosms(CHINH,"\rloi doc cam 2");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_148
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:498: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 2");
	jnb	_bat_phone_phu,00335$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_148
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00335$:
;	src\main.c:500: if(so_motor>2 && !thoi_gian_doi_doc_cam[2] && !loi_cam_motor3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00341$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	a,@dptr
	jnz	00341$
	jb	_loi_cam_motor3,00341$
;	src\main.c:501: loi_cam_motor3 = 1;
;	assignBit
	setb	_loi_cam_motor3
;	src\main.c:502: baocaosms(CHINH,"\rloi doc cam 3");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_149
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:503: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 3");
	jnb	_bat_phone_phu,00341$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_149
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00341$:
;	src\main.c:505: if(so_motor==4 && !thoi_gian_doi_doc_cam[3] && !loi_cam_motor4){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x04,00347$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0003)
	movx	a,@dptr
	jnz	00347$
	jb	_loi_cam_motor4,00347$
;	src\main.c:506: loi_cam_motor4 = 1;
;	assignBit
	setb	_loi_cam_motor4
;	src\main.c:507: baocaosms(CHINH,"\rloi doc cam 4");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_150
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:508: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 4");
	jnb	_bat_phone_phu,00347$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_150
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00347$:
;	src\main.c:510: if(giay_out){
	jb	_giay_out,02565$
	ljmp	00374$
02565$:
;	src\main.c:511: if(!gsm_pw){
	jb	_P20,00353$
;	src\main.c:512: if(!--gsm_delay_reset){
	mov	dptr,#_gsm_delay_reset
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00353$
;	src\main.c:513: ADC_CONTR = 0x83;
	mov	_ADC_CONTR,#0x83
;	src\main.c:514: gsm_pw = 1;
;	assignBit
	setb	_P20
;	src\main.c:515: gsm_delay_reset = 30;
	mov	dptr,#_gsm_delay_reset
	mov	a,#0x1e
	movx	@dptr,a
;	src\main.c:516: gsm_reset=1;
;	assignBit
	setb	_gsm_reset
00353$:
;	src\main.c:519: if(delay_ve_kim && !canhkim && !--delay_ve_kim){
	mov	dptr,#_delay_ve_kim
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00355$
	mov	dptr,#_canhkim
	movx	a,@dptr
	jnz	00355$
	mov	a,r5
	dec	a
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
	movx	a,@dptr
	jnz	00355$
;	src\main.c:520: canhkim = 5;
	mov	dptr,#_canhkim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:521: delay_ve_kim = 5;
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
;	src\main.c:522: motor_index  = motor_run_check();
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	src\main.c:523: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
00355$:
;	src\main.c:526: if(motor_index!=5 && thoi_gian_doi_doc_cam[motor_index] && !--thoi_gian_doi_doc_cam[motor_index]){ cam_vao = cam_vao_han = 0;motor_index = 5;}
	mov	a,#0x05
	cjne	a,_motor_index,02571$
	sjmp	00359$
02571$:
	mov	a,_motor_index
	add	a,#_thoi_gian_doi_doc_cam
	mov	r4,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r3,a
	jz	00359$
	dec	r3
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	jnz	00359$
;	assignBit
	clr	_cam_vao_han
;	assignBit
	clr	_cam_vao
	mov	_motor_index,#0x05
00359$:
;	src\main.c:527: if((motor_index2!=5)  && thoi_gian_doi_doc_cam[motor_index2] && !--thoi_gian_doi_doc_cam[motor_index2]){ cam_vao2 = cam_vao_han2 = 0;motor_index2 = 5;}
	mov	a,#0x05
	cjne	a,_motor_index2,02574$
	sjmp	00363$
02574$:
	mov	a,_motor_index2
	add	a,#_thoi_gian_doi_doc_cam
	mov	r4,a
	clr	a
	addc	a,#(_thoi_gian_doi_doc_cam >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r3,a
	jz	00363$
	dec	r3
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	jnz	00363$
;	assignBit
	clr	_cam_vao_han2
;	assignBit
	clr	_cam_vao2
	mov	_motor_index2,#0x05
00363$:
;	src\main.c:529: if(mode_wait && (!(eep_mp3%4) || !mp3_playing)) mode_wait--;
	mov	dptr,#_mode_wait
	movx	a,@dptr
	jz	00367$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jz	00366$
	jb	_P12,00367$
00366$:
	mov	dptr,#_mode_wait
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00367$:
;	src\main.c:531: if(phim_mode_doi && phim_mode_giu){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00371$
	jnb	_phim_mode_giu,00371$
;	src\main.c:532: phim_mode_doi--;
	mov	a,r5
	dec	a
	mov	dptr,#_phim_mode_doi
	movx	@dptr,a
00371$:
;	src\main.c:534: giay_out=0;
;	assignBit
	clr	_giay_out
00374$:
;	src\main.c:537: kiem_tra_den();
	push	ar7
	push	ar6
	lcall	_kiem_tra_den
	pop	ar6
	pop	ar7
;	src\main.c:539: if(!mode && (eep_mp3%4)==2) kiem_tra_nhac();
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00376$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00376$
	cjne	r5,#0x00,00376$
	push	ar7
	push	ar6
	lcall	_kiem_tra_nhac
	pop	ar6
	pop	ar7
00376$:
;	src\main.c:542: if(((eep_ngayreset && !ngay_reset_con_lai && eep_gioreset==hour && minute>5) || so_lan_goi_dien > 1)  && motor_index==5 && motor_index2==5 && (!(eep_mp3%4) || !mp3_playing)){
	mov	dptr,#_eep_ngayreset
	clr	a
	movc	a,@a+dptr
	jz	00387$
	mov	dptr,#_ngay_reset_con_lai
	movx	a,@dptr
	jnz	00387$
	mov	dptr,#_eep_gioreset
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,_hour,00387$
	mov	a,_minute
	add	a,#0xff - 0x05
	jc	00388$
00387$:
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00383$
00388$:
	mov	a,#0x05
	cjne	a,_motor_index,00383$
	mov	a,#0x05
	cjne	a,_motor_index2,00383$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jz	00382$
	jb	_P12,00383$
00382$:
;	src\main.c:543: if(max_second<60)rtc_settime(eep_gioreset,6,0);
	mov	dptr,#_max_second
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x3c,02597$
02597$:
	jnc	00379$
	mov	dptr,#_eep_gioreset
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	_rtc_settime_PARM_2,#0x06
	mov	_rtc_settime_PARM_3,#0x00
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_rtc_settime
	pop	ar6
	pop	ar7
00379$:
;	src\main.c:544: if(so_lan_goi_dien>1) baocaosms(CHINH,"\rChuan bi reset phan mem tu cuoc goi");	
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00381$
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_151
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00381$:
;	src\main.c:545: EA=0;
;	assignBit
	clr	_EA
;	src\main.c:546: gsm_pw = 0;
;	assignBit
	clr	_P20
;	src\main.c:547: IAP_ghibyte(NORRESET_EEPROM,0);
	mov	_IAP_ghibyte_PARM_2,#0x00
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_IAP_ghibyte
;	src\main.c:548: RingRelay = 1;
;	assignBit
	setb	_P23
;	src\main.c:549: delay_ms(4000);
	mov	dptr,#0x0fa0
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:550: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
00383$:
;	src\main.c:554: if(!da_gui_bao_cao && minute<5 ) {
	jnb	_da_gui_bao_cao,02600$
	ljmp	00399$
02600$:
	mov	a,#0x100 - 0x05
	add	a,_minute
	jnc	02601$
	ljmp	00399$
02601$:
;	src\main.c:555: if(!GPS_time && eep_gpson) {
	jb	_GPS_time,00393$
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00393$
;	src\main.c:557: gsm_thietlapngaygiothuc();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
	pop	ar6
	pop	ar7
;	src\main.c:558: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00735$
	mov	a,_hour
	add	a,#0xf4
	mov	r5,a
	sjmp	00736$
00735$:
	mov	r5,_hour
00736$:
	mov	_hour12,r5
	sjmp	00394$
00393$:
;	src\main.c:560: rtc_gettime(&hour,&minute,&second);
	mov	_rtc_gettime_PARM_2,#_minute
	mov	(_rtc_gettime_PARM_2 + 1),#0x00
	mov	(_rtc_gettime_PARM_2 + 2),#0x40
	mov	_rtc_gettime_PARM_3,#_second
	mov	(_rtc_gettime_PARM_3 + 1),#0x00
	mov	(_rtc_gettime_PARM_3 + 2),#0x40
	mov	dptr,#_hour
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_rtc_gettime
;	src\main.c:561: rtc_getdate(&date,&day,&month,&year);
	mov	_rtc_getdate_PARM_2,#_day
	mov	(_rtc_getdate_PARM_2 + 1),#(_day >> 8)
	mov	(_rtc_getdate_PARM_2 + 2),#0x00
	mov	_rtc_getdate_PARM_3,#_month
	mov	(_rtc_getdate_PARM_3 + 1),#(_month >> 8)
	mov	(_rtc_getdate_PARM_3 + 2),#0x00
	mov	_rtc_getdate_PARM_4,#_year
	mov	(_rtc_getdate_PARM_4 + 1),#(_year >> 8)
	mov	(_rtc_getdate_PARM_4 + 2),#0x00
	mov	dptr,#_date
	mov	b,#0x00
	lcall	_rtc_getdate
	pop	ar6
	pop	ar7
00394$:
;	src\main.c:564: if(eep_baocao) {
	mov	dptr,#_eep_baocao
	clr	a
	movc	a,@a+dptr
	jz	00397$
;	src\main.c:565: baocaosms(CHINH,"\rbao cao dau gio");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_152
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00397$:
;	src\main.c:567: da_gui_bao_cao = 1;
;	assignBit
	setb	_da_gui_bao_cao
00399$:
;	src\main.c:569: if(co_tin_nhan_moi){
;	src\main.c:570: co_tin_nhan_moi = 0;
;	assignBit
	jbc	_co_tin_nhan_moi,02606$
	sjmp	00402$
02606$:
;	src\main.c:571: gsm_sendandcheck("AT\r", 15, 1,"CO TIN NHAN MOI ");
	mov	_gsm_sendandcheck_PARM_4,#___str_153
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_153 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_gsm_sendandcheck
;	src\main.c:572: send_gsm_cmd("AT+CMGL=\"ALL\"\r");
	mov	dptr,#___str_154
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
	pop	ar7
00402$:
;	src\main.c:574: if(goi_dien_thoai){
;	src\main.c:575: goi_dien_thoai = 0;
;	assignBit
	jbc	_goi_dien_thoai,02607$
	sjmp	00404$
02607$:
;	src\main.c:576: gsm_quay_so(phone_chinh);
	mov	dptr,#_phone_chinh
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_gsm_quay_so
	pop	ar6
	pop	ar7
00404$:
;	src\main.c:579: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x07
	jnc	02608$
	ljmp	00642$
02608$:
	mov	a,r5
	add	a,#(02609$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(02610$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02609$:
	.db	00405$
	.db	00466$
	.db	00519$
	.db	00631$
	.db	00555$
	.db	00639$
	.db	00639$
	.db	00431$
02610$:
	.db	00405$>>8
	.db	00466$>>8
	.db	00519$>>8
	.db	00631$>>8
	.db	00555$>>8
	.db	00639$>>8
	.db	00639$>>8
	.db	00431$>>8
;	src\main.c:580: case 0:
00405$:
;	src\main.c:581: if(gsm_reset){
	jnb	_gsm_reset,00409$
;	src\main.c:582: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:583: gsm_reset = 0;
;	assignBit
	clr	_gsm_reset
;	src\main.c:584: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	src\main.c:586: gsm_thietlapngaygiothuc();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
;	src\main.c:587: hour12=hour%12;
	mov	r3,_hour
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	_hour12,r3
;	src\main.c:588: if(gsm_thietlapnhantin()){
	lcall	_gsm_thietlapnhantin
	pop	ar6
	pop	ar7
	jnc	00409$
;	src\main.c:589: baocaosms(CHINH,"\rgsm reset thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_155
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00409$:
;	src\main.c:592: if(sms_dang_xu_ly){
	jnb	_sms_dang_xu_ly,00418$
;	src\main.c:594: xu_ly_tin_nhan();
	push	ar7
	push	ar6
	lcall	_xu_ly_tin_nhan
;	src\main.c:595: gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  SENDING CMGDA  ");
	mov	_gsm_sendandcheck_PARM_4,#___str_71
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_71 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	pop	ar6
	pop	ar7
;	src\main.c:596: sms_dang_xu_ly = 0;
;	assignBit
	clr	_sms_dang_xu_ly
	ljmp	00419$
00418$:
;	src\main.c:599: switch(so_motor){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,02614$
	sjmp	00410$
02614$:
	cjne	r4,#0x02,02615$
	sjmp	00411$
02615$:
	cjne	r4,#0x03,02616$
	ljmp	00413$
02616$:
	cjne	r4,#0x04,02617$
	ljmp	00412$
02617$:
	ljmp	00414$
;	src\main.c:600: case 1: LCD_guigio(0x80,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],date,flip_pulse);break;
00410$:
	jnb	_may_dc,00737$
	mov	r3,#___str_156
	mov	r4,#(___str_156 >> 8)
	sjmp	00738$
00737$:
	mov	r3,#___str_157
	mov	r4,#(___str_157 >> 8)
00738$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	dptr,#_date
	movx	a,@dptr
	mov	_LCD_guigio_PARM_5,a
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
	ljmp	00414$
;	src\main.c:601: case 2: LCD_guigio(0x80,"  ",gio[0],phut[0],253,flip_pulse);LCD_guigio(0x87,"  ",gio[1],phut[1],253,flip_pulse);LCD_guichuoi("  ");break;
00411$:
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0x87
	lcall	_LCD_guigio
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00414$
;	src\main.c:602: case 4:	LCD_guigio(0xc5,GPS_time?" G ":(eep_gpson?" D ":" A "),hour,minute,second,flip_pulse); 
00412$:
	jnb	_GPS_time,00739$
	mov	r3,#___str_159
	mov	r4,#(___str_159 >> 8)
	sjmp	00740$
00739$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00741$
	mov	_main_sloc0_1_0,#___str_160
	mov	(_main_sloc0_1_0 + 1),#(___str_160 >> 8)
	sjmp	00742$
00741$:
	mov	_main_sloc0_1_0,#___str_161
	mov	(_main_sloc0_1_0 + 1),#(___str_161 >> 8)
00742$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00740$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc5
	push	ar7
	push	ar6
	lcall	_LCD_guigio
;	src\main.c:603: LCD_guigio(0xc0," ",gio[3],phut[3],251,0);
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0003)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0003)
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	clr	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
;	src\main.c:604: case 3: LCD_guigio(0x80," ",gio[0],phut[0],251,0);LCD_guigio(0x85," ",gio[1],phut[1],251,0);
00413$:
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	clr	_LCD_guigio_PARM_6
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	clr	_LCD_guigio_PARM_6
	mov	dpl,#0x85
	lcall	_LCD_guigio
;	src\main.c:605: LCD_guigio(0x8a," ",gio[2],phut[2],251,0);LCD_guidulieu(' ');
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0002)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0002)
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	clr	_LCD_guigio_PARM_6
	mov	dpl,#0x8a
	lcall	_LCD_guigio
	mov	dpl,#0x20
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:606: }
00414$:
;	src\main.c:607: if(so_motor!=4){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,02621$
	sjmp	00419$
02621$:
;	src\main.c:608: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,flip_pulse);
	jnb	_GPS_time,00743$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00744$
00743$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00745$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00746$
00745$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00746$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00744$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
00419$:
;	src\main.c:611: if(!phim_mode_doi && !cam_vao){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jz	02624$
	ljmp	00643$
02624$:
	jnb	_cam_vao,02625$
	ljmp	00643$
02625$:
;	src\main.c:612: phim_mode_nhan=0;
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:613: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:614: delay_ve_kim = canhkim = may_canh_kim = 0;
	mov	dptr,#_may_canh_kim
	clr	a
	movx	@dptr,a
	mov	dptr,#_canhkim
	movx	@dptr,a
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
;	src\main.c:615: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:616: sub_mode = GIOKIM;
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:617: motor_index = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:618: if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x02,00421$
	cjne	r4,#0x00,00421$
	jnb	_P12,00421$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00421$:
;	src\main.c:619: AmplyRelay = 0;
;	assignBit
	clr	_P42
;	src\main.c:620: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	src\main.c:621: if(phim_back_nhan) phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02629$
	sjmp	00426$
02629$:
	ljmp	00643$
00426$:
;	src\main.c:623: baocaosms(CHINH,"\rchinh gio bang tay");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_163
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:624: if(bat_phone_phu)baocaosms(PHU,"\r*chinh gio bang tay*");
	jb	_bat_phone_phu,02630$
	ljmp	00643$
02630$:
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_164
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:627: break;
	ljmp	00643$
;	src\main.c:629: case SELECT:
00431$:
;	src\main.c:630: if(phim_mode_nhan){
;	src\main.c:631: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02631$
	sjmp	00438$
02631$:
;	src\main.c:632: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:633: if(++sub_mode==MP3TEST && !(eep_mp3%4)) sub_mode++;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00433$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jnz	00433$
	mov	dptr,#_sub_mode
	mov	a,r4
	inc	a
	movx	@dptr,a
00433$:
;	src\main.c:634: if(sub_mode>MAX_MODE)sub_mode = 0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x06
	jnc	00436$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00436$:
;	src\main.c:635: chop=0;
;	assignBit
	clr	_chop
00438$:
;	src\main.c:637: if(phim_cong_nhan){
;	src\main.c:638: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02637$
	sjmp	00440$
02637$:
;	src\main.c:639: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:640: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:641: chop=0;
;	assignBit
	clr	_chop
00440$:
;	src\main.c:643: if(phim_back_nhan){
;	src\main.c:644: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02638$
	ljmp	00465$
02638$:
;	src\main.c:645: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:646: mode = sub_mode;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	dptr,#_mode
	movx	@dptr,a
;	src\main.c:647: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:648: motor_index  = motor_run_check();
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	src\main.c:649: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
;	src\main.c:650: if(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	02639$
	ljmp	00643$
02639$:
;	src\main.c:651: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:652: LCD_guichuoi(mode_select[mode]);
	mov	dptr,#_mode
	movx	a,@dptr
	mov	b,#0x11
	mul	ab
	add	a,#_mode_select
	mov	r3,a
	mov	a,#(_mode_select >> 8)
	addc	a,b
	mov	r4,a
	mov	r2,#0x80
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:653: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x06
	jnc	02640$
	ljmp	00643$
02640$:
	mov	a,r4
	add	a,r4
	add	a,r4
	mov	dptr,#02641$
	jmp	@a+dptr
02641$:
	ljmp	00643$
	ljmp	00441$
	ljmp	00450$
	ljmp	00451$
	ljmp	00452$
	ljmp	00453$
	ljmp	00460$
;	src\main.c:654: case GIOKIM : if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,1);
00441$:
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00443$
	jnb	_may_dc,00747$
	mov	r2,#___str_156
	mov	r3,#(___str_156 >> 8)
	sjmp	00748$
00747$:
	mov	r2,#___str_157
	mov	r3,#(___str_157 >> 8)
00748$:
	mov	_LCD_guigio_PARM_2,r2
	mov	(_LCD_guigio_PARM_2 + 1),r3
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0x00
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
	sjmp	00444$
00443$:
;	src\main.c:655: else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  "); }
	cjne	r4,#0x03,02645$
02645$:
	jnc	00749$
	mov	r3,#0xc0
	mov	r4,#0x00
	sjmp	00750$
00749$:
	mov	r3,#0x80
	mov	r4,#0x00
00750$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,02647$
02647$:
	jnc	00751$
	mov	r3,#0xc7
	mov	r4,#0x00
	sjmp	00752$
00751$:
	mov	r3,#0x87
	mov	r4,#0x00
00752$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00444$:
;	src\main.c:656: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jc	02649$
	ljmp	00643$
02649$:
;	src\main.c:657: LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0002)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0002)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
;	src\main.c:658: if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00446$
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0003)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0003)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc7
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00643$
00446$:
;	src\main.c:659: else LCD_guichuoi("         ");   
	mov	dptr,#___str_165
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:661: break;
	ljmp	00643$
;	src\main.c:662: case GIOTHUC: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,1); 
00450$:
	jnb	_GPS_time,00753$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00754$
00753$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00755$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00756$
00755$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00756$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00754$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
	mov	_LCD_guigio_PARM_5,_second
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	lcall	_LCD_guigio
;	src\main.c:663: giotemp=hour;phuttemp=minute;break;
	mov	r7,_hour
	mov	r6,_minute
	ljmp	00643$
;	src\main.c:664: case CANHKIM: LCD_guichuoi("\300MAY 1          ");LCD_blinkXY(DUOI,4);break;
00451$:
	mov	dptr,#___str_166
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
	ljmp	00643$
;	src\main.c:665: case MP3TEST: LCD_guigio(0xc0,"000 ",0,0,251,1);LCD_guigio(0xc8," ",day,month,100+year,1);giotemp=phuttemp=song_name=0;
00452$:
	mov	_LCD_guigio_PARM_2,#___str_167
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_167 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,#0x00
	mov	_LCD_guigio_PARM_4,#0x00
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	lcall	_LCD_guigio
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	dptr,#_day
	movx	a,@dptr
	mov	_LCD_guigio_PARM_3,a
	mov	dptr,#_month
	movx	a,@dptr
	mov	_LCD_guigio_PARM_4,a
	mov	dptr,#_year
	movx	a,@dptr
	add	a,#0x64
	mov	_LCD_guigio_PARM_5,a
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc8
	lcall	_LCD_guigio
	mov	dptr,#_song_name
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	r6,#0x00
	mov	r7,#0x00
;	src\main.c:666: thutemp = date;ngaytemp = day;thangtemp = month; namtemp = year;
	mov	dptr,#_date
	movx	a,@dptr
	mov	dptr,#_main_thutemp_65536_253
	movx	@dptr,a
	mov	dptr,#_day
	movx	a,@dptr
	mov	dptr,#_main_ngaytemp_65536_253
	movx	@dptr,a
	mov	dptr,#_month
	movx	a,@dptr
	mov	dptr,#_main_thangtemp_65536_253
	movx	@dptr,a
	mov	dptr,#_year
	movx	a,@dptr
	mov	dptr,#_main_namtemp_65536_253
	movx	@dptr,a
;	src\main.c:667: LCD_guilenh(0xcf);
	mov	dpl,#0xcf
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:668: LCD_guidulieu(thutemp+'0');
	mov	dptr,#_main_thutemp_65536_253
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:669: break;
	ljmp	00643$
;	src\main.c:670: case DIENTHOAI: if(nosim) LCD_guichuoi("\300  KHONG CO SIM  ");
00453$:
	jnb	_nosim,00458$
	mov	dptr,#___str_168
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00643$
00458$:
;	src\main.c:671: else if(!gsm_pw) LCD_guichuoi("\300  GSM TAT NGUON ");
	jb	_P20,00455$
	mov	dptr,#___str_169
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00643$
00455$:
;	src\main.c:673: kiemtratinhieu();kiemtrataikhoan();
	push	ar7
	push	ar6
	lcall	_kiemtratinhieu
	lcall	_kiemtrataikhoan
;	src\main.c:674: LCD_xoa(DUOI);LCD_guilenh(0xc0);LCD_guichuoi(lenh_sms);
	mov	dpl,#0xc0
	lcall	_LCD_xoa
	mov	dpl,#0xc0
	lcall	_LCD_guilenh
	mov	dptr,#_lenh_sms
	mov	b,#0x00
	lcall	_LCD_guichuoi
;	src\main.c:675: LCD_guilenh(0x80);phone[10]=0;LCD_guichuoi(phone);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
	mov	dptr,#(_phone + 0x000a)
	clr	a
	movx	@dptr,a
	mov	dptr,#_phone
	mov	b,#0x00
	lcall	_LCD_guichuoi
;	src\main.c:676: LCD_guilenh(0x8e);LCD_guidulieu(signal/10+'0');LCD_guidulieu(signal%10+'0');
	mov	dpl,#0x8e
	lcall	_LCD_guilenh
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#_signal
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:678: break;
	ljmp	00643$
;	src\main.c:679: case DATE:  LCD_guichuoi("\300  ");LCD_guidulieu(day/10+'0');LCD_guidulieu(day%10+'0');
00460$:
	mov	dptr,#___str_170
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	mov	dptr,#_day
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#_day
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:680: LCD_guichuoi(" - ");LCD_guidulieu(month/10+'0');LCD_guidulieu(month%10+'0');
	mov	dptr,#___str_171
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_month
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#_month
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:681: LCD_guichuoi(" - ");LCD_guidulieu(year/10+'0');LCD_guidulieu(year%10+'0');LCD_guichuoi("  ");
	mov	dptr,#___str_171
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_year
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__divsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#_year
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:685: break;
	ljmp	00643$
00465$:
;	src\main.c:688: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,mode_wait,flip_pulse);
	jnb	_GPS_time,00757$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00758$
00757$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00759$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00760$
00759$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00760$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00758$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	dptr,#_mode_wait
	movx	a,@dptr
	mov	_LCD_guigio_PARM_5,a
	mov	_LCD_guigio_PARM_3,_hour
	mov	_LCD_guigio_PARM_4,_minute
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
;	src\main.c:689: LCD_chop(TREN,mode_select[sub_mode]);		
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	b,#0x11
	mul	ab
	add	a,#_mode_select
	mov	r3,a
	mov	a,#(_mode_select >> 8)
	addc	a,b
	mov	r4,a
	mov	_LCD_chop_PARM_2,r3
	mov	(_LCD_chop_PARM_2 + 1),r4
	mov	(_LCD_chop_PARM_2 + 2),#0x80
	mov	dpl,#0x80
	lcall	_LCD_chop
	pop	ar6
	pop	ar7
;	src\main.c:690: break;
	ljmp	00643$
;	src\main.c:691: case GIOKIM:
00466$:
;	src\main.c:692: LCD_blinkXY((sub_mode<8 && so_motor>2)?TREN:DUOI,so_motor==1?(7+sub_mode+sub_mode/2):(2+sub_mode%8+sub_mode%8/2+sub_mode%8/4));
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,02658$
02658$:
	jnc	00761$
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jnc	00761$
	mov	r3,#0x80
	mov	r4,#0x00
	sjmp	00762$
00761$:
	mov	r3,#0xc0
	mov	r4,#0x00
00762$:
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00766$
	push	ar3
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	add	a,#0x07
	mov	r2,a
	mov	ar3,r4
	mov	r4,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar2
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r2
	mov	_main_sloc1_1_0,a
	pop	ar3
	sjmp	00767$
00766$:
	push	ar3
	mov	dptr,#_sub_mode
	movx	a,@dptr
	anl	a,#0x07
	mov	_main_sloc2_1_0,a
	mov	(_main_sloc2_1_0 + 1),#0x00
	mov	r3,_main_sloc2_1_0
	mov	a,#0x02
	add	a,r3
	mov	_main_sloc0_1_0,a
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_main_sloc2_1_0
	mov	dph,(_main_sloc2_1_0 + 1)
	push	ar7
	push	ar6
	lcall	__divsint
	mov	a,dpl
	add	a,_main_sloc0_1_0
	mov	r3,a
	mov	__divsint_PARM_2,#0x04
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,_main_sloc2_1_0
	mov	dph,(_main_sloc2_1_0 + 1)
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,r3
	mov	_main_sloc1_1_0,a
;	src\main.c:973: WATCHDOG;
	pop	ar3
;	src\main.c:692: LCD_blinkXY((sub_mode<8 && so_motor>2)?TREN:DUOI,so_motor==1?(7+sub_mode+sub_mode/2):(2+sub_mode%8+sub_mode%8/2+sub_mode%8/4));
00767$:
	mov	_LCD_blinkXY_PARM_2,_main_sloc1_1_0
	mov	dpl,r3
	push	ar7
	push	ar6
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
;	src\main.c:693: if(!phim_mode_doi){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00468$
;	src\main.c:694: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
;	src\main.c:695: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:696: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:697: gio[0] = gio[0]%12;
	mov	r3,_gio
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	_gio,r3
;	src\main.c:698: gio[1] = gio[1]%12;
	mov	r3,(_gio + 0x0001)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0001),r3
;	src\main.c:699: gio[2] = gio[2]%12;
	mov	r3,(_gio + 0x0002)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0002),r3
;	src\main.c:700: gio[3] = gio[3]%12;
	mov	r3,(_gio + 0x0003)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0003),r3
;	src\main.c:701: luu_gio_kim();	
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00468$:
;	src\main.c:703: if(phim_cong_nhan){
;	src\main.c:704: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02664$
	ljmp	00509$
02664$:
;	src\main.c:705: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:706: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0f
	jnc	02665$
	ljmp	00499$
02665$:
	mov	a,r4
	add	a,#(02666$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(02667$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02666$:
	.db	00472$
	.db	00479$
	.db	00489$
	.db	00496$
	.db	00472$
	.db	00479$
	.db	00489$
	.db	00496$
	.db	00472$
	.db	00479$
	.db	00489$
	.db	00496$
	.db	00472$
	.db	00479$
	.db	00489$
	.db	00496$
02667$:
	.db	00472$>>8
	.db	00479$>>8
	.db	00489$>>8
	.db	00496$>>8
	.db	00472$>>8
	.db	00479$>>8
	.db	00489$>>8
	.db	00496$>>8
	.db	00472$>>8
	.db	00479$>>8
	.db	00489$>>8
	.db	00496$>>8
	.db	00472$>>8
	.db	00479$>>8
	.db	00489$>>8
	.db	00496$>>8
;	src\main.c:708: case GIO3CHUC : case GIO4CHUC  :
00472$:
;	src\main.c:709: if(gio[sub_mode/4]>13)gio[sub_mode/4]%=10;
	mov	ar2,r4
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gio
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	add	a,#0xff - 0x0d
	jnc	00474$
	push	ar6
	mov	ar2,r3
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r2
	mov	dph,r6
	push	ar7
	push	ar1
	lcall	__modsint
	mov	r2,dpl
	pop	ar1
	pop	ar7
	mov	@r1,ar2
	pop	ar6
	ljmp	00499$
00474$:
;	src\main.c:710: else gio[sub_mode/4] +=10;
	mov	a,#0x0a
	add	a,r3
	mov	@r1,a
;	src\main.c:711: break;
	ljmp	00499$
;	src\main.c:713: case GIO3DVI  : case GIO4DVI   :
00479$:
;	src\main.c:714: if(gio[sub_mode/4]>22) gio[sub_mode/4] = 20;
	mov	ar2,r4
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_gio
	mov	r1,a
	mov	a,@r1
	mov	_main_sloc2_1_0,a
	add	a,#0xff - 0x16
	jnc	00484$
	mov	@r1,#0x14
	ljmp	00499$
00484$:
;	src\main.c:715: else if(gio[sub_mode/4]%10==9) gio[sub_mode/4]-=9;
	push	ar1
	mov	r2,_main_sloc2_1_0
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar1
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar6
	pop	ar7
	cjne	r2,#0x09,02670$
	cjne	r3,#0x00,02670$
	sjmp	02671$
02670$:
	pop	ar1
	sjmp	00481$
02671$:
	pop	ar1
	mov	a,_main_sloc2_1_0
	mov	r3,a
	add	a,#0xf7
	mov	@r1,a
	sjmp	00499$
00481$:
;	src\main.c:716: else gio[sub_mode/4]++;
	mov	a,_main_sloc2_1_0
	inc	a
	mov	@r1,a
;	src\main.c:717: break;
;	src\main.c:719: case PHUT3CHUC: case PHUT4CHUC :
	sjmp	00499$
00489$:
;	src\main.c:720: if(phut[sub_mode/4]>49) phut[sub_mode/4]-=50;
	mov	ar2,r4
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_phut
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	add	a,#0xff - 0x31
	jnc	00491$
	mov	ar2,r3
	mov	a,r2
	add	a,#0xce
	mov	@r1,a
	sjmp	00499$
00491$:
;	src\main.c:721: else phut[sub_mode/4]+=10;
	mov	a,#0x0a
	add	a,r3
	mov	@r1,a
;	src\main.c:722: break;
;	src\main.c:724: case PHUT3DVI : case PHUT4DVI  :
	sjmp	00499$
00496$:
;	src\main.c:725: if(!(++phut[sub_mode/4]%10)) phut[sub_mode/4]-=10;
	mov	r3,#0x00
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__divsint
	mov	a,dpl
	add	a,#_phut
	mov	r1,a
	mov	ar4,@r1
	inc	r4
	mov	@r1,ar4
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r3
	push	ar1
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00499$
	mov	a,@r1
	mov	r4,a
	add	a,#0xf6
	mov	@r1,a
;	src\main.c:727: }
00499$:
;	src\main.c:729: if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,flip_pulse);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00501$
	jnb	_may_dc,00768$
	mov	r2,#___str_156
	mov	r3,#(___str_156 >> 8)
	sjmp	00769$
00768$:
	mov	r2,#___str_157
	mov	r3,#(___str_157 >> 8)
00769$:
	mov	_LCD_guigio_PARM_2,r2
	mov	(_LCD_guigio_PARM_2 + 1),r3
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0x00
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
	sjmp	00502$
00501$:
;	src\main.c:730: else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  ");}
	cjne	r4,#0x03,02677$
02677$:
	jnc	00770$
	mov	r3,#0xc0
	mov	r4,#0x00
	sjmp	00771$
00770$:
	mov	r3,#0x80
	mov	r4,#0x00
00771$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,_gio
	mov	_LCD_guigio_PARM_4,_phut
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,02679$
02679$:
	jnc	00772$
	mov	r3,#0xc7
	mov	r4,#0x00
	sjmp	00773$
00772$:
	mov	r3,#0x87
	mov	r4,#0x00
00773$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00502$:
;	src\main.c:731: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jnc	00509$
;	src\main.c:732: LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0002)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0002)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
;	src\main.c:733: if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00504$
	mov	_LCD_guigio_PARM_2,#___str_158
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_158 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0003)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0003)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc7
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_158
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	sjmp	00509$
00504$:
;	src\main.c:734: else LCD_guichuoi("         ");   
	mov	dptr,#___str_165
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00509$:
;	src\main.c:737: if(phim_back_nhan){
;	src\main.c:738: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02684$
	sjmp	00514$
02684$:
;	src\main.c:739: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:740: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00511$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00514$
00511$:
;	src\main.c:741: else sub_mode = 4*so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r4,a
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
00514$:
;	src\main.c:744: if(phim_mode_nhan){
	jb	_phim_mode_nhan,02686$
	ljmp	00643$
02686$:
;	src\main.c:746: phim_mode_nhan = 0;
	push	ar6
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:747: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:748: if(++sub_mode>(4*so_motor-1)){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r3,#0x00
	add	a,acc
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
	dec	r4
	cjne	r4,#0xff,02687$
	dec	r3
02687$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r2,a
	mov	r6,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	jc	02688$
	ljmp	00643$
02688$:
;	src\main.c:749: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
;	src\main.c:750: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:751: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:752: gio[0] = gio[0]%12;
	mov	r3,_gio
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	_gio,r3
;	src\main.c:753: gio[1] = gio[1]%12;
	mov	r3,(_gio + 0x0001)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0001),r3
;	src\main.c:754: gio[2] = gio[2]%12;
	mov	r3,(_gio + 0x0002)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0002),r3
;	src\main.c:755: gio[3] = gio[3]%12;
	mov	r3,(_gio + 0x0003)
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	(_gio + 0x0003),r3
;	src\main.c:756: luu_gio_kim();
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
;	src\main.c:761: break;
	ljmp	00643$
;	src\main.c:762: case GIOTHUC:
00519$:
;	src\main.c:763: LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	add	a,#0x07
	mov	r3,a
	mov	r2,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r2
	mov	dpl,r4
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	pop	ar3
	mov	a,r2
	add	a,r3
	mov	_LCD_blinkXY_PARM_2,a
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
;	src\main.c:764: if(eep_gpson && !phim_mode_doi){
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00523$
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00523$
;	src\main.c:765: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:766: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:767: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:768: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	src\main.c:769: if(eep_gpson) gsm_thietlapngaygiothuc();//gsm_laygio_gps();
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00521$
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
	pop	ar6
	pop	ar7
00521$:
;	src\main.c:771: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00774$
	mov	a,_hour
	add	a,#0xf4
	mov	r4,a
	sjmp	00775$
00774$:
	mov	r4,_hour
00775$:
	mov	_hour12,r4
00523$:
;	src\main.c:773: if(phim_cong_nhan){
;	src\main.c:774: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02693$
	ljmp	00545$
02693$:
;	src\main.c:775: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:776: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	02694$
	ljmp	00543$
02694$:
	mov	a,r4
	add	a,r4
;	src\main.c:777: case GIOCHUC  :
	mov	dptr,#02695$
	jmp	@a+dptr
02695$:
	sjmp	00525$
	sjmp	00529$
	sjmp	00536$
	sjmp	00540$
00525$:
;	src\main.c:778: if(giotemp>13)giotemp%=10;
	mov	a,r7
	add	a,#0xff - 0x0d
	jnc	00527$
	mov	ar3,r7
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar6
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	mov	ar7,r3
	sjmp	00543$
00527$:
;	src\main.c:779: else giotemp +=10;
	mov	ar4,r7
	mov	a,#0x0a
	add	a,r4
	mov	r7,a
;	src\main.c:780: break;
;	src\main.c:781: case GIODVI   :
	sjmp	00543$
00529$:
;	src\main.c:782: if(giotemp>22) giotemp = 20;
	mov	a,r7
	add	a,#0xff - 0x16
	jnc	00534$
	mov	r7,#0x14
	sjmp	00543$
00534$:
;	src\main.c:783: else if(giotemp%10==9) giotemp-=9;
	mov	ar3,r7
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
	cjne	r3,#0x09,00531$
	cjne	r4,#0x00,00531$
	mov	ar4,r7
	mov	a,r4
	add	a,#0xf7
	mov	r7,a
	sjmp	00543$
00531$:
;	src\main.c:784: else giotemp++;
	inc	r7
;	src\main.c:785: break;
;	src\main.c:786: case PHUTCHUC :
	sjmp	00543$
00536$:
;	src\main.c:787: if(phuttemp>49) phuttemp-=50;
	mov	a,r6
	add	a,#0xff - 0x31
	jnc	00538$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xce
	mov	r6,a
	sjmp	00543$
00538$:
;	src\main.c:788: else phuttemp+=10;
	mov	ar4,r6
	mov	a,#0x0a
	add	a,r4
	mov	r6,a
;	src\main.c:789: break;
;	src\main.c:790: case PHUTDVI  :
	sjmp	00543$
00540$:
;	src\main.c:791: if(!(++phuttemp%10)) phuttemp-=10;
	inc	r6
	mov	ar3,r6
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00543$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xf6
	mov	r6,a
;	src\main.c:793: }
00543$:
;	src\main.c:795: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),giotemp,phuttemp,mode_wait,1);
	jnb	_GPS_time,00776$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00777$
00776$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00778$
	mov	_main_sloc2_1_0,#___str_2
	mov	(_main_sloc2_1_0 + 1),#(___str_2 >> 8)
	sjmp	00779$
00778$:
	mov	_main_sloc2_1_0,#___str_1
	mov	(_main_sloc2_1_0 + 1),#(___str_1 >> 8)
00779$:
	mov	r3,_main_sloc2_1_0
	mov	r4,(_main_sloc2_1_0 + 1)
00777$:
	mov	_LCD_guigio_PARM_2,r3
	mov	(_LCD_guigio_PARM_2 + 1),r4
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	dptr,#_mode_wait
	movx	a,@dptr
	mov	_LCD_guigio_PARM_5,a
	mov	_LCD_guigio_PARM_3,r7
	mov	_LCD_guigio_PARM_4,r6
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	pop	ar6
	pop	ar7
00545$:
;	src\main.c:798: if(phim_back_nhan){
;	src\main.c:799: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02704$
	sjmp	00550$
02704$:
;	src\main.c:800: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:801: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00547$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00550$
00547$:
;	src\main.c:802: else sub_mode = 3;
	mov	dptr,#_sub_mode
	mov	a,#0x03
	movx	@dptr,a
00550$:
;	src\main.c:805: if(phim_mode_nhan){
;	src\main.c:806: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02706$
	ljmp	00643$
02706$:
;	src\main.c:807: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:808: if(++sub_mode>3){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jc	02707$
	ljmp	00643$
02707$:
;	src\main.c:809: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
	pop	ar6
	pop	ar7
;	src\main.c:810: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:811: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:812: hour = giotemp;
	mov	_hour,r7
;	src\main.c:813: minute = phuttemp;
	mov	_minute,r6
;	src\main.c:814: rtc_settime(hour,minute,second);
	mov	_rtc_settime_PARM_2,_minute
	mov	_rtc_settime_PARM_3,_second
	mov	dpl,_hour
	push	ar7
	push	ar6
	lcall	_rtc_settime
;	src\main.c:815: hour12 = hour % 12;
	mov	r3,_hour
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
	mov	_hour12,r3
;	src\main.c:816: GPS_time = 0;
;	assignBit
	clr	_GPS_time
;	src\main.c:817: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:818: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	src\main.c:821: break;
	ljmp	00643$
;	src\main.c:822: case MP3TEST:
00555$:
;	src\main.c:824: LCD_blinkXY(DUOI,sub_mode+(sub_mode>2)+(sub_mode>6));
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,#0x02
	subb	a,r4
	clr	a
	rlc	a
	add	a,r4
	mov	r3,a
	clr	c
	mov	a,#0x06
	subb	a,r4
	clr	a
	rlc	a
	add	a,r3
	mov	_LCD_blinkXY_PARM_2,a
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
;	src\main.c:825: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:826: if(!phim_mode_doi){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00559$
;	src\main.c:827: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:828: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:829: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00557$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00557$:
;	src\main.c:830: AmplyRelay = 0;
;	assignBit
	clr	_P42
00559$:
;	src\main.c:832: if(phim_cong_nhan){
;	src\main.c:833: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02710$
	ljmp	00616$
02710$:
;	src\main.c:834: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:835: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0c
	jnc	02711$
	ljmp	00614$
02711$:
	mov	a,r4
	add	a,#(02712$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(02713$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02712$:
	.db	00560$
	.db	00561$
	.db	00562$
	.db	00563$
	.db	00567$
	.db	00574$
	.db	00578$
	.db	00581$
	.db	00587$
	.db	00594$
	.db	00600$
	.db	00607$
	.db	00611$
02713$:
	.db	00560$>>8
	.db	00561$>>8
	.db	00562$>>8
	.db	00563$>>8
	.db	00567$>>8
	.db	00574$>>8
	.db	00578$>>8
	.db	00581$>>8
	.db	00587$>>8
	.db	00594$>>8
	.db	00600$>>8
	.db	00607$>>8
	.db	00611$>>8
;	src\main.c:836: case MP3SONGTRAM  :
00560$:
;	src\main.c:837: song_name = (song_name+100)%1000;
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x64
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__moduint_PARM_2,#0xe8
	mov	(__moduint_PARM_2 + 1),#0x03
	push	ar7
	push	ar6
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_song_name
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	src\main.c:838: break;
	ljmp	00614$
;	src\main.c:839: case MP3SONGCHUC  :
00561$:
;	src\main.c:840: song_name = (song_name/100*100) + (song_name-song_name/100*100+10)%100;
	push	ar6
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	pop	ar3
	pop	ar4
	pop	ar6
	mov	dptr,#0x0064
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r2,dpl
	mov	r6,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	a,#0x0a
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	__moduint_PARM_2,#0x64
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar6
	push	ar2
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dptr,#_song_name
	mov	a,r3
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	src\main.c:841: break;
	pop	ar6
	ljmp	00614$
;	src\main.c:842: case MP3SONGDVI  :
00562$:
;	src\main.c:843: song_name = (song_name/10*10) + (song_name-song_name/10*10+1)%10;
	push	ar6
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	__divuint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	pop	ar3
	pop	ar4
	pop	ar6
	mov	dptr,#0x000a
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r2,dpl
	mov	r6,dph
	pop	ar3
	pop	ar4
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar6
	push	ar2
	lcall	__moduint
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dptr,#_song_name
	mov	a,r3
	add	a,r2
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	src\main.c:844: break;
	pop	ar6
	ljmp	00614$
;	src\main.c:845: case MP3GIOCHUC  :
00563$:
;	src\main.c:846: if(giotemp>13)giotemp%=10;
	mov	a,r7
	add	a,#0xff - 0x0d
	jnc	00565$
	mov	ar3,r7
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar6
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	mov	ar7,r3
	ljmp	00614$
00565$:
;	src\main.c:847: else giotemp +=10;
	mov	ar4,r7
	mov	a,#0x0a
	add	a,r4
	mov	r7,a
;	src\main.c:848: break;
	ljmp	00614$
;	src\main.c:849: case MP3GIODVI   :
00567$:
;	src\main.c:850: if(giotemp>22) giotemp = 20;
	mov	a,r7
	add	a,#0xff - 0x16
	jnc	00572$
	mov	r7,#0x14
	ljmp	00614$
00572$:
;	src\main.c:851: else if(giotemp%10==9) giotemp-=9;
	mov	ar3,r7
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
	cjne	r3,#0x09,00569$
	cjne	r4,#0x00,00569$
	mov	ar4,r7
	mov	a,r4
	add	a,#0xf7
	mov	r7,a
	ljmp	00614$
00569$:
;	src\main.c:852: else giotemp++;
	inc	r7
;	src\main.c:853: break;
	ljmp	00614$
;	src\main.c:854: case MP3PHUTCHUC :
00574$:
;	src\main.c:855: if(phuttemp>49) phuttemp-=50;
	mov	a,r6
	add	a,#0xff - 0x31
	jnc	00576$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xce
	mov	r6,a
	ljmp	00614$
00576$:
;	src\main.c:856: else phuttemp+=10;
	mov	ar4,r6
	mov	a,#0x0a
	add	a,r4
	mov	r6,a
;	src\main.c:857: break;
	ljmp	00614$
;	src\main.c:858: case MP3PHUTDVI  :
00578$:
;	src\main.c:859: phuttemp=phuttemp+(eep_mp3>3?5:1);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	add	a,#0xff - 0x03
	jnc	00780$
	mov	r3,#0x05
	mov	r4,#0x00
	sjmp	00781$
00780$:
	mov	r3,#0x01
	mov	r4,#0x00
00781$:
	mov	ar4,r6
	mov	a,r3
	add	a,r4
;	src\main.c:860: if(!(phuttemp%10)) phuttemp-=10;
	mov	r6,a
	mov	r3,a
	mov	r4,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r4
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	02720$
	ljmp	00614$
02720$:
	mov	ar4,r6
	mov	a,r4
	add	a,#0xf6
	mov	r6,a
;	src\main.c:861: break;
	ljmp	00614$
;	src\main.c:862: case MP3NGAYCHUC :
00581$:
;	src\main.c:863: if(ngaytemp>21) ngaytemp%=10;
	mov	dptr,#_main_ngaytemp_65536_253
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x15
	jnc	00583$
	mov	ar2,r4
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,r2
	movx	@dptr,a
	sjmp	00584$
00583$:
;	src\main.c:864: else ngaytemp+=10;
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,#0x0a
	add	a,r4
	movx	@dptr,a
00584$:
;	src\main.c:865: if(!ngaytemp) ngaytemp = 10;
	mov	dptr,#_main_ngaytemp_65536_253
	movx	a,@dptr
	jz	02722$
	ljmp	00614$
02722$:
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,#0x0a
	movx	@dptr,a
;	src\main.c:866: break;
	ljmp	00614$
;	src\main.c:867: case MP3NGAYDVI  :
00587$:
;	src\main.c:868: if(ngaytemp>30) ngaytemp = 30;
	mov	dptr,#_main_ngaytemp_65536_253
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x1e
	jnc	00592$
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,#0x1e
	movx	@dptr,a
	ljmp	00614$
00592$:
;	src\main.c:869: else if(ngaytemp%10==9) ngaytemp-=9;
	mov	ar2,r4
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar6
	pop	ar7
	cjne	r2,#0x09,00589$
	cjne	r3,#0x00,00589$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xf7
	mov	dptr,#_main_ngaytemp_65536_253
	movx	@dptr,a
	ljmp	00614$
00589$:
;	src\main.c:870: else ngaytemp++;
	mov	dptr,#_main_ngaytemp_65536_253
	mov	a,r4
	inc	a
	movx	@dptr,a
;	src\main.c:871: break;
	ljmp	00614$
;	src\main.c:872: case MP3THANGCHUC :
00594$:
;	src\main.c:873: if(thangtemp<3) thangtemp+=10;
	mov	dptr,#_main_thangtemp_65536_253
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,02726$
02726$:
	jnc	00598$
	mov	ar3,r4
	mov	dptr,#_main_thangtemp_65536_253
	mov	a,#0x0a
	add	a,r3
	movx	@dptr,a
	ljmp	00614$
00598$:
;	src\main.c:874: else if(thangtemp>10) thangtemp-=10;
	mov	a,r4
	add	a,#0xff - 0x0a
	jc	02728$
	ljmp	00614$
02728$:
	mov	a,r4
	add	a,#0xf6
	mov	dptr,#_main_thangtemp_65536_253
	movx	@dptr,a
;	src\main.c:875: break;
;	src\main.c:876: case MP3THANGDVI  :
	sjmp	00614$
00600$:
;	src\main.c:877: if(thangtemp==9) thangtemp = 1;
	mov	dptr,#_main_thangtemp_65536_253
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x09,00605$
	mov	dptr,#_main_thangtemp_65536_253
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00614$
00605$:
;	src\main.c:878: else if(thangtemp>11) thangtemp = 10;
	mov	a,r4
	add	a,#0xff - 0x0b
	jnc	00602$
	mov	dptr,#_main_thangtemp_65536_253
	mov	a,#0x0a
	movx	@dptr,a
	sjmp	00614$
00602$:
;	src\main.c:879: else thangtemp++;
	mov	dptr,#_main_thangtemp_65536_253
	mov	a,r4
	inc	a
	movx	@dptr,a
;	src\main.c:880: break;
;	src\main.c:881: case MP3NAMCHUC :
	sjmp	00614$
00607$:
;	src\main.c:882: if(namtemp>89) namtemp-=90;
	mov	dptr,#_main_namtemp_65536_253
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x59
	jnc	00609$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xa6
	mov	dptr,#_main_namtemp_65536_253
	movx	@dptr,a
	sjmp	00614$
00609$:
;	src\main.c:883: else namtemp+=10;
	mov	dptr,#_main_namtemp_65536_253
	mov	a,#0x0a
	add	a,r4
	movx	@dptr,a
;	src\main.c:884: break;
;	src\main.c:885: case MP3NAMDVI  :
	sjmp	00614$
00611$:
;	src\main.c:886: if(!(++namtemp%10)) namtemp-=10;
	mov	dptr,#_main_namtemp_65536_253
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00614$
	mov	a,r4
	add	a,#0xf6
	mov	dptr,#_main_namtemp_65536_253
	movx	@dptr,a
;	src\main.c:889: }
00614$:
;	src\main.c:890: LCD_guigio(0xc0,"    ",giotemp,phuttemp,251,1);
	mov	_LCD_guigio_PARM_2,#___str_172
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_172 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,r7
	mov	_LCD_guigio_PARM_4,r6
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guigio
;	src\main.c:891: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	lcall	_LCD_guilenh
;	src\main.c:892: LCD_guidulieu(song_name/100+'0');
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	__divuint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:893: LCD_guidulieu(song_name/10%10+'0');
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:894: LCD_guidulieu(song_name%10 + '0');
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	lcall	__moduint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:895: LCD_guigio(0xc8," ",ngaytemp,thangtemp,100+namtemp,1);
	mov	_LCD_guigio_PARM_2,#___str_162
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_162 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	dptr,#_main_ngaytemp_65536_253
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_main_thangtemp_65536_253
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_main_namtemp_65536_253
	movx	a,@dptr
	mov	_main_sloc2_1_0,a
	push	ar6
	mov	r6,_main_sloc2_1_0
	mov	a,#0x64
	add	a,r6
	mov	_LCD_guigio_PARM_5,a
	mov	_LCD_guigio_PARM_3,r4
	mov	_LCD_guigio_PARM_4,r3
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc8
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	_LCD_guigio
	pop	ar3
;	src\main.c:896: check = (23*thangtemp/9 + ngaytemp + (thangtemp>2?!(namtemp%4):2) + namtemp + (namtemp+3)/4 + 1);
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0017
	push	ar3
	lcall	__mulint
	mov	__divsint_PARM_2,#0x09
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	r6,#0x00
	mov	a,r4
	add	a,_main_sloc0_1_0
	mov	_main_sloc0_1_0,a
	mov	a,r6
	addc	a,(_main_sloc0_1_0 + 1)
	mov	(_main_sloc0_1_0 + 1),a
	clr	c
	mov	a,#0x02
	subb	a,r3
	pop	ar6
	jnc	00782$
	mov	a,#0x03
	anl	a,_main_sloc2_1_0
	mov	r4,#0x00
	orl	a,r4
	cjne	a,#0x01,02735$
02735$:
	mov  _main_sloc3_1_0,c
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	sjmp	00783$
00782$:
	mov	r3,#0x02
	mov	r4,#0x00
00783$:
	push	ar6
	mov	a,r3
	add	a,_main_sloc0_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_main_sloc0_1_0 + 1)
	mov	r4,a
	mov	dptr,#_main_namtemp_65536_253
	movx	a,@dptr
	mov	r2,a
	mov	r6,#0x00
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	push	ar7
	push	ar4
	push	ar3
	lcall	__divsint
	mov	r2,dpl
	mov	r6,dph
	pop	ar3
	pop	ar4
	mov	a,r2
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
;	src\main.c:897: thutemp = check%7+1; 
	mov	__moduint_PARM_2,#0x07
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	mov	r6,dph
	inc	r4
	mov	dptr,#_main_thutemp_65536_253
	mov	a,r4
	movx	@dptr,a
;	src\main.c:898: LCD_guilenh(0xcf);
	mov	dpl,#0xcf
	push	ar6
	push	ar4
	lcall	_LCD_guilenh
	pop	ar4
;	src\main.c:899: LCD_guidulieu(thutemp+'0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:973: WATCHDOG;
	pop	ar6
;	src\main.c:899: LCD_guidulieu(thutemp+'0');
00616$:
;	src\main.c:903: if(phim_back_nhan){
;	src\main.c:904: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02736$
	sjmp	00621$
02736$:
;	src\main.c:905: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:906: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00618$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00621$
00618$:
;	src\main.c:908: song_name = 0;
	mov	dptr,#_song_name
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src\main.c:909: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:910: LCD_guichuoi("000 ");
	mov	dptr,#___str_167
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:911: mp3_play(9,0,0);
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00621$:
;	src\main.c:916: if(phim_mode_nhan){
;	src\main.c:918: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02738$
	ljmp	00643$
02738$:
;	src\main.c:919: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:920: if(++sub_mode>12){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0c
	jnc	00627$
;	src\main.c:921: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:922: mp3_play(eep_mp3>3?thutemp:10,giotemp,phuttemp);
	mov	dptr,#_eep_mp3
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	add	a,#0xff - 0x03
	jnc	00784$
	mov	dptr,#_main_thutemp_65536_253
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	sjmp	00785$
00784$:
	mov	r2,#0x0a
	mov	r3,#0x00
00785$:
	mov	dpl,r2
	mov	_mp3_play_PARM_2,r7
	mov	_mp3_play_PARM_3,r6
	push	ar7
	push	ar6
	lcall	_mp3_play
;	src\main.c:923: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	src\main.c:924: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:925: LCD_guilenh(0xc3);
	mov	dpl,#0xc3
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:926: LCD_guidulieu(mp3_playing?'O':'X');
	jnb	_P12,00786$
	mov	r2,#0x4f
	mov	r3,#0x00
	sjmp	00787$
00786$:
	mov	r2,#0x58
	mov	r3,#0x00
00787$:
	mov	dpl,r2
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
	ljmp	00643$
00627$:
;	src\main.c:933: }else if(song_name && sub_mode > 2 && eep_mp3>3){
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	02742$
	ljmp	00643$
02742$:
	mov	a,r4
	add	a,#0xff - 0x02
	jc	02743$
	ljmp	00643$
02743$:
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jc	02744$
	ljmp	00643$
02744$:
;	src\main.c:934: sub_mode = 0;
	push	ar6
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:935: mp3_play(0,song_name/12,(song_name-song_name/12*12)*5);
	mov	__divuint_PARM_2,#0x0c
;	1-genFromRTrack replaced	mov	(__divuint_PARM_2 + 1),#0x00
	mov	(__divuint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar3
	push	ar2
	lcall	__divuint
	mov	r4,dpl
	pop	ar2
	pop	ar3
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	mov	r6,a
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r6,a
	mov	b,#0x05
	mul	ab
	mov	_mp3_play_PARM_3,a
	mov	_mp3_play_PARM_2,r4
	mov	dpl,#0x00
	push	ar6
	lcall	_mp3_play
;	src\main.c:936: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	src\main.c:937: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:938: LCD_guilenh(0xc3);
	mov	dpl,#0xc3
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:939: LCD_guidulieu(mp3_playing?'M':'X');
	pop	ar6
	jnb	_P12,00788$
	mov	r3,#0x4d
	mov	r4,#0x00
	sjmp	00789$
00788$:
	mov	r3,#0x58
	mov	r4,#0x00
00789$:
	mov	dpl,r3
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:943: break;
	ljmp	00643$
;	src\main.c:944: case CANHKIM:
00631$:
;	src\main.c:945: if(phim_mode_nhan){
;	src\main.c:946: phim_mode_nhan=0;
;	assignBit
	jbc	_phim_mode_nhan,02746$
	sjmp	00633$
02746$:
;	src\main.c:947: canhkim = 5; 
	mov	dptr,#_canhkim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:948: may_canh_kim = sub_mode+1;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	dptr,#_may_canh_kim
	inc	a
	movx	@dptr,a
;	src\main.c:949: delay_ve_kim = 5;
	mov	dptr,#_delay_ve_kim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:950: sub_mode = mode;
	mov	dptr,#_sub_mode
	mov	a,r5
	movx	@dptr,a
;	src\main.c:951: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:952: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
	pop	ar6
	pop	ar7
00633$:
;	src\main.c:954: if(phim_cong_nhan){
	jnb	_phim_cong_nhan,00643$
;	src\main.c:955: phim_cong_nhan = 0;
	push	ar6
;	assignBit
	clr	_phim_cong_nhan
;	src\main.c:956: if(++sub_mode>so_motor-1) sub_mode = 0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	dec	r4
	cjne	r4,#0xff,02748$
	dec	r3
02748$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r2,a
	mov	r6,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	jnc	00635$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00635$:
;	src\main.c:957: LCD_guidulieu(sub_mode+'1');
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x31
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
;	src\main.c:958: LCD_guilenh(0xc4);
	mov	dpl,#0xc4
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:960: break;
;	src\main.c:962: case DATE:
	sjmp	00643$
00639$:
;	src\main.c:964: if(phim_mode_nhan){
;	src\main.c:965: phim_mode_nhan=0;
;	assignBit
	jbc	_phim_mode_nhan,02750$
	sjmp	00643$
02750$:
;	src\main.c:966: sub_mode = mode;
	mov	dptr,#_sub_mode
	mov	a,r5
	movx	@dptr,a
;	src\main.c:967: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x07
	movx	@dptr,a
;	src\main.c:969: break;
;	src\main.c:970: default: mode = sub_mode = 0;
	sjmp	00643$
00642$:
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
	mov	dptr,#_mode
	movx	@dptr,a
;	src\main.c:971: }
00643$:
;	src\main.c:973: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\main.c:975: }
	ljmp	00645$
;------------------------------------------------------------
;Allocation info for local variables in function 'mp3_serial_interupt'
;------------------------------------------------------------
;	src\main.c:977: void mp3_serial_interupt() __interrupt 8 __using 1 {
;	-----------------------------------------
;	 function mp3_serial_interupt
;	-----------------------------------------
_mp3_serial_interupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
;	src\main.c:978: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\main.c:979: if(mp3_RI)
	mov	a,_S2CON
	jnb	acc.0,00103$
;	src\main.c:980: S2CON &= 0xFE;
	anl	_S2CON,#0xfe
00103$:
;	src\main.c:982: }
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_isr'
;------------------------------------------------------------
;	src\main.c:986: void adc_isr() __interrupt ADC_VECTOR __using 0
;	-----------------------------------------
;	 function adc_isr
;	-----------------------------------------
_adc_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	ar7
	push	ar0
	push	psw
	mov	psw,#0x00
;	src\main.c:988: ADC_CONTR = 0x83; //Clear ADC interrupt flag
	mov	_ADC_CONTR,#0x83
;	src\main.c:991: dien_ap_nguon = ADC_RES;
	mov	r7,_ADC_RES
	mov	r0,#_dien_ap_nguon
	mov	@r0,ar7
;	src\main.c:992: if(motor_index==5 && motor_index2==5){
	mov	a,#0x05
	cjne	a,_motor_index,00112$
	mov	a,#0x05
	cjne	a,_motor_index2,00112$
;	src\main.c:993: if(dien_ap_thap){
	jnb	_dien_ap_thap,00109$
;	src\main.c:994: if(dien_ap_nguon<82) ChargeRelay = 0;
	cjne	r7,#0x52,00145$
00145$:
	jnc	00104$
;	assignBit
	clr	_P22
	sjmp	00112$
00104$:
;	src\main.c:995: else if(dien_ap_nguon>110) {
	mov	a,r7
	add	a,#0xff - 0x6e
	jnc	00112$
;	src\main.c:996: dien_ap_thap = 0;
;	assignBit
	clr	_dien_ap_thap
	sjmp	00112$
00109$:
;	src\main.c:998: }else if(dien_ap_nguon<92){
	cjne	r7,#0x5c,00148$
00148$:
	jnc	00112$
;	src\main.c:999: dien_ap_thap = 1;
;	assignBit
	setb	_dien_ap_thap
;	src\main.c:1000: motor_index  = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:1001: P2 &= 0x0F;
	anl	_P2,#0x0f
00112$:
;	src\main.c:1006: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:1007: }
	pop	psw
	pop	ar0
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
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
_phone1:
	.ascii "0949847098"
	.db 0x00
_phone2:
	.ascii "0988888901"
	.db 0x00
_motor_step:
	.db #0x80	; 128
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0xc0	; 192
_mode_select:
	.ascii "      EXIT      "
	.db 0x00
	.ascii "  CHINH GIO KIM "
	.db 0x00
	.ascii " CHINH GIO THUC "
	.db 0x00
	.ascii "    CANH KIM    "
	.db 0x00
	.ascii "    TEST MP3    "
	.db 0x00
	.ascii "   DIEN THOAI   "
	.db 0x00
	.ascii " NGAY THANG NAM "
	.db 0x00
_ver:
	.ascii "_ASIA_GPS__4.7D_"
	.db 0x00
_huongdan:
	.ascii "DH,ON dong ho chay - DH,OFF dong ho dung"
	.db 0x0a
	.ascii "DH,+mm kim phut lech duong mm phut - DH,-mm lech am mm phut"
	.db 0x0a
	.ascii "DH,kkkk,kkkk,kkkk,kkkk,tttt chinh gio kim gio thuc gio tu do"
	.ascii "ng thay tttt bang auto"
	.db 0x0a
	.ascii "DH,xTD x la so may, T: D cho DC, S cho ST; D: A cho Atmel dr"
	.ascii "iver, S cho STC15 truc tiep"
	.db 0x0a
	.ascii "BC,ON bao cao dau gio - BC,OFF tat bao cao dau gio"
	.db 0x0a
	.ascii "BC gui bao cao - BC,DEN BC,MP3 bao cao den bao cao mp3"
	.db 0x0a
	.ascii "RS reset:RS,sys reset he thong - RS,sim reset gps module"
	.db 0x0a
	.ascii "RS,NG,nn,gg moi nn ngay vao gio gg:06 bo dieu khien reset"
	.db 0x0a
	.ascii "DEN,XOA xoa toan bo thong so den tat den"
	.db 0x0a
	.ascii "DEN,tttt,mmmm,tttt,mmmm,tttt,mmmm tttt,mmmm gio tat/mo den"
	.db 0x0a
	.ascii "MP3,hhmm test bai hat luc hh gio mm phut"
	.db 0x0a
	.ascii "DT,0xxxxxxxxx DT,+84xxxxxxxxx thay doi so dien thoai phu"
	.db 0x0a
	.ascii "DT,XOA xoa so dien thoai phu"
	.db 0x0a
	.ascii "DT,ON DT,OFF - bat tat dien thoai phu"
	.db 0x0a
	.ascii "DT,GOI goi lai cho so dt chinh"
	.db 0x0a
	.db 0x00
	.area CONST   (CODE)
___str_0:
	.ascii "  GPS  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii " ASIA  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "   DS  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "A/"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "ATD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii ";"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "    CALLING     "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x1a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "TK<1000 K BAOCAO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "AT+CMGS="
	.db 0x22
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x22
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "   SENDING   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "AT+CUSD=1,"
	.db 0x22
	.ascii "*101#"
	.db 0x22
	.ascii ","
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "  KIEM TRA TK   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "  KIEM TRA SDT   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "AT+CUSD=1,"
	.db 0x22
	.ascii "*110#"
	.db 0x22
	.ascii ","
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "AT+CUSD=1,"
	.db 0x22
	.ascii "*0#"
	.db 0x22
	.ascii ","
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "AT+CSQ"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii " SONG "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.ascii "89C55"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0d
	.ascii "STC15"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii " DC"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii " ST"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii " T="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii " CN,"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii " T"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii " GPS="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " DH="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii " BC="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii " XG="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii " RS="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii " TR="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii ":06"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii " DEN="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii " VOL="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii " MP3="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii " SIG="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii " DT="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "AT"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "BAT DAU BAO CAO "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0d
	.ascii "TK Chinh="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0d
	.ascii "Tai khoan con duoi 10000"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "DANG GUI BAO CAO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.db 0x0d
	.ascii "MODEN="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.db 0x0d
	.ascii "Khong co gio mo den"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.db 0x0d
	.ascii "Gio Mo Den:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "0 - "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "GUI BAO CAO DEN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii " GUI HUONG DAN  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "THIET LAP SIM800"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "AT+CSPN?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii " TEN TONG DAI  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "AT+CLTS=1"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "BAT CHE DO GPS "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "AT+COPS=2"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii " KHOI DONG GPS "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "AT+COPS=0"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii "  KET NOI GPS  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "AT+CCLK?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii " LAY TIME GPS  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii "AT+CLIP=1"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.ascii "  SENDING CLIP  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii "AT+CCALR?"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii " THIET LAP GOI "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "AT+CMGF=1"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "  SENDING CMGF  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "AT+CNMI=1,1,0,0,1"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii "  SENDING CNMI  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "AT+CMGDA="
	.db 0x22
	.ascii "DEL ALL"
	.db 0x22
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "  THIET LAP TN  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.ascii "THIET LAP TNHAN "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii "  SENDING CMGDA  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "LAY GIO VE TINH "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "AT+IPR=0"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "  SENDING IPR   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "  SENDING CLTS  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "AT+CFUN=0"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "  SENDING CFUN0  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_78:
	.ascii "AT+CFUN=1"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_79:
	.ascii "  SENDING CFUN1  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_80:
	.ascii "ATH"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_81:
	.db 0x0d
	.ascii "thay doi may va reset bo dieu khien"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_82:
	.db 0x0d
	.ascii "lenh khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_83:
	.db 0x0d
	.ascii "lenh dong ho khong hop le"
	.db 0x0d
	.ascii "Phone phu gui lenh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_84:
	.db 0x0d
	.ascii "chinh dong ho thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_85:
	.db 0x0d
	.ascii "chinh dong ho thanh cong"
	.db 0x0d
	.ascii "Phone phu gui lenh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_86:
	.db 0x0d
	.ascii "bao cao den thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_87:
	.db 0x0d
	.ascii "lenh khong hop le"
	.db 0x0d
	.ascii "Phone phu gui lenh den"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_88:
	.db 0x0d
	.ascii "bao cao thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_89:
	.db 0x0d
	.ascii "bao cao thanh cong"
	.db 0x0d
	.ascii "Phone phu gui lenh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_90:
	.db 0x0d
	.ascii "reset bo dieu khien"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_91:
	.db 0x0d
	.ascii "dat reset thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_92:
	.db 0x0d
	.ascii "dat reset khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_93:
	.db 0x0d
	.ascii "reset gsm sau10s"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_94:
	.db 0x0d
	.ascii "lenh reset khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_95:
	.db 0x0d
	.ascii "xoa gio den thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_96:
	.db 0x0d
	.ascii "lenh den thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_97:
	.db 0x0d
	.ascii "thong so den khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_98:
	.db 0x0d
	.ascii "Khong Co Module Mp3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_99:
	.db 0x0d
	.ascii "Dung Mp3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_100:
	.db 0x0d
	.ascii "Bat mp3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_101:
	.db 0x0d
	.ascii "Tat mp3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_102:
	.db 0x0d
	.ascii "Test mp3 thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_103:
	.db 0x0d
	.ascii "khong dung gio phat hoac mp3 loi"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_104:
	.db 0x0d
	.ascii "Mp3 dang choi nhac nen chua the test"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_105:
	.db 0x0d
	.ascii "Lenh MP3 khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_106:
	.db 0x0d
	.ascii "Bat GPS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_107:
	.db 0x0d
	.ascii "Tat GPS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_108:
	.db 0x0d
	.ascii "Dang goi dien thoai ve ...."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_109:
	.db 0x0d
	.ascii "ghi phone phu moi thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_110:
	.db 0x0d
	.ascii "thay doi phone phu khong thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_111:
	.db 0x0d
	.ascii "Xoa phone phu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_112:
	.db 0x0d
	.ascii "lenh khong thanh cong do chua khoi tao phone phu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_113:
	.db 0x0d
	.ascii "Bat phone phu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_114:
	.db 0x0d
	.ascii "Tat phone phu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_115:
	.db 0x0d
	.ascii "Lenh phone phu khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_116:
	.db 0x0d
	.ascii "Lenh khong hop le"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_117:
	.db 0x0d
	.ascii "Lenh khong hop le"
	.db 0x0d
	.ascii "Phone phu gui lenh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_118:
	.ascii "THIET LAP EEPROM"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_119:
	.ascii "POWER ON SIM800 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_120:
	.ascii "  KHOI TAO MP3  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_121:
	.db 0x80
	.ascii " NHA PHAT TRIEN"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_122:
	.db 0xc0
	.ascii "MAY:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_123:
	.db 0xc5
	.ascii " DC "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_124:
	.db 0xc5
	.ascii " ST "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_125:
	.db 0xc9
	.ascii "C55 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_126:
	.db 0xc9
	.ascii "STC "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_127:
	.db 0xcd
	.ascii "S:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_128:
	.db 0xc0
	.ascii "P:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_129:
	.ascii " T:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_130:
	.ascii " G:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_131:
	.ascii " M:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_132:
	.db 0xc5
	.ascii " __ "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_133:
	.db 0xc9
	.ascii "___"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_134:
	.db 0x80
	.ascii "      SAVE      "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_135:
	.db 0xc0
	.ascii "MODE:OK    RS:BO"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_136:
	.ascii "KIEM TRA GIO RTC"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_137:
	.ascii "KIEM MOTOR 1 - 3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_138:
	.ascii "KIEM MOTOR 2 - 4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_139:
	.ascii "THIET LAP MOTOR "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_140:
	.db 0x0d
	.ascii "khoi dong phan mem san sang"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_141:
	.db 0x0d
	.ascii "khoi dong san sang"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_142:
	.ascii "***stc"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_143:
	.ascii "###"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_144:
	.db 0x0d
	.ascii "dien ap thap"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_145:
	.db 0x0d
	.ascii "dien ap khoi phuc"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_146:
	.db 0x0d
	.ascii "mat xung giay"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_147:
	.db 0x0d
	.ascii "loi doc cam 1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_148:
	.db 0x0d
	.ascii "loi doc cam 2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_149:
	.db 0x0d
	.ascii "loi doc cam 3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_150:
	.db 0x0d
	.ascii "loi doc cam 4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_151:
	.db 0x0d
	.ascii "Chuan bi reset phan mem tu cuoc goi"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_152:
	.db 0x0d
	.ascii "bao cao dau gio"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_153:
	.ascii "CO TIN NHAN MOI "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_154:
	.ascii "AT+CMGL="
	.db 0x22
	.ascii "ALL"
	.db 0x22
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_155:
	.db 0x0d
	.ascii "gsm reset thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_156:
	.ascii "  MDC  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_157:
	.ascii "  MST  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_158:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_159:
	.ascii " G "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_160:
	.ascii " D "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_161:
	.ascii " A "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_162:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_163:
	.db 0x0d
	.ascii "chinh gio bang tay"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_164:
	.db 0x0d
	.ascii "*chinh gio bang tay*"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_165:
	.ascii "         "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_166:
	.db 0xc0
	.ascii "MAY 1          "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_167:
	.ascii "000 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_168:
	.db 0xc0
	.ascii "  KHONG CO SIM  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_169:
	.db 0xc0
	.ascii "  GSM TAT NGUON "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_170:
	.db 0xc0
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_171:
	.ascii " - "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_172:
	.ascii "    "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__cnt:
	.db #0x14	; 20
__xinit__counter_xung_giay:
	.db #0x28	; 40
	.area CABS    (ABS,CODE)
