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
	.globl _thoi_gian_giu_motor_con_lai
	.globl _thoi_gian_giu_motor
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
_gsm_sendandcheck_cmd_65536_80:
	.ds 3
_gsm_sendandcheck_sloc0_1_0:
	.ds 3
_gsm_sendandcheck_sloc1_1_0:
	.ds 3
_xu_ly_tin_nhan_phutdelta_65537_186:
	.ds 1
_xu_ly_tin_nhan_kim_index_65537_186:
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
_main_giotemp_65536_254:
	.ds 1
_main_so_gio_mat_gps_65536_254:
	.ds 1
_main_debug_dem_131073_264:
	.ds 1
_main_mp3temp_131073_264:
	.ds 1
_main_retry_131073_285:
	.ds 1
_main_retry_131073_288:
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
_gsm_thietlapngaygiothuc_GPS_time_temp_65536_125:
	.ds 1
_gsm_thietlapngaygiothuc_sloc0_1_0:
	.ds 1
_gsm_laygio_gps_GPS_time_temp_65536_142:
	.ds 1
_gsm_serial_interrupt_sloc0_1_0:
	.ds 1
_xu_ly_tin_nhan_sloc8_1_0:
	.ds 1
_main_debug_131073_264:
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
_thoi_gian_giu_motor::
	.ds 1
_thoi_gian_giu_motor_con_lai::
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
_xu_ly_tin_nhan_i_65537_186:
	.ds 1
_main_ngaytemp_65536_254:
	.ds 1
_main_thangtemp_65536_254:
	.ds 1
_main_namtemp_65536_254:
	.ds 1
_main_thutemp_65536_254:
	.ds 1
_main_i_65537_255:
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
	reti
	.ds	7
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
;	include/motor_cam_phim.c:151: __bit lcd_update_chop = 0;
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
;	include/chuong_trinh.c:23: mp3_doi_start = 120;
	mov	r0,#_mp3_doi_start
	mov	@r0,#0x78
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
	jz	00136$
	mov	a,r7
	anl	a,#0x01
	mov	r6,a
	jz	00136$
	dec	r7
	mov	a,r7
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00137$
00136$:
	mov	r6,#0x05
	mov	r7,#0x00
00137$:
	mov	dpl,r6
	ret
00106$:
;	include/motor_cam_phim.c:10: if(so_motor<3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00222$
00222$:
	jc	00223$
	ljmp	00117$
00223$:
;	include/motor_cam_phim.c:11: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00224$
	ljmp	00112$
00224$:
	mov	a,_phut
	mov	r6,a
	cjne	a,_minute,00111$
	mov	a,_hour12
	cjne	a,_gio,00227$
	ljmp	00112$
00227$:
00111$:
;	include/motor_cam_phim.c:12: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
	mov	__mulint_PARM_2,_gio
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x003c
	push	ar7
	push	ar6
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	add	a,#0xd0
	mov	r4,a
	mov	a,#0x02
	addc	a,b
	mov	r5,a
	mov	r3,#0x00
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	__mulint_PARM_2,_hour12
;	1-genFromRTrack replaced	mov	(__mulint_PARM_2 + 1),#0x00
	mov	(__mulint_PARM_2 + 1),r3
	mov	dptr,#0x003c
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r3,dpl
	mov	r6,dph
	pop	ar4
	pop	ar5
	mov	a,r4
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,r5
	subb	a,r6
	mov	r5,a
	mov	r3,_minute
	mov	r6,#0x00
	mov	a,r4
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r5
	subb	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0xd0
	mov	(__modsint_PARM_2 + 1),#0x02
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	clr	c
	mov	a,#0x68
	subb	a,r5
	mov	a,#(0x01 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	mov	_motorDir1,c
;	include/motor_cam_phim.c:15: if(!atmel_phat && may_dc && so_motor==1)
	jb	_atmel_phat,00108$
	jnb	_may_dc,00108$
	cjne	r7,#0x01,00108$
;	include/motor_cam_phim.c:16: thoi_gian_giu_motor_con_lai = thoi_gian_giu_motor;
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	mov	dptr,#_thoi_gian_giu_motor_con_lai
	movx	@dptr,a
00108$:
;	include/motor_cam_phim.c:17: return 0;
	mov	dpl,#0x00
	ret
00112$:
;	include/motor_cam_phim.c:19: }else {motorDir1 = 0; return 5;}
;	assignBit
	clr	_motorDir1
	mov	dpl,#0x05
	ret
00117$:
;	include/motor_cam_phim.c:22: if(motor_index>1){
	mov	a,_motor_index
	add	a,#0xff - 0x01
	jc	00232$
	ljmp	00123$
00232$:
;	include/motor_cam_phim.c:23: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00233$
	ljmp	00123$
00233$:
	mov	a,_phut
	mov	r7,a
	cjne	a,_minute,00118$
	mov	a,_hour12
	cjne	a,_gio,00236$
	sjmp	00123$
00236$:
00118$:
;	include/motor_cam_phim.c:24: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:25: return 0;
	mov	dpl,#0x00
	ret
00123$:
;	include/motor_cam_phim.c:28: if(thoi_gian_doi_doc_cam[2] && (phut[2]!=minute || gio[2]!=hour12)){
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	a,@dptr
	jnz	00237$
	ljmp	00125$
00237$:
	mov	a,(_phut + 0x0002)
	mov	r7,a
	cjne	a,_minute,00124$
	mov	a,_hour12
	cjne	a,(_gio + 0x0002),00240$
	sjmp	00125$
00240$:
00124$:
;	include/motor_cam_phim.c:29: motorDir1 = (720 + gio[2]*60 + phut[2] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:30: return 2;
	mov	dpl,#0x02
	ret
00125$:
;	include/motor_cam_phim.c:32: if(motor_index<2){
	mov	a,#0x100 - 0x02
	add	a,_motor_index
	jnc	00241$
	ljmp	00133$
00241$:
;	include/motor_cam_phim.c:33: if(thoi_gian_doi_doc_cam[0] && (phut[0]!=minute || gio[0]!=hour12)){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00242$
	ljmp	00133$
00242$:
	mov	a,_phut
	mov	r7,a
	cjne	a,_minute,00128$
	mov	a,_hour12
	cjne	a,_gio,00245$
	sjmp	00133$
00245$:
00128$:
;	include/motor_cam_phim.c:34: motorDir1 = (720 + gio[0]*60 + phut[0] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:35: return 0;
	mov	dpl,#0x00
	ret
00133$:
;	include/motor_cam_phim.c:39: motorDir1 = 0;
;	assignBit
	clr	_motorDir1
;	include/motor_cam_phim.c:41: return 5;
	mov	dpl,#0x05
;	include/motor_cam_phim.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_run_check2'
;------------------------------------------------------------
;	include/motor_cam_phim.c:43: u8 motor_run_check2(){
;	-----------------------------------------
;	 function motor_run_check2
;	-----------------------------------------
_motor_run_check2:
;	include/motor_cam_phim.c:47: if (so_motor==1 || dien_ap_thap || motor_dung || mode ) {motorDir2 = 0;return 5;}
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
;	include/motor_cam_phim.c:48: if(may_canh_kim)return (canhkim && !(may_canh_kim & 1))?may_canh_kim-1:5;
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
;	include/motor_cam_phim.c:49: if(so_motor<4){
	cjne	r7,#0x04,00212$
00212$:
	jc	00213$
	ljmp	00114$
00213$:
;	include/motor_cam_phim.c:50: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
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
;	include/motor_cam_phim.c:51: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:52: return 1;
	mov	dpl,#0x01
	ret
00109$:
;	include/motor_cam_phim.c:53: }else {motorDir2 = 0; return 5;}
;	assignBit
	clr	_motorDir2
	mov	dpl,#0x05
	ret
00114$:
;	include/motor_cam_phim.c:55: if(motor_index2>1){
	mov	a,_motor_index2
	add	a,#0xff - 0x01
	jc	00218$
	ljmp	00120$
00218$:
;	include/motor_cam_phim.c:56: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
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
;	include/motor_cam_phim.c:57: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:58: return 1;
	mov	dpl,#0x01
	ret
00120$:
;	include/motor_cam_phim.c:61: if(thoi_gian_doi_doc_cam[3] && (phut[3]!=minute || gio[3]!=hour12)){
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
;	include/motor_cam_phim.c:62: motorDir2 = (720 + gio[3]*60 + phut[3] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:63: return 3;
	mov	dpl,#0x03
	ret
00122$:
;	include/motor_cam_phim.c:65: if(motor_index2<2){
	mov	a,#0x100 - 0x02
	add	a,_motor_index2
	jnc	00227$
	ljmp	00130$
00227$:
;	include/motor_cam_phim.c:66: if(thoi_gian_doi_doc_cam[1] && (phut[1]!=minute || gio[1]!=hour12)){
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
;	include/motor_cam_phim.c:67: motorDir2 = (720 + gio[1]*60 + phut[1] - hour12*60 - minute) % 720 > 360;
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
;	include/motor_cam_phim.c:68: return 1;
	mov	dpl,#0x01
	ret
00130$:
;	include/motor_cam_phim.c:71: motorDir2 = 0;
;	assignBit
	clr	_motorDir2
;	include/motor_cam_phim.c:72: return 5;
	mov	dpl,#0x05
;	include/motor_cam_phim.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'luu_gio_kim'
;------------------------------------------------------------
;	include/motor_cam_phim.c:75: void luu_gio_kim(){
;	-----------------------------------------
;	 function luu_gio_kim
;	-----------------------------------------
_luu_gio_kim:
;	include/motor_cam_phim.c:76: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
;	include/motor_cam_phim.c:77: switch(so_motor){
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
;	include/motor_cam_phim.c:78: case 4:IAP_ghibyte(PHUT4_EEPROM,phut[3]);IAP_ghibyte(GIO4_EEPROM,gio[3]);
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0003)
	mov	dptr,#0x0206
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0003)
	mov	dptr,#0x0207
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:79: case 3:IAP_ghibyte(PHUT3_EEPROM,phut[2]);IAP_ghibyte(GIO3_EEPROM,gio[2]);
00102$:
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0002)
	mov	dptr,#0x0204
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0002)
	mov	dptr,#0x0205
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:80: case 2:IAP_ghibyte(PHUT2_EEPROM,phut[1]);IAP_ghibyte(GIO2_EEPROM,gio[1]);
00103$:
	mov	_IAP_ghibyte_PARM_2,(_phut + 0x0001)
	mov	dptr,#0x0202
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,(_gio + 0x0001)
	mov	dptr,#0x0203
	lcall	_IAP_ghibyte
;	include/motor_cam_phim.c:81: case 1:IAP_ghibyte(PHUT1_EEPROM,phut[0]);IAP_ghibyte(GIO1_EEPROM,gio[0]);
00104$:
	mov	_IAP_ghibyte_PARM_2,_phut
	mov	dptr,#0x0200
	lcall	_IAP_ghibyte
	mov	_IAP_ghibyte_PARM_2,_gio
	mov	dptr,#0x0201
;	include/motor_cam_phim.c:83: }
;	include/motor_cam_phim.c:85: }
	ljmp	_IAP_ghibyte
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Timer_init'
;------------------------------------------------------------
;	include/motor_cam_phim.c:86: void PCA_Timer_init(){
;	-----------------------------------------
;	 function PCA_Timer_init
;	-----------------------------------------
_PCA_Timer_init:
;	include/motor_cam_phim.c:87: CCAP0L = CCAP0H = 0;
	mov	_CCAP0H,#0x00
	mov	_CCAP0L,#0x00
;	include/motor_cam_phim.c:88: PCA_Timer0 = 25000;
	mov	dptr,#_PCA_Timer0
	mov	a,#0xa8
	movx	@dptr,a
	mov	a,#0x61
	inc	dptr
	movx	@dptr,a
;	include/motor_cam_phim.c:89: CCAPM0 = 0x49;
	mov	_CCAPM0,#0x49
;	include/motor_cam_phim.c:90: CR=1;
;	assignBit
	setb	_CR
;	include/motor_cam_phim.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_step_int_init'
;------------------------------------------------------------
;	include/motor_cam_phim.c:93: void motor_step_int_init(){
;	-----------------------------------------
;	 function motor_step_int_init
;	-----------------------------------------
_motor_step_int_init:
;	include/motor_cam_phim.c:94: AUXR &=0x7F;	//Timer clock is 12T mode
	anl	_AUXR,#0x7f
;	include/motor_cam_phim.c:95: TMOD = 0;		//Set timer work mode
	mov	_TMOD,#0x00
;	include/motor_cam_phim.c:102: TH0 = (63536 - (toc_do_motor_step * 2000)) >> 8;
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
;	include/motor_cam_phim.c:103: TL0 = (63536 - (toc_do_motor_step * 2000));
	mov	a,r7
	mov	b,#0xd0
	mul	ab
	setb	c
	subb	a,#0x30
	cpl	a
	mov	_TL0,a
;	include/motor_cam_phim.c:104: TF0 = 0;
;	assignBit
	clr	_TF0
;	include/motor_cam_phim.c:105: TR0 = 1;
;	assignBit
	setb	_TR0
;	include/motor_cam_phim.c:106: ET0 = 1;
;	assignBit
	setb	_ET0
;	include/motor_cam_phim.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xunggiay'
;------------------------------------------------------------
;	include/motor_cam_phim.c:109: void xunggiay(){
;	-----------------------------------------
;	 function xunggiay
;	-----------------------------------------
_xunggiay:
;	include/motor_cam_phim.c:110: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:111: flip_pulse^=1;
	cpl	_flip_pulse
;	include/motor_cam_phim.c:112: over_cur_led = flip_pulse;
;	assignBit
	mov	c,_flip_pulse
	mov	_P07,c
;	include/motor_cam_phim.c:113: giay_out=1;	
;	assignBit
	setb	_giay_out
;	include/motor_cam_phim.c:114: if(connect) connect--;
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
;	include/motor_cam_phim.c:115: if(total_try_time_out) total_try_time_out--;
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
;	include/motor_cam_phim.c:116: if(!atmel_phat && motorS1 && may_dc && so_motor==1){
	jb	_atmel_phat,00108$
	jnb	_P44,00108$
	jnb	_may_dc,00108$
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00108$
;	include/motor_cam_phim.c:117: if(thoi_gian_giu_motor_con_lai) thoi_gian_giu_motor_con_lai--;
	mov	dptr,#_thoi_gian_giu_motor_con_lai
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00108$
	mov	a,r7
	dec	a
	mov	dptr,#_thoi_gian_giu_motor_con_lai
	movx	@dptr,a
00108$:
;	include/motor_cam_phim.c:120: if(mode!=2 && ++second>max_second-1){
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00196$
	ret
00196$:
	inc	_second
	mov	dptr,#_max_second
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	dec	r7
	cjne	r7,#0xff,00197$
	dec	r6
00197$:
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
	jnc	00126$
;	include/motor_cam_phim.c:121: second=0;
	mov	_second,#0x00
;	include/motor_cam_phim.c:122: if(so_lan_goi_dien && !--delay_cuoc_goi_ke_tiep) so_lan_goi_dien = 0;
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	jz	00113$
	mov	dptr,#_delay_cuoc_goi_ke_tiep
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00113$
	mov	dptr,#_so_lan_goi_dien
	clr	a
	movx	@dptr,a
00113$:
;	include/motor_cam_phim.c:123: phut_out = 1;
;	assignBit
	setb	_phut_out
;	include/motor_cam_phim.c:124: if(++minute>59){
	inc	_minute
	mov	a,_minute
	add	a,#0xff - 0x3b
	jnc	00126$
;	include/motor_cam_phim.c:125: da_gui_bao_cao = 0;
;	assignBit
	clr	_da_gui_bao_cao
;	include/motor_cam_phim.c:126: minute=0;
	mov	_minute,#0x00
;	include/motor_cam_phim.c:127: if(++hour>23){
	inc	_hour
	mov	a,_hour
	add	a,#0xff - 0x17
	jnc	00118$
;	include/motor_cam_phim.c:128: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	include/motor_cam_phim.c:129: hour=0;
	mov	_hour,#0x00
;	include/motor_cam_phim.c:130: if(ngay_reset_con_lai)
	mov	dptr,#_ngay_reset_con_lai
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00116$
;	include/motor_cam_phim.c:131: ngay_reset_con_lai--;
	mov	a,r7
	dec	a
	mov	dptr,#_ngay_reset_con_lai
	movx	@dptr,a
00116$:
;	include/motor_cam_phim.c:132: da_gui_bao_cao_thang = 0;
;	assignBit
	clr	_da_gui_bao_cao_thang
00118$:
;	include/motor_cam_phim.c:134: if(++hour12>11) hour12 = 0;
	inc	_hour12
	mov	a,_hour12
	add	a,#0xff - 0x0b
	jnc	00126$
	mov	_hour12,#0x00
00126$:
;	include/motor_cam_phim.c:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Handler'
;------------------------------------------------------------
;	include/motor_cam_phim.c:152: void	PCA_Handler (void) __interrupt PCA_VECTOR __using MEM_DONG_HO{
;	-----------------------------------------
;	 function PCA_Handler
;	-----------------------------------------
_PCA_Handler:
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
;	include/motor_cam_phim.c:153: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:154: if(CCF0){
;	include/motor_cam_phim.c:155: CCF0=0;//tat co PCA timer 0
;	assignBit
	jbc	_CCF0,00484$
	ljmp	00194$
00484$:
;	include/motor_cam_phim.c:156: CCAP0L = PCA_Timer0; //nap vao vi tri timer tiep theo
	mov	dptr,#_PCA_Timer0
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_CCAP0L,r6
;	include/motor_cam_phim.c:157: CCAP0H = PCA_Timer0 >> 8;
	mov	_CCAP0H,r7
;	include/motor_cam_phim.c:158: PCA_Timer0 += 25000; //tang bien nap vao len 25ms
	mov	dptr,#_PCA_Timer0
	mov	a,#0xa8
	add	a,r6
	movx	@dptr,a
	mov	a,#0x61
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	include/motor_cam_phim.c:160: if(eep_cam){
	mov	dptr,#_eep_cam
	clr	a
	movc	a,@a+dptr
	jz	00102$
;	include/motor_cam_phim.c:161: trang_thai_cam = !cam_che;
	mov	c,_P36
	cpl	c
	mov	_trang_thai_cam,c
;	include/motor_cam_phim.c:162: trang_thai_cam2 = !cam_che2;
	mov	c,_P37
	cpl	c
	mov	_trang_thai_cam2,c
	sjmp	00103$
00102$:
;	include/motor_cam_phim.c:164: trang_thai_cam = cam_che;
;	assignBit
	mov	c,_P36
	mov	_trang_thai_cam,c
;	include/motor_cam_phim.c:165: trang_thai_cam2 = cam_che2;
;	assignBit
	mov	c,_P37
	mov	_trang_thai_cam2,c
00103$:
;	include/motor_cam_phim.c:167: if(so_motor == 1){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00114$
;	include/motor_cam_phim.c:168: if(eep_cam){
	mov	dptr,#_eep_cam
	clr	a
	movc	a,@a+dptr
	jz	00111$
;	include/motor_cam_phim.c:169: if(may_dc) trang_thai_cam = !trang_thai_cam && !trang_thai_cam2;  
	jnb	_may_dc,00105$
	jb	_trang_thai_cam,00196$
	jnb	_trang_thai_cam2,00197$
00196$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00198$
00197$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00198$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00105$:
;	include/motor_cam_phim.c:170: else trang_thai_cam = trang_thai_cam || trang_thai_cam2;
	jb	_trang_thai_cam,00200$
	jb	_trang_thai_cam2,00200$
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00201$
00200$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00201$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00111$:
;	include/motor_cam_phim.c:172: if(may_dc) trang_thai_cam = !trang_thai_cam || !trang_thai_cam2;  
	jnb	_may_dc,00108$
	jnb	_trang_thai_cam,00203$
	jnb	_trang_thai_cam2,00203$
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00204$
00203$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00204$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
	sjmp	00114$
00108$:
;	include/motor_cam_phim.c:173: else trang_thai_cam = trang_thai_cam && trang_thai_cam2;
	jnb	_trang_thai_cam,00205$
	jb	_trang_thai_cam2,00206$
00205$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00207$
00206$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00207$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_trang_thai_cam,c
00114$:
;	include/motor_cam_phim.c:177: if(motor_index!=5 && !thoi_gian_giu_motor_con_lai){
	mov	a,#0x05
	cjne	a,_motor_index,00499$
	ljmp	00144$
00499$:
	mov	dptr,#_thoi_gian_giu_motor_con_lai
	movx	a,@dptr
	jz	00500$
	ljmp	00144$
00500$:
;	include/motor_cam_phim.c:179: if(trang_thai_cam)
	jnb	_trang_thai_cam,00141$
;	include/motor_cam_phim.c:180: if(cam_vao) cam_vao_han = 1;				
	jnb	_cam_vao,00116$
;	assignBit
	setb	_cam_vao_han
	ljmp	00144$
00116$:
;	include/motor_cam_phim.c:181: else cam_vao = 1;
;	assignBit
	setb	_cam_vao
	ljmp	00144$
00141$:
;	include/motor_cam_phim.c:182: else if(cam_ra){
	jb	_cam_ra,00503$
	ljmp	00138$
00503$:
;	include/motor_cam_phim.c:183: thoi_gian_doi_doc_cam[motor_index] = thoi_gian_doi_cam_chuan;
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
;	include/motor_cam_phim.c:184: if(canhkim) canhkim--;
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
;	include/motor_cam_phim.c:185: else if(motorDir && ++phut[motor_index]>59){
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
;	include/motor_cam_phim.c:186: phut[motor_index] = 0;
	mov	a,_motor_index
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x00
;	include/motor_cam_phim.c:187: if(++gio[motor_index]>11) gio[motor_index] = 0;
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
;	include/motor_cam_phim.c:188: }else if(!motorDir && --phut[motor_index]>60){
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
;	include/motor_cam_phim.c:189: phut[motor_index] = 59;
	mov	a,_motor_index
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x3b
;	include/motor_cam_phim.c:190: if(--gio[motor_index]>12) gio[motor_index] = 11;
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
;	include/motor_cam_phim.c:192: cam_ra = cam_vao = cam_vao_han = 0;
;	assignBit
	clr	_cam_vao_han
;	assignBit
	clr	_cam_vao
;	assignBit
	clr	_cam_ra
;	include/motor_cam_phim.c:193: motor_index = motor_run_check();
	mov	psw,#0x00
	lcall	_motor_run_check
	mov	psw,#0x08
	mov	_motor_index,dpl
;	include/motor_cam_phim.c:195: luu_gio_kim();				
	mov	psw,#0x00
	lcall	_luu_gio_kim
	mov	psw,#0x08
	sjmp	00144$
00138$:
;	include/motor_cam_phim.c:196: }else if(cam_vao_han) cam_ra = 1;
	jnb	_cam_vao_han,00135$
;	assignBit
	setb	_cam_ra
	sjmp	00144$
00135$:
;	include/motor_cam_phim.c:197: else if(cam_vao) cam_vao = 0;
;	assignBit
	jbc	_cam_vao,00512$
	sjmp	00144$
00512$:
00144$:
;	include/motor_cam_phim.c:200: if(motor_index2!=5){
	mov	a,#0x05
	cjne	a,_motor_index2,00513$
	ljmp	00175$
00513$:
;	include/motor_cam_phim.c:201: if(trang_thai_cam2)
	jnb	_trang_thai_cam2,00172$
;	include/motor_cam_phim.c:202: if(cam_vao2) cam_vao_han2 = 1;				
	jnb	_cam_vao2,00147$
;	assignBit
	setb	_cam_vao_han2
	ljmp	00175$
00147$:
;	include/motor_cam_phim.c:203: else cam_vao2 = 1;
;	assignBit
	setb	_cam_vao2
	ljmp	00175$
00172$:
;	include/motor_cam_phim.c:204: else if(cam_ra2){
	jb	_cam_ra2,00516$
	ljmp	00169$
00516$:
;	include/motor_cam_phim.c:205: thoi_gian_doi_doc_cam[motor_index2] = thoi_gian_doi_cam_chuan;
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
;	include/motor_cam_phim.c:206: if(canhkim) canhkim--;
	mov	dptr,#_canhkim
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00161$
	mov	a,r7
	dec	a
	mov	dptr,#_canhkim
	movx	@dptr,a
	sjmp	00162$
00161$:
;	include/motor_cam_phim.c:207: else if(motorDir && ++phut[motor_index2]>59){
	jnb	_motorDir,00157$
	mov	a,_motor_index2
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3b
	jnc	00157$
;	include/motor_cam_phim.c:208: phut[motor_index2] = 0;
	mov	a,_motor_index2
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x00
;	include/motor_cam_phim.c:209: if(++gio[motor_index2]>11) gio[motor_index2] = 0;
	mov	a,_motor_index2
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	inc	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0b
	jnc	00162$
	mov	a,_motor_index2
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00162$
00157$:
;	include/motor_cam_phim.c:210: }else if(!motorDir && --phut[motor_index2]>60){
	jb	_motorDir,00162$
	mov	a,_motor_index2
	add	a,#_phut
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x3c
	jnc	00162$
;	include/motor_cam_phim.c:211: phut[motor_index2] = 59;
	mov	a,_motor_index2
	add	a,#_phut
	mov	r0,a
	mov	@r0,#0x3b
;	include/motor_cam_phim.c:212: if(--gio[motor_index2]>12) gio[motor_index2] = 11;
	mov	a,_motor_index2
	add	a,#_gio
	mov	r1,a
	mov	ar7,@r1
	dec	r7
	mov	@r1,ar7
	mov	a,r7
	add	a,#0xff - 0x0c
	jnc	00162$
	mov	a,_motor_index2
	add	a,#_gio
	mov	r0,a
	mov	@r0,#0x0b
00162$:
;	include/motor_cam_phim.c:214: cam_ra2 = cam_vao2 = cam_vao_han2 = 0;
;	assignBit
	clr	_cam_vao_han2
;	assignBit
	clr	_cam_vao2
;	assignBit
	clr	_cam_ra2
;	include/motor_cam_phim.c:215: motor_index2 = motor_run_check2();
	mov	psw,#0x00
	lcall	_motor_run_check2
	mov	psw,#0x08
	mov	_motor_index2,dpl
;	include/motor_cam_phim.c:216: luu_gio_kim();				
	mov	psw,#0x00
	lcall	_luu_gio_kim
	mov	psw,#0x08
	sjmp	00175$
00169$:
;	include/motor_cam_phim.c:217: }else if(cam_vao_han2) cam_ra2 = 1;
	jnb	_cam_vao_han2,00166$
;	assignBit
	setb	_cam_ra2
	sjmp	00175$
00166$:
;	include/motor_cam_phim.c:218: else if(cam_vao2) cam_vao2 = 0;
;	assignBit
	jbc	_cam_vao2,00525$
	sjmp	00175$
00525$:
00175$:
;	include/motor_cam_phim.c:223: if(phim_mode_xuong && phim_mode_vao) phim_mode_doi = 2;
	jnb	_phim_mode_xuong,00177$
	jnb	_P35,00177$
	mov	dptr,#_phim_mode_doi
	mov	a,#0x02
	movx	@dptr,a
00177$:
;	include/motor_cam_phim.c:224: phim_mode_giu = phim_mode_xuong && !phim_mode_vao;
	jnb	_phim_mode_xuong,00208$
	jnb	_P35,00209$
00208$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00210$
00209$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00210$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_giu,c
;	include/motor_cam_phim.c:225: phim_mode_xuong = !phim_mode_cu && !phim_mode_vao;
	jb	_phim_mode_cu,00211$
	jnb	_P35,00212$
00211$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00213$
00212$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00213$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_xuong,c
;	include/motor_cam_phim.c:226: phim_mode_nhan = phim_mode_nhan || (!phim_mode_giu && phim_mode_xuong);
	jb	_phim_mode_nhan,00215$
	jb	_phim_mode_giu,00214$
	jb	_phim_mode_xuong,00215$
00214$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00216$
00215$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00216$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_mode_nhan,c
;	include/motor_cam_phim.c:227: phim_mode_cu = phim_mode_vao;
;	assignBit
	mov	c,_P35
	mov	_phim_mode_cu,c
;	include/motor_cam_phim.c:229: if(phim_back_xuong && key_in2) phim_back_doi = 2;
	jnb	_phim_back_xuong,00180$
	jnb	_P33,00180$
	mov	dptr,#_phim_back_doi
	mov	a,#0x02
	movx	@dptr,a
00180$:
;	include/motor_cam_phim.c:230: phim_back_giu = phim_back_xuong && !key_in2;
	jnb	_phim_back_xuong,00220$
	jnb	_P33,00221$
00220$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00222$
00221$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00222$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_giu,c
;	include/motor_cam_phim.c:231: phim_back_xuong = !phim_back_cu && !key_in2;
	jb	_phim_back_cu,00223$
	jnb	_P33,00224$
00223$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00225$
00224$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00225$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_xuong,c
;	include/motor_cam_phim.c:232: phim_back_nhan = phim_back_nhan || (!phim_back_giu && phim_back_xuong);
	jb	_phim_back_nhan,00227$
	jb	_phim_back_giu,00226$
	jb	_phim_back_xuong,00227$
00226$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00228$
00227$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00228$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_back_nhan,c
;	include/motor_cam_phim.c:233: phim_back_cu = key_in2;
;	assignBit
	mov	c,_P33
	mov	_phim_back_cu,c
;	include/motor_cam_phim.c:235: if(phim_cong_xuong && key_in3) phim_cong_doi = 2;
	jnb	_phim_cong_xuong,00183$
	jnb	_P34,00183$
	mov	dptr,#_phim_cong_doi
	mov	a,#0x02
	movx	@dptr,a
00183$:
;	include/motor_cam_phim.c:236: phim_cong_giu = phim_cong_xuong && !key_in3;
	jnb	_phim_cong_xuong,00232$
	jnb	_P34,00233$
00232$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00234$
00233$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00234$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_giu,c
;	include/motor_cam_phim.c:237: phim_cong_xuong = !phim_cong_cu && !key_in3;
	jb	_phim_cong_cu,00235$
	jnb	_P34,00236$
00235$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00237$
00236$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00237$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_xuong,c
;	include/motor_cam_phim.c:238: phim_cong_nhan = phim_cong_nhan || (!phim_cong_giu && phim_cong_xuong);
	jb	_phim_cong_nhan,00239$
	jb	_phim_cong_giu,00238$
	jb	_phim_cong_xuong,00239$
00238$:
;	assignBit
	clr	_PCA_Handler_sloc0_1_0
	sjmp	00240$
00239$:
;	assignBit
	setb	_PCA_Handler_sloc0_1_0
00240$:
;	assignBit
	mov	c,_PCA_Handler_sloc0_1_0
	mov	_phim_cong_nhan,c
;	include/motor_cam_phim.c:239: phim_cong_cu = key_in3;
;	assignBit
	mov	c,_P34
	mov	_phim_cong_cu,c
;	include/motor_cam_phim.c:241: if(!--cnt){
	mov	dptr,#_cnt
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00186$
;	include/motor_cam_phim.c:242: lcd_update_chop = 1;
;	assignBit
	setb	_lcd_update_chop
;	include/motor_cam_phim.c:243: cnt=20;
	mov	dptr,#_cnt
	mov	a,#0x14
	movx	@dptr,a
;	include/motor_cam_phim.c:244: chop=!chop;
	cpl	_chop
00186$:
;	include/motor_cam_phim.c:247: if(xung_giay_check){
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00190$
;	include/motor_cam_phim.c:248: xung_giay_check--;
	mov	a,r7
	dec	a
	mov	dptr,#_xung_giay_check
	movx	@dptr,a
;	include/motor_cam_phim.c:249: counter_xung_giay=40;
	mov	dptr,#_counter_xung_giay
	mov	a,#0x28
	movx	@dptr,a
	sjmp	00194$
00190$:
;	include/motor_cam_phim.c:250: }else if(!--counter_xung_giay){
	mov	dptr,#_counter_xung_giay
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00194$
;	include/motor_cam_phim.c:251: counter_xung_giay=40;
	mov	dptr,#_counter_xung_giay
	mov	a,#0x28
	movx	@dptr,a
;	include/motor_cam_phim.c:252: xunggiay();
	mov	psw,#0x00
	lcall	_xunggiay
	mov	psw,#0x08
00194$:
;	include/motor_cam_phim.c:257: }
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
;	include/motor_cam_phim.c:259: void cam_phim() __interrupt 1 __using 2 {
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
;	include/motor_cam_phim.c:260: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/motor_cam_phim.c:261: if(atmel_phat){
	jnb	_atmel_phat,00116$
;	include/motor_cam_phim.c:262: motor1 = motor_index == 0; motor2 = motor_index2 == 1;
	mov	a,_motor_index
	cjne	a,#0x01,00191$
00191$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P27,c
	mov	a,#0x01
	cjne	a,_motor_index2,00192$
	setb	c
	sjmp	00193$
00192$:
	clr	c
00193$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P25,c
;	include/motor_cam_phim.c:263: motor3 = motor_index == 2; motor4 = motor_index2 == 3;
	mov	a,#0x02
	cjne	a,_motor_index,00194$
	setb	c
	sjmp	00195$
00194$:
	clr	c
00195$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P26,c
	mov	a,#0x03
	cjne	a,_motor_index2,00196$
	setb	c
	sjmp	00197$
00196$:
	clr	c
00197$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P24,c
	ljmp	00118$
00116$:
;	include/motor_cam_phim.c:265: motorS1 = !motor_index && (eep_motor & 7); motorS2 = motor_index2 == 1;
	mov	a,_motor_index
	jnz	00120$
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	anl	a,#0x07
	jz	00200$
	sjmp	00121$
00200$:
00120$:
;	assignBit
	clr	_cam_phim_sloc0_1_0
	sjmp	00122$
00121$:
;	assignBit
	setb	_cam_phim_sloc0_1_0
00122$:
	mov	c,_cam_phim_sloc0_1_0
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P44,c
	mov	a,#0x01
	cjne	a,_motor_index2,00201$
	setb	c
	sjmp	00202$
00201$:
	clr	c
00202$:
	mov  _cam_phim_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,#0xff
	mov	_P43,c
;	include/motor_cam_phim.c:266: if(may_dc && so_motor==1){
	jnb	_may_dc,00102$
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	include/motor_cam_phim.c:267: RingRelay = motorS1;
;	assignBit
	mov	c,_P44
	mov	_P23,c
00102$:
;	include/motor_cam_phim.c:271: motorDir = may_dc || may_canh_kim || motorDir1 || motorDir2;
	jb	_may_dc,00124$
	mov	dptr,#_may_canh_kim
	movx	a,@dptr
	jnz	00124$
	jb	_motorDir1,00124$
	jb	_motorDir2,00124$
;	assignBit
	clr	_cam_phim_sloc0_1_0
	sjmp	00125$
00124$:
;	assignBit
	setb	_cam_phim_sloc0_1_0
00125$:
;	assignBit
	mov	c,_cam_phim_sloc0_1_0
	mov	_motorDir,c
;	include/motor_cam_phim.c:272: if(!may_dc && (motor_index!=5 || motor_index2!=5 || !motor_index) ){
	jb	_may_dc,00110$
	mov	a,#0x05
	cjne	a,_motor_index,00109$
	mov	a,#0x05
	cjne	a,_motor_index2,00109$
	mov	a,_motor_index
	jnz	00110$
00109$:
;	include/motor_cam_phim.c:273: P2=(P2&0x0f)|motor_step[step_index];
	mov	a,_P2
	anl	a,#0x0f
	mov	r7,a
	mov	a,_step_index
	mov	dptr,#_motor_step
	movc	a,@a+dptr
	orl	a,r7
	mov	_P2,a
;	include/motor_cam_phim.c:274: step_index+= motorDir?1:-1; 
	jnb	_motorDir,00132$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00133$
00132$:
	mov	r6,#0xff
	mov	r7,#0xff
00133$:
	mov	r7,_step_index
	mov	a,r6
	add	a,r7
;	include/motor_cam_phim.c:275: if(step_index>8) step_index=7;
	mov  _step_index,a
	add	a,#0xff - 0x08
	jnc	00107$
	mov	_step_index,#0x07
	sjmp	00118$
00107$:
;	include/motor_cam_phim.c:276: else if(step_index==8) step_index=0;
	mov	a,#0x08
	cjne	a,_step_index,00118$
	mov	_step_index,#0x00
	sjmp	00118$
00110$:
;	include/motor_cam_phim.c:277: } else P2 &= 0x0f;
	anl	_P2,#0x0f
00118$:
;	include/motor_cam_phim.c:280: }
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
;cmd                       Allocated with name '_gsm_sendandcheck_cmd_65536_80'
;sloc0                     Allocated with name '_gsm_sendandcheck_sloc0_1_0'
;sloc1                     Allocated with name '_gsm_sendandcheck_sloc1_1_0'
;------------------------------------------------------------
;	include/gsm_serial.c:8: __bit gsm_sendandcheck(u8 *cmd, u8 retry, u8 delay, u8 *display){
;	-----------------------------------------
;	 function gsm_sendandcheck
;	-----------------------------------------
_gsm_sendandcheck:
	mov	_gsm_sendandcheck_cmd_65536_80,dpl
	mov	(_gsm_sendandcheck_cmd_65536_80 + 1),dph
	mov	(_gsm_sendandcheck_cmd_65536_80 + 2),b
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
	mov	dpl,_gsm_sendandcheck_cmd_65536_80
	mov	dph,(_gsm_sendandcheck_cmd_65536_80 + 1)
	mov	b,(_gsm_sendandcheck_cmd_65536_80 + 2)
	push	ar4
	lcall	_send_gsm_cmd
	pop	ar4
;	include/gsm_serial.c:13: while(!gui_lenh_thanh_cong && total_try_time_out && !nosim){ 
	mov	a,#0x02
	add	a,_gsm_sendandcheck_cmd_65536_80
	mov	r1,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_80 + 1)
	mov	r2,a
	mov	r3,(_gsm_sendandcheck_cmd_65536_80 + 2)
	mov	a,#0x07
	add	a,_gsm_sendandcheck_cmd_65536_80
	mov	_gsm_sendandcheck_sloc0_1_0,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_80 + 1)
	mov	(_gsm_sendandcheck_sloc0_1_0 + 1),a
	mov	(_gsm_sendandcheck_sloc0_1_0 + 2),(_gsm_sendandcheck_cmd_65536_80 + 2)
	mov	a,#0x08
	add	a,_gsm_sendandcheck_cmd_65536_80
	mov	_gsm_sendandcheck_sloc1_1_0,a
	clr	a
	addc	a,(_gsm_sendandcheck_cmd_65536_80 + 1)
	mov	(_gsm_sendandcheck_sloc1_1_0 + 1),a
	mov	(_gsm_sendandcheck_sloc1_1_0 + 2),(_gsm_sendandcheck_cmd_65536_80 + 2)
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
	mov	dpl,_gsm_sendandcheck_cmd_65536_80
	mov	dph,(_gsm_sendandcheck_cmd_65536_80 + 1)
	mov	b,(_gsm_sendandcheck_cmd_65536_80 + 2)
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
;	include/gsm_serial.c:219: if(*(noidung+1)!='*' && sms_on == 1) kiemtrataikhoan();
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
	cjne	r1,#0x2a,00164$
	sjmp	00104$
00164$:
	mov	dptr,#_sms_on
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x01,00104$
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
;	include/gsm_serial.c:220: else lenh_sms[0]=0;
	mov	dptr,#_lenh_sms
	clr	a
	movx	@dptr,a
00105$:
;	include/gsm_serial.c:222: if(!send_sms(chinh)) return;
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
	jc	00108$
	ret
00108$:
;	include/gsm_serial.c:224: if(sms_on>2){
	mov	dptr,#_sms_on
	movx	a,@dptr
	add	a,#0xff - 0x02
	jnc	00116$
;	include/gsm_serial.c:225: send_thong_so_rut_gon(chinh);
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
	ljmp	00117$
00116$:
;	include/gsm_serial.c:227: send_gsm_cmd(ver);
	mov	dptr,#_ver
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:229: send_gio_kim();
	lcall	_send_gio_kim
;	include/gsm_serial.c:230: send_gio_thuc(chinh);
;	assignBit
	mov	c,_baocaosms_PARM_1
	mov	_send_gio_thuc_PARM_1,c
	lcall	_send_gio_thuc
;	include/gsm_serial.c:231: send_thong_so(chinh);
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
;	include/gsm_serial.c:234: if(*(noidung+1)!='*' && lenh_sms[0]){
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x2a,00169$
	sjmp	00113$
00169$:
	mov	dptr,#_lenh_sms
	movx	a,@dptr
	jz	00113$
;	include/gsm_serial.c:235: send_gsm_cmd("\rTK Chinh=");
	mov	dptr,#___str_40
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:236: send_gsm_cmd(lenh_sms);
	mov	dptr,#_lenh_sms
	mov	b,#0x00
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:237: if(chinh && !lenh_sms[4]) send_gsm_cmd("\rTai khoan con duoi 10000");
	jnb	_baocaosms_PARM_1,00110$
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	jnz	00110$
	mov	dptr,#___str_41
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gsm_cmd
	pop	ar5
	pop	ar6
	pop	ar7
00110$:
;	include/gsm_serial.c:238: lenh_sms[1] = lenh_sms[2] = lenh_sms[3] = lenh_sms[4] = 0;
	mov	dptr,#(_lenh_sms + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_lenh_sms + 0x0001)
	movx	@dptr,a
00113$:
;	include/gsm_serial.c:240: send_gsm_cmd(noidung);
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
00117$:
;	include/gsm_serial.c:243: if(*(noidung+1)=='*') send_gsm_cmd("\032");
	inc	r5
	cjne	r5,#0x00,00173$
	inc	r6
00173$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2a,00119$
	mov	dptr,#___str_7
	mov	b,#0x80
	ljmp	_send_gsm_cmd
00119$:
;	include/gsm_serial.c:244: else gsm_sendandcheck("\032",50,1,"DANG GUI BAO CAO");
	mov	_gsm_sendandcheck_PARM_4,#___str_42
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_42 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:247: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'send_thong_so_den'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	include/gsm_serial.c:249: void send_thong_so_den(){
;	-----------------------------------------
;	 function send_thong_so_den
;	-----------------------------------------
_send_thong_so_den:
;	include/gsm_serial.c:251: send_gsm_cmd(" DEN=");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:252: send_gsm_byte(DenRelay?'1':'0');
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
;	include/gsm_serial.c:253: send_gsm_cmd("\rMODEN=");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:254: send_gsm_byte(eep_tatmoden[0]+'0');
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:255: if(!eep_tatmoden[0]){send_gsm_cmd("\rKhong co gio mo den"); return;}
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	jnz	00102$
	mov	dptr,#___str_44
	mov	b,#0x80
	ljmp	_send_gsm_cmd
00102$:
;	include/gsm_serial.c:256: send_gsm_cmd("\rGio Mo Den:");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:257: i = eep_tatmoden[0];
	mov	dptr,#_eep_tatmoden
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	include/gsm_serial.c:258: send_gsm_byte('\r');
	mov	dpl,#0x0d
	push	ar7
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:259: send_gsm_byte(eep_tatmoden[i]/60 +'0');
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
;	include/gsm_serial.c:260: send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
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
;	include/gsm_serial.c:261: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:262: send_gsm_byte(eep_tatmoden[i]%6 +'0');
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
;	include/gsm_serial.c:263: send_gsm_cmd("0 - ");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:264: send_gsm_byte(eep_tatmoden[1]/60 +'0');
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
;	include/gsm_serial.c:265: send_gsm_byte(eep_tatmoden[1]/6%10 +'0');
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
;	include/gsm_serial.c:266: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
;	include/gsm_serial.c:267: send_gsm_byte(eep_tatmoden[1]%6 +'0');
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
;	include/gsm_serial.c:268: send_gsm_byte('0');
	mov	dpl,#0x30
	lcall	_send_gsm_byte
;	include/gsm_serial.c:269: for(i=2;i<eep_tatmoden[0];i+=2){
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
;	include/gsm_serial.c:270: send_gsm_byte('\r');
	mov	dpl,#0x0d
	push	ar7
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:271: send_gsm_byte(eep_tatmoden[i]/60 +'0');
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
;	include/gsm_serial.c:272: send_gsm_byte(eep_tatmoden[i]/6%10 +'0');
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
;	include/gsm_serial.c:273: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar7
;	include/gsm_serial.c:274: send_gsm_byte(eep_tatmoden[i]%6 +'0');
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
;	include/gsm_serial.c:275: send_gsm_cmd("0 - ");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar7
;	include/gsm_serial.c:276: send_gsm_byte(eep_tatmoden[i+1]/60 +'0');
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
;	include/gsm_serial.c:277: send_gsm_byte(eep_tatmoden[i+1]/6%10 +'0');
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
;	include/gsm_serial.c:278: send_gsm_byte(':');
	mov	dpl,#0x3a
	lcall	_send_gsm_byte
	pop	ar4
	pop	ar5
;	include/gsm_serial.c:279: send_gsm_byte(eep_tatmoden[i+1]%6 +'0');
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
;	include/gsm_serial.c:280: send_gsm_byte('0');
	mov	dpl,#0x30
	lcall	_send_gsm_byte
	pop	ar6
;	include/gsm_serial.c:269: for(i=2;i<eep_tatmoden[0];i+=2){
	mov	a,#0x02
	add	a,r6
	mov	r7,a
;	include/gsm_serial.c:282: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'baocaoden'
;------------------------------------------------------------
;noidung                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	include/gsm_serial.c:284: void baocaoden(__bit chinh, u8 *noidung){
;	-----------------------------------------
;	 function baocaoden
;	-----------------------------------------
_baocaoden:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	include/gsm_serial.c:285: if(!sms_on) return;
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
	ret
00102$:
;	include/gsm_serial.c:286: gsm_sendandcheck("AT\r", 15, 1,"BAT DAU BAO CAO ");
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
;	include/gsm_serial.c:287: if(!send_sms(chinh)) return;
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
;	include/gsm_serial.c:288: send_gio_thuc(chinh);
;	assignBit
	mov	c,_baocaoden_PARM_1
	mov	_send_gio_thuc_PARM_1,c
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_gio_thuc
;	include/gsm_serial.c:289: send_thong_so(chinh);
;	assignBit
	mov	c,_baocaoden_PARM_1
	mov	_send_thong_so_PARM_1,c
	lcall	_send_thong_so
;	include/gsm_serial.c:290: send_thong_so_den();
	lcall	_send_thong_so_den
	pop	ar5
	pop	ar6
	pop	ar7
;	include/gsm_serial.c:291: send_gsm_cmd(noidung);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:292: gsm_sendandcheck("\032",50,1,"GUI BAO CAO DEN ");
	mov	_gsm_sendandcheck_PARM_4,#___str_47
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_47 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:293: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'gui_huong_dan'
;------------------------------------------------------------
;	include/gsm_serial.c:295: void gui_huong_dan(){
;	-----------------------------------------
;	 function gui_huong_dan
;	-----------------------------------------
_gui_huong_dan:
;	include/gsm_serial.c:296: lenh_sms[0]=0;
	mov	dptr,#_lenh_sms
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:297: if(!send_sms(CHINH)) return;
;	assignBit
	setb	_send_sms_PARM_1
	lcall	_send_sms
	jc	00102$
	ret
00102$:
;	include/gsm_serial.c:298: send_gsm_cmd(huongdan);
	mov	dptr,#_huongdan
	mov	b,#0x80
	lcall	_send_gsm_cmd
;	include/gsm_serial.c:299: gsm_sendandcheck("\032",50,1," GUI HUONG DAN  ");
	mov	_gsm_sendandcheck_PARM_4,#___str_48
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_48 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x32
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_7
	mov	b,#0x80
;	include/gsm_serial.c:300: }
	ljmp	_gsm_sendandcheck
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapsim800'
;------------------------------------------------------------
;	include/gsm_serial.c:302: __bit gsm_thietlapsim800(){
;	-----------------------------------------
;	 function gsm_thietlapsim800
;	-----------------------------------------
_gsm_thietlapsim800:
;	include/gsm_serial.c:303: if(sim_test_sec==61 && !sms_on) return 0;
	mov	dptr,#_sim_test_sec
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3d,00102$
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
	clr	c
	ret
00102$:
;	include/gsm_serial.c:305: if(gsm_sendandcheck("AT\r", 15, 1,"CALLIBRATING GPS")){      
	mov	_gsm_sendandcheck_PARM_4,#___str_49
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_49 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00107$
;	include/gsm_serial.c:306: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:307: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:308: gsm_serial_cmd = CSPN;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0a
	movx	@dptr,a
;	include/gsm_serial.c:309: if(gsm_sendandcheck("AT+CSPN?\r",15,1," TEN TONG DAI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_51
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_51 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00105$
;	include/gsm_serial.c:310: nha_mang = lenh_sms[4];
	mov	dptr,#(_lenh_sms + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_nha_mang
	movx	@dptr,a
00105$:
;	include/gsm_serial.c:312: return 1;
	setb	c
	ret
00107$:
;	include/gsm_serial.c:314: return 0;
	clr	c
;	include/gsm_serial.c:315: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapngaygiothuc'
;------------------------------------------------------------
;check                     Allocated to registers 
;------------------------------------------------------------
;	include/gsm_serial.c:317: void gsm_thietlapngaygiothuc(){
;	-----------------------------------------
;	 function gsm_thietlapngaygiothuc
;	-----------------------------------------
_gsm_thietlapngaygiothuc:
;	include/gsm_serial.c:318: __bit GPS_time_temp = 0;
;	assignBit
	clr	_gsm_thietlapngaygiothuc_GPS_time_temp_65536_125
;	include/gsm_serial.c:319: if(sim_test_sec==61) return;
	mov	dptr,#_sim_test_sec
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3d,00102$
	ret
00102$:
;	include/gsm_serial.c:320: if(gsm_sendandcheck("AT+CLTS=1\r",15,1,"BAT CHE DO GPS ")){
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
;	include/gsm_serial.c:321: if(gsm_sendandcheck("AT+COPS=2\r",15,1," KHOI DONG GPS ")){
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
;	include/gsm_serial.c:322: gsm_serial_cmd = COPS;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0c
	movx	@dptr,a
;	include/gsm_serial.c:323: if(gsm_sendandcheck("AT+COPS=0\r",10,60,"  KET NOI GPS  ")){
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
;	include/gsm_serial.c:324: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:325: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:326: gsm_serial_cmd = CLK;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x02
	movx	@dptr,a
;	include/gsm_serial.c:327: if(gsm_sendandcheck("AT+CCLK?\r",15,1," LAY TIME GPS  ")){
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
;	include/gsm_serial.c:328: year   = (lenh_sms[3] -48)*10 + lenh_sms[4]  - 48;
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
	mov	r7,a
	mov	dptr,#_year
	movx	@dptr,a
;	include/gsm_serial.c:329: month  = (lenh_sms[6] -48)*10 + lenh_sms[7]  - 48;
	mov	dptr,#(_lenh_sms + 0x0006)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r6,a
	mov	dptr,#(_lenh_sms + 0x0007)
	movx	a,@dptr
	add	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	dptr,#_month
	movx	@dptr,a
;	include/gsm_serial.c:330: day    = (lenh_sms[9] -48)*10 + lenh_sms[10] - 48;
	mov	dptr,#(_lenh_sms + 0x0009)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r5,a
	mov	dptr,#(_lenh_sms + 0x000a)
	movx	a,@dptr
	add	a,r5
	add	a,#0xd0
	mov	r5,a
	mov	dptr,#_day
	movx	@dptr,a
;	include/gsm_serial.c:331: hour   = (lenh_sms[12]-48)*10 + lenh_sms[13] - 48;
	mov	dptr,#(_lenh_sms + 0x000c)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r4,a
	mov	dptr,#(_lenh_sms + 0x000d)
	movx	a,@dptr
	add	a,r4
	add	a,#0xd0
	mov	_hour,a
;	include/gsm_serial.c:332: minute = (lenh_sms[15]-48)*10 + lenh_sms[16] - 48;
	mov	dptr,#(_lenh_sms + 0x000f)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r4,a
	mov	dptr,#(_lenh_sms + 0x0010)
	movx	a,@dptr
	add	a,r4
	add	a,#0xd0
	mov	_minute,a
;	include/gsm_serial.c:333: second = (lenh_sms[18]-48)*10 + lenh_sms[19] - 48;
	mov	dptr,#(_lenh_sms + 0x0012)
	movx	a,@dptr
	add	a,#0xd0
	mov	b,#0x0a
	mul	ab
	mov	r4,a
	mov	dptr,#(_lenh_sms + 0x0013)
	movx	a,@dptr
	add	a,r4
	add	a,#0xd0
	mov	_second,a
;	include/gsm_serial.c:335: u16 check = (23*month/9 + day + (month>2?!(year%4):2) + year + (year+3)/4 + 1) ;
	mov	ar4,r6
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0017
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	__divsint_PARM_2,#0x09
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r2,#0x00
	mov	a,r5
	add	a,r3
	mov	r5,a
	mov	a,r2
	addc	a,r4
	mov	r4,a
	mov	a,r6
	add	a,#0xff - 0x02
	jnc	00113$
	mov	a,#0x03
	anl	a,r7
	mov	r6,#0x00
	orl	a,r6
	cjne	a,#0x01,00146$
00146$:
	mov  _gsm_thietlapngaygiothuc_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r3,a
	mov	r6,#0x00
	sjmp	00114$
00113$:
	mov	r3,#0x02
	mov	r6,#0x00
00114$:
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	ar6,r7
	mov	r3,#0x00
	mov	a,r6
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	inc	dptr
;	include/gsm_serial.c:336: date = check%7+1;
	mov	__moduint_PARM_2,#0x07
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_date
	mov	a,r6
	inc	a
	movx	@dptr,a
;	include/gsm_serial.c:338: GPS_time_temp = 1;
;	assignBit
	setb	_gsm_thietlapngaygiothuc_GPS_time_temp_65536_125
00110$:
;	include/gsm_serial.c:343: GPS_time = GPS_time_temp;
;	assignBit
	mov	c,_gsm_thietlapngaygiothuc_GPS_time_temp_65536_125
	mov	_GPS_time,c
;	include/gsm_serial.c:344: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapgoidien'
;------------------------------------------------------------
;	include/gsm_serial.c:347: __bit gsm_thietlapgoidien(){
;	-----------------------------------------
;	 function gsm_thietlapgoidien
;	-----------------------------------------
_gsm_thietlapgoidien:
;	include/gsm_serial.c:349: if(gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_61
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_61 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00104$
;	include/gsm_serial.c:350: clear_sms_buffer(0);
	mov	dpl,#0x00
	lcall	_clear_sms_buffer
;	include/gsm_serial.c:351: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:352: gsm_serial_cmd = CALR;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x0b
	movx	@dptr,a
;	include/gsm_serial.c:353: if(gsm_sendandcheck("AT+CCALR?\r",15,1," THIET LAP GOI ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_63
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_63 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_62
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00104$
;	include/gsm_serial.c:354: return 1;
	setb	c
	ret
00104$:
;	include/gsm_serial.c:357: return 0;
	clr	c
;	include/gsm_serial.c:359: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapnhantin'
;------------------------------------------------------------
;	include/gsm_serial.c:361: __bit gsm_thietlapnhantin(){
;	-----------------------------------------
;	 function gsm_thietlapnhantin
;	-----------------------------------------
_gsm_thietlapnhantin:
;	include/gsm_serial.c:362: if(!gsm_pw || !sms_on) return 0;
	jnb	_P20,00101$
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
00101$:
	clr	c
	ret
00102$:
;	include/gsm_serial.c:363: if(gsm_sendandcheck("AT+CMGF=1\r", 15, 1,"  SENDING CMGF  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_65
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_65 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:364: if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_67
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_67 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:365: if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  THIET LAP TN  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_69
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_69 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00109$
;	include/gsm_serial.c:366: kiemtratinhieu();
	lcall	_kiemtratinhieu
;	include/gsm_serial.c:367: return 1;
	setb	c
	ret
00109$:
;	include/gsm_serial.c:371: return 0;
	clr	c
;	include/gsm_serial.c:372: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_thietlapnhantin1'
;------------------------------------------------------------
;	include/gsm_serial.c:374: __bit gsm_thietlapnhantin1(){
;	-----------------------------------------
;	 function gsm_thietlapnhantin1
;	-----------------------------------------
_gsm_thietlapnhantin1:
;	include/gsm_serial.c:375: if(!gsm_pw || !sms_on) return 0;
	jnb	_P20,00101$
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00102$
00101$:
	clr	c
	ret
00102$:
;	include/gsm_serial.c:376: if(!gsm_sendandcheck("AT\r", 15, 1,"THIET LAP TNHAN ")) return 0;
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
;	include/gsm_serial.c:377: if(gsm_sendandcheck("AT+CMGF=1\r", 15, 2,"  SENDING CMGF  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_65
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_65 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x02
	mov	dptr,#___str_64
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:378: if(gsm_sendandcheck("AT+CNMI=1,1,0,0,1\r", 15, 1,"  SENDING CNMI  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_67
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_67 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_66
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:379: if(gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 20, 3,"  SENDING CMGDA  ")){
	mov	_gsm_sendandcheck_PARM_4,#___str_71
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_71 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x14
	mov	_gsm_sendandcheck_PARM_3,#0x03
	mov	dptr,#___str_68
	mov	b,#0x80
	lcall	_gsm_sendandcheck
	jnc	00111$
;	include/gsm_serial.c:380: return 1;
	setb	c
	ret
00111$:
;	include/gsm_serial.c:384: return 0;
	clr	c
;	include/gsm_serial.c:385: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_laygio_gps'
;------------------------------------------------------------
;phay                      Allocated to registers r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	include/gsm_serial.c:388: void gsm_laygio_gps(){
;	-----------------------------------------
;	 function gsm_laygio_gps
;	-----------------------------------------
_gsm_laygio_gps:
;	include/gsm_serial.c:389: __bit GPS_time_temp = 0;
;	assignBit
	clr	_gsm_laygio_gps_GPS_time_temp_65536_142
;	include/gsm_serial.c:390: if(sim_test_sec==61) return;
	mov	dptr,#_sim_test_sec
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3d,00102$
	ret
00102$:
;	include/gsm_serial.c:391: if(gsm_sendandcheck("AT\r", 15, 1,"LAY GIO VE TINH ")){
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
;	include/gsm_serial.c:392: if(gsm_sendandcheck("AT+IPR=0\r", 15, 1,"  SENDING IPR   ")){
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
;	include/gsm_serial.c:393: gsm_sendandcheck("AT+CLIP=1\r", 15, 1,"  SENDING CLIP  ");
	mov	_gsm_sendandcheck_PARM_4,#___str_61
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_61 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_gsm_sendandcheck
;	include/gsm_serial.c:394: if(eep_gpson){
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jnz	00222$
	ljmp	00132$
00222$:
;	include/gsm_serial.c:395: if(gsm_sendandcheck("AT+CLTS=1\r", 15, 1,"  SENDING CLTS  ")){
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
;	include/gsm_serial.c:396: if(gsm_sendandcheck("AT+CFUN=0\r", 15, 1,"  SENDING CFUN0  ")){
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
;	include/gsm_serial.c:397: gsm_serial_cmd = CFUN1;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x06
	movx	@dptr,a
;	include/gsm_serial.c:398: if(gsm_sendandcheck("AT+CFUN=1\r", 15, 2,"  SENDING CFUN1  ")){
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
;	include/gsm_serial.c:399: if(have_time == CFUN){
	mov	dptr,#_have_time
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00226$
	sjmp	00227$
00226$:
	ljmp	00132$
00227$:
;	include/gsm_serial.c:401: while((date_str[i++]!=',' || ++phay<3) && i<11)WATCHDOG;
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
;	include/gsm_serial.c:402: if(phay>2){
	mov	a,r7
	add	a,#0xff - 0x02
	jc	00234$
	ljmp	00132$
00234$:
;	include/gsm_serial.c:403: if(date_str[i+1]==',') hour = (date_str[i++]-'0');
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
;	include/gsm_serial.c:404: else hour = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
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
;	include/gsm_serial.c:405: if(date_str[++i+1]==',') minute = (date_str[i++]-'0');
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
;	include/gsm_serial.c:406: else minute = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
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
;	include/gsm_serial.c:407: if(date_str[++i+1]==',') second = (date_str[i++]-'0');
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
;	include/gsm_serial.c:408: else second = (date_str[i++]-'0')*10 + (date_str[i++]-'0');
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
;	include/gsm_serial.c:409: hour = (hour+7>23) ? hour-17 : hour+7;
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
;	include/gsm_serial.c:411: GPS_time_temp = 1;
;	assignBit
	setb	_gsm_laygio_gps_GPS_time_temp_65536_142
00132$:
;	include/gsm_serial.c:420: GPS_time = GPS_time_temp;
;	assignBit
	mov	c,_gsm_laygio_gps_GPS_time_temp_65536_142
	mov	_GPS_time,c
;	include/gsm_serial.c:421: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:422: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gsm_serial_interrupt'
;------------------------------------------------------------
;	include/gsm_serial.c:428: void gsm_serial_interrupt() __interrupt gsm_SERIAL_INT __using SERIAL_MEM{
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
;	include/gsm_serial.c:429: if(gsm_RI){
	jb	_RI,00955$
	ljmp	00350$
00955$:
;	include/gsm_serial.c:430: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	include/gsm_serial.c:431: connect = connect_time_out;
	mov	dptr,#_connect_time_out
	movx	a,@dptr
	mov	dptr,#_connect
	movx	@dptr,a
;	include/gsm_serial.c:432: gsm_receive_buf[gsm_receive_pointer] = SBUF;
	mov	dptr,#_gsm_receive_pointer
	movx	a,@dptr
	add	a,#_gsm_receive_buf
	mov	dpl,a
	clr	a
	addc	a,#(_gsm_receive_buf >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	include/gsm_serial.c:434: if((gsm_receive_buf[gsm_receive_pointer]=='N' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
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
;	include/gsm_serial.c:435: gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
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
;	include/gsm_serial.c:436: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='O' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='N')){
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
;	include/gsm_serial.c:438: nosim = 1;
;	assignBit
	setb	_nosim
00102$:
;	include/gsm_serial.c:443: switch(gsm_serial_cmd){
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
;	include/gsm_serial.c:444: case CSQ:
00108$:
;	include/gsm_serial.c:445: lenh_sms[sms_index++] = SBUF;
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
;	include/gsm_serial.c:446: if(SBUF==' ' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':')sms_index = 0;
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
;	include/gsm_serial.c:447: if(SBUF==',')sms_index = gsm_serial_cmd = NORMAL;
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
;	include/gsm_serial.c:448: break;
	ljmp	00345$
;	include/gsm_serial.c:449: case COPS:
00114$:
;	include/gsm_serial.c:450: if(SBUF=='T' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='S' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='D')
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
;	include/gsm_serial.c:451: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00120$:
;	include/gsm_serial.c:452: else if(SBUF=='R' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='R')
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
;	include/gsm_serial.c:453: connect = 0;
	mov	dptr,#_connect
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:454: break;
	ljmp	00345$
;	include/gsm_serial.c:455: case CSPN:
00124$:
;	include/gsm_serial.c:456: lenh_sms[sms_index++] = SBUF;
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
;	include/gsm_serial.c:457: if(SBUF=='"' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ')sms_index = 0;
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
;	include/gsm_serial.c:458: if(SBUF==',' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
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
;	include/gsm_serial.c:459: break;
	ljmp	00345$
;	include/gsm_serial.c:460: case CALR:
00131$:
;	include/gsm_serial.c:461: if(SBUF=='1')gui_lenh_thanh_cong = 1;
	mov	a,#0x31
	cjne	a,_SBUF,00997$
	sjmp	00998$
00997$:
	ljmp	00345$
00998$:
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:463: break;
	ljmp	00345$
;	include/gsm_serial.c:464: case CLK:
00134$:
;	include/gsm_serial.c:465: lenh_sms[sms_index++] = SBUF;
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
;	include/gsm_serial.c:466: if(SBUF=='K' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='L' &&  gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C')sms_index = 0;
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
;	include/gsm_serial.c:467: if(SBUF=='\r' &&  gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"')sms_index = gsm_serial_cmd = 0;
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
;	include/gsm_serial.c:468: break;
	ljmp	00345$
;	include/gsm_serial.c:469: case NORMAL:
00142$:
;	include/gsm_serial.c:470: if(SBUF=='>'){
	mov	a,#0x3e
	cjne	a,_SBUF,00189$
;	include/gsm_serial.c:471: send_gsm_cmd("\032");
	mov	dptr,#___str_7
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00189$:
;	include/gsm_serial.c:473: }else if((gsm_receive_buf[gsm_receive_pointer]=='G' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='N' &&
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
;	include/gsm_serial.c:474: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='I' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='R')){
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
;	include/gsm_serial.c:476: send_gsm_cmd("ATH\r");
	mov	dptr,#___str_80
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00183$:
;	include/gsm_serial.c:480: }else if((gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='I' &&
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
;	include/gsm_serial.c:481: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='M' &&
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
;	include/gsm_serial.c:482: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='+')){
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
;	include/gsm_serial.c:484: co_tin_nhan_moi = 1;
;	assignBit
	setb	_co_tin_nhan_moi
	ljmp	00345$
00175$:
;	include/gsm_serial.c:488: }else if((gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
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
;	include/gsm_serial.c:489: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='L' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='G' &&
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
;	include/gsm_serial.c:490: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='M'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
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
;	include/gsm_serial.c:491: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')||(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
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
;	include/gsm_serial.c:492: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='I' &&
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
;	include/gsm_serial.c:493: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L'  && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='C' &&
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
;	include/gsm_serial.c:494: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='+')){
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
;	include/gsm_serial.c:495: co_cuoc_goi_toi = gsm_receive_buf[(gsm_receive_pointer+9)%13] =='L';
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
;	include/gsm_serial.c:496: if(!co_cuoc_goi_toi && sms_dang_xu_ly) break;
	mov	_co_cuoc_goi_toi,c
	jc	00144$
	jnb	_sms_dang_xu_ly,01061$
	ljmp	00345$
01061$:
00144$:
;	include/gsm_serial.c:499: phone_header = 0;
;	assignBit
	clr	_phone_header
;	include/gsm_serial.c:500: phone_phu_so_sanh_that_bai = 0;
;	assignBit
	clr	_phone_phu_so_sanh_that_bai
;	include/gsm_serial.c:501: phone_chinh_so_sanh_that_bai = 0;
;	assignBit
	clr	_phone_chinh_so_sanh_that_bai
;	include/gsm_serial.c:502: gsm_serial_cmd = PHONE;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x03
	movx	@dptr,a
	ljmp	00345$
00159$:
;	include/gsm_serial.c:504: }else if(gsm_receive_buf[gsm_receive_pointer]=='K' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O'){
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
;	include/gsm_serial.c:505: if(gsm_serial_cmd==CLK) sms_index = 0;
	cjne	r5,#0x02,00147$
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
00147$:
;	include/gsm_serial.c:506: gui_lenh_thanh_cong = !have_not;
	mov	c,_have_not
	cpl	c
	mov	_gui_lenh_thanh_cong,c
;	include/gsm_serial.c:507: have_not = 0;
;	assignBit
	clr	_have_not
;	include/gsm_serial.c:508: if(sms_index){
	mov	dptr,#_sms_index
	movx	a,@dptr
	jnz	01068$
	ljmp	00345$
01068$:
;	include/gsm_serial.c:509: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:510: send_gsm_cmd("AT+CMGDA=\"DEL ALL\"\r");
	mov	dptr,#___str_68
	mov	b,#0x80
	mov	psw,#0x00
	lcall	_send_gsm_cmd
	mov	psw,#0x10
	ljmp	00345$
00155$:
;	include/gsm_serial.c:514: }else if(gsm_receive_buf[gsm_receive_pointer]=='T' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='O' &&
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
;	include/gsm_serial.c:515: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='N'){
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
;	include/gsm_serial.c:517: have_not = 1;
;	assignBit
	setb	_have_not
;	include/gsm_serial.c:520: break;
	ljmp	00345$
;	include/gsm_serial.c:521: case CFUN1:
00191$:
;	include/gsm_serial.c:522: if(gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
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
;	include/gsm_serial.c:523: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='Z' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' &&
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
;	include/gsm_serial.c:524: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='U' &&
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
;	include/gsm_serial.c:525: gsm_receive_buf[(gsm_receive_pointer+7)%13] =='S' && gsm_receive_buf[(gsm_receive_pointer+6)%13] =='P' &&
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
;	include/gsm_serial.c:526: gsm_receive_buf[(gsm_receive_pointer+5)%13] =='*'){
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
;	include/gsm_serial.c:528: date_pointer = 0;
	mov	dptr,#_date_pointer
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:529: gsm_serial_cmd = CFUN;
	mov	dptr,#_gsm_serial_cmd
	inc	a
	movx	@dptr,a
;	include/gsm_serial.c:532: break;
	ljmp	00345$
;	include/gsm_serial.c:534: case CFUN:
00202$:
;	include/gsm_serial.c:535: if(SBUF!='\r' && date_pointer<30)
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
;	include/gsm_serial.c:536: date_str[date_pointer++] = SBUF;
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
;	include/gsm_serial.c:538: date_str[date_pointer-1] = 0;
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
;	include/gsm_serial.c:539: have_time = gsm_serial_cmd;
	mov	dptr,#_gsm_serial_cmd
	movx	a,@dptr
	mov	dptr,#_have_time
	movx	@dptr,a
;	include/gsm_serial.c:540: gsm_serial_cmd = 0;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:541: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:543: break;
	ljmp	00345$
;	include/gsm_serial.c:544: case PHONE:
00207$:
;	include/gsm_serial.c:547: if(phone_header){
	jb	_phone_header,01096$
	ljmp	00240$
01096$:
;	include/gsm_serial.c:548: if(!sms_index){
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	jnz	00227$
;	include/gsm_serial.c:549: if(SBUF=='\r'){
	mov	a,#0x0d
	cjne	a,_SBUF,01098$
	sjmp	01099$
01098$:
	ljmp	00345$
01099$:
;	include/gsm_serial.c:550: if(co_cuoc_goi_toi){
	jnb	_co_cuoc_goi_toi,00209$
;	include/gsm_serial.c:551: delay_cuoc_goi_ke_tiep = 2;
	mov	dptr,#_delay_cuoc_goi_ke_tiep
	mov	a,#0x02
	movx	@dptr,a
;	include/gsm_serial.c:552: so_lan_goi_dien++;
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00209$:
;	include/gsm_serial.c:554: gsm_serial_cmd = CMD;
	mov	dptr,#_gsm_serial_cmd
	mov	a,#0x05
	movx	@dptr,a
	ljmp	00345$
00227$:
;	include/gsm_serial.c:558: else if(sms_index==PHONE_LENGTH && gsm_SBUF == '"') {/*SMS buoc 5: neu tat ca chu so dt deu trung chuyen qua tim lenh */
	cjne	r5,#0x0a,00223$
	mov	a,#0x22
	cjne	a,_SBUF,00223$
;	include/gsm_serial.c:559: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
	ljmp	00345$
00223$:
;	include/gsm_serial.c:564: if(!phone_chinh_so_sanh_that_bai && phone_chinh[sms_index] != gsm_SBUF)phone_chinh_so_sanh_that_bai = 1;
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
;	include/gsm_serial.c:565: if(!bat_phone_phu || (!phone_phu_so_sanh_that_bai && eep_phonephu[sms_index] != gsm_SBUF))phone_phu_so_sanh_that_bai = 1;
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
;	include/gsm_serial.c:566: sms_index++;
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
;	include/gsm_serial.c:567: if(phone_chinh_so_sanh_that_bai && phone_phu_so_sanh_that_bai) gsm_serial_cmd = NORMAL;
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
;	include/gsm_serial.c:573: if((co_cuoc_goi_toi && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='"') || (gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8' &&
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
;	include/gsm_serial.c:574: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='+' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='"')){
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
;	include/gsm_serial.c:575: phone_header = 1;
;	assignBit
	setb	_phone_header
;	include/gsm_serial.c:576: sms_index = 1;
	mov	dptr,#_sms_index
	mov	a,#0x01
	movx	@dptr,a
00230$:
;	include/gsm_serial.c:578: if(SBUF=='\r') gsm_serial_cmd = NORMAL;
	mov	a,#0x0d
	cjne	a,_SBUF,01124$
	sjmp	01125$
01124$:
	ljmp	00345$
01125$:
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:580: break;
	ljmp	00345$
;	include/gsm_serial.c:581: case CMD:/*SMS buoc 7: tim duoc pin chinh xac tien hanh lay lenh trong tin nhan
00242$:
;	include/gsm_serial.c:584: if(pin_chinh_xac){
	jnb	_pin_chinh_xac,00251$
;	include/gsm_serial.c:586: if(SBUF!=';' && SBUF!='\r' && sms_index<160){
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
;	include/gsm_serial.c:588: lenh_sms[sms_index++] = SBUF;    
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
;	include/gsm_serial.c:591: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:592: pin_chinh_xac = 0;
;	assignBit
	clr	_pin_chinh_xac
;	include/gsm_serial.c:593: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:594: sms_dang_xu_ly = 1;
;	assignBit
	setb	_sms_dang_xu_ly
	ljmp	00345$
00251$:
;	include/gsm_serial.c:598: pin_chinh_xac = gsm_receive_buf[gsm_receive_pointer]==',' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' &&
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
;	include/gsm_serial.c:599: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='U' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='D' &&
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
;	include/gsm_serial.c:600: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='P' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='*';
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
;	include/gsm_serial.c:601: if(SBUF=='\r'){sms_index =1; gsm_serial_cmd = NORMAL;}
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
;	include/gsm_serial.c:603: break;
	ljmp	00345$
;	include/gsm_serial.c:604: case CMGS:
00253$:
;	include/gsm_serial.c:605: if(SBUF=='>'){
	mov	a,#0x3e
	cjne	a,_SBUF,00259$
;	include/gsm_serial.c:606: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	include/gsm_serial.c:607: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00259$:
;	include/gsm_serial.c:608: }else if(gsm_receive_buf[gsm_receive_pointer]=='R' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E') connect  = 0;
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
;	include/gsm_serial.c:609: break;
	ljmp	00345$
;	include/gsm_serial.c:610: case CUSD:
00261$:
;	include/gsm_serial.c:611: if(have_cusd){
	jnb	_have_cusd,00302$
;	include/gsm_serial.c:612: if((((nha_mang == VINAPHONE || nha_mang == MOBIFONE) && SBUF !=' ') || ((nha_mang==VIETTEL || nha_mang==VIETNAM) && SBUF!='d'))  && sms_index<160){
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
;	include/gsm_serial.c:613: if(SBUF!='.')lenh_sms[sms_index++] = SBUF;
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
;	include/gsm_serial.c:616: have_quote = have_cusd = 0;
;	assignBit
	clr	_have_cusd
;	assignBit
	clr	_have_quote
;	include/gsm_serial.c:617: lenh_sms[sms_index] = 0;
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
;	include/gsm_serial.c:618: sms_index = 0;
	mov	dptr,#_sms_index
	movx	@dptr,a
;	include/gsm_serial.c:620: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
	ljmp	00345$
00302$:
;	include/gsm_serial.c:623: }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]=='=' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='h' &&
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
;	include/gsm_serial.c:624: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='n' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='i' &&
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
;	include/gsm_serial.c:625: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='h' && gsm_receive_buf[(gsm_receive_pointer+8)%13] =='c') ||
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
;	include/gsm_serial.c:626: (nha_mang == VIETTEL && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
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
;	include/gsm_serial.c:627: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='G' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
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
;	include/gsm_serial.c:628: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+8)%13] ==' ') ||
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
;	include/gsm_serial.c:629: (nha_mang == MOBIFONE && gsm_receive_buf[gsm_receive_pointer]==' ' &&
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
;	include/gsm_serial.c:630: gsm_receive_buf[(gsm_receive_pointer+12)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='K' &&
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
;	include/gsm_serial.c:631: gsm_receive_buf[(gsm_receive_pointer+10)%13] =='T' && gsm_receive_buf[(gsm_receive_pointer+9)%13] ==' ' &&
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
;	include/gsm_serial.c:632: gsm_receive_buf[(gsm_receive_pointer+8)%13] =='.') ||
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
;	include/gsm_serial.c:637: (nha_mang == VIETNAM && gsm_receive_buf[gsm_receive_pointer]==' ' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==':' &&
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
;	include/gsm_serial.c:638: gsm_receive_buf[(gsm_receive_pointer+11)%13] =='C' && gsm_receive_buf[(gsm_receive_pointer+10)%13] =='K' &&
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
;	include/gsm_serial.c:639: gsm_receive_buf[(gsm_receive_pointer+9)%13] =='T'))
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
;	include/gsm_serial.c:640: {have_cusd = 1;}
;	assignBit
	setb	_have_cusd
;	include/gsm_serial.c:641: break;
	ljmp	00345$
;	include/gsm_serial.c:642: case SDT:
00304$:
;	include/gsm_serial.c:643: if(have_cusd){
	jb	_have_cusd,01216$
	ljmp	00342$
01216$:
;	include/gsm_serial.c:644: if((((nha_mang == VINAPHONE || nha_mang == VIETNAM) && SBUF !='\n') || (nha_mang == MOBIFONE && SBUF !='"') || (nha_mang == VIETTEL && SBUF !='.'))  && sms_index<10) 
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
;	include/gsm_serial.c:645: if(sms_index<9) phone[1+sms_index++] = SBUF;
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
;	include/gsm_serial.c:646: else sms_index++;
	mov	dptr,#_sms_index
	mov	a,r5
	inc	a
	movx	@dptr,a
	ljmp	00345$
00312$:
;	include/gsm_serial.c:648: have_quote = have_cusd = 0;                            
;	assignBit
	clr	_have_cusd
;	assignBit
	clr	_have_quote
;	include/gsm_serial.c:649: if(sms_index<10){
	mov	dptr,#_sms_index
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,01233$
01233$:
	jnc	00309$
;	include/gsm_serial.c:650: gui_lenh_thanh_cong = 1;
;	assignBit
	setb	_gui_lenh_thanh_cong
;	include/gsm_serial.c:651: phone[sms_index+1] = 0;
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
;	include/gsm_serial.c:653: else connect =0;
	mov	dptr,#_connect
	clr	a
	movx	@dptr,a
00310$:
;	include/gsm_serial.c:654: sms_index = 0;
	mov	dptr,#_sms_index
	clr	a
	movx	@dptr,a
	ljmp	00345$
00342$:
;	include/gsm_serial.c:657: }else if((nha_mang == VINAPHONE && gsm_receive_buf[gsm_receive_pointer]==':' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==')') ||
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
;	include/gsm_serial.c:658: (nha_mang == VIETNAM   && gsm_receive_buf[gsm_receive_pointer]=='0' && gsm_receive_buf[(gsm_receive_pointer+12)%13] ==' ') ||
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
;	include/gsm_serial.c:659: ((nha_mang == MOBIFONE || nha_mang == VIETTEL)  && gsm_receive_buf[gsm_receive_pointer]=='4' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='8'))
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
;	include/gsm_serial.c:660: have_cusd = 1;
;	assignBit
	setb	_have_cusd
	ljmp	00345$
00330$:
;	include/gsm_serial.c:661: else if((SBUF=='5' && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='1' && gsm_receive_buf[(gsm_receive_pointer+11)%13] ==' ' && gsm_receive_buf[(gsm_receive_pointer+10)%13] ==',') ||
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
;	include/gsm_serial.c:662: (SBUF=='R'  && gsm_receive_buf[(gsm_receive_pointer+12)%13] =='R' && gsm_receive_buf[(gsm_receive_pointer+11)%13] =='E'))
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
;	include/gsm_serial.c:663: error = 1;
;	assignBit
	setb	_error
;	include/gsm_serial.c:666: }
00345$:
;	include/gsm_serial.c:667: if(++gsm_receive_pointer>12) gsm_receive_pointer = 0;
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
;	include/gsm_serial.c:668: gsm_RI = 0;
;	assignBit
	clr	_RI
00350$:
;	include/gsm_serial.c:670: }
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
;phutdelta                 Allocated with name '_xu_ly_tin_nhan_phutdelta_65537_186'
;kim_index                 Allocated with name '_xu_ly_tin_nhan_kim_index_65537_186'
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
;i                         Allocated with name '_xu_ly_tin_nhan_i_65537_186'
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
	mov	_xu_ly_tin_nhan_phutdelta_65537_186,a
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
	mov	r2,_xu_ly_tin_nhan_phutdelta_65537_186
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
	mov	r3,_xu_ly_tin_nhan_phutdelta_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x03
	movx	@dptr,a
;	include/xu_ly_tin_nhan.c:87: kim_index = 1;
	mov	_xu_ly_tin_nhan_kim_index_65537_186,#0x01
;	include/xu_ly_tin_nhan.c:88: do{
00198$:
;	include/xu_ly_tin_nhan.c:89: if(lenh_sms[i]==','){
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	a,_xu_ly_tin_nhan_kim_index_65537_186
	jnz	00166$
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x65
	movx	@dptr,a
	ljmp	00199$
00166$:
;	include/xu_ly_tin_nhan.c:92: kim_index = (kim_index+1)%(so_motor+1);
	mov	r3,_xu_ly_tin_nhan_kim_index_65537_186
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
	mov	_xu_ly_tin_nhan_kim_index_65537_186,r3
;	include/xu_ly_tin_nhan.c:93: i++;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,r6
	inc	a
	movx	@dptr,a
	ljmp	00199$
00196$:
;	include/xu_ly_tin_nhan.c:96: else if(lenh_sms[i]<48) i = !kim_index?101:202;
	cjne	r5,#0x30,01760$
01760$:
	jnc	00193$
	mov	a,_xu_ly_tin_nhan_kim_index_65537_186
	jnz	00496$
	mov	r4,#0x65
	mov	r6,a
	sjmp	00497$
00496$:
	mov	r4,#0xca
	mov	r6,#0x00
00497$:
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,r4
	movx	@dptr,a
	ljmp	00199$
00193$:
;	include/xu_ly_tin_nhan.c:97: else if(!kim_index && (lenh_sms[i]=='g' || lenh_sms[i]=='G' || lenh_sms[i]=='a' || lenh_sms[i]=='A')){
	mov	a,_xu_ly_tin_nhan_kim_index_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x65
	movx	@dptr,a
	ljmp	00199$
00186$:
;	include/xu_ly_tin_nhan.c:109: else if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	a,_xu_ly_tin_nhan_kim_index_65537_186
	jnz	01782$
	ljmp	00173$
01782$:
;	include/xu_ly_tin_nhan.c:112: gio[kim_index-1] = ((lenh_sms[i]-'0')*10 + lenh_sms[i+1] - '0')%12;
	mov	r7,_xu_ly_tin_nhan_kim_index_65537_186
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
	mov	r5,_xu_ly_tin_nhan_kim_index_65537_186
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
	mov	_xu_ly_tin_nhan_kim_index_65537_186,r5
;	include/xu_ly_tin_nhan.c:116: i+=5;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x65
	movx	@dptr,a
	sjmp	00199$
00176$:
;	include/xu_ly_tin_nhan.c:130: }else i = 202;
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0xca
	movx	@dptr,a
00199$:
;	include/xu_ly_tin_nhan.c:131: }while(i<100);
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x04
	movx	@dptr,a
00488$:
;	include/xu_ly_tin_nhan.c:260: if(lenh_sms[i]>47 && lenh_sms[i]<51 && lenh_sms[i+1]>47 && lenh_sms[i+1]<58 &&
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
	mov	a,#0x4b
	movx	@dptr,a
00489$:
;	include/xu_ly_tin_nhan.c:259: for(i=4;i<75;i+=10){
	mov	dptr,#_xu_ly_tin_nhan_i_65537_186
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
;giotemp                   Allocated with name '_main_giotemp_65536_254'
;phuttemp                  Allocated to registers r5 
;so_gio_mat_gps            Allocated with name '_main_so_gio_mat_gps_65536_254'
;debug_dem                 Allocated with name '_main_debug_dem_131073_264'
;mp3temp                   Allocated with name '_main_mp3temp_131073_264'
;retry                     Allocated with name '_main_retry_131073_285'
;retry                     Allocated with name '_main_retry_131073_288'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;ngaytemp                  Allocated with name '_main_ngaytemp_65536_254'
;thangtemp                 Allocated with name '_main_thangtemp_65536_254'
;namtemp                   Allocated with name '_main_namtemp_65536_254'
;thutemp                   Allocated with name '_main_thutemp_65536_254'
;check                     Allocated with name '_main_check_65536_254'
;i                         Allocated with name '_main_i_65537_255'
;------------------------------------------------------------
;	src\main.c:30: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	src\main.c:31: u8 __data giotemp=0,phuttemp=0, so_gio_mat_gps=0;
	mov	r7,#0x00
	mov	r6,#0x00
;	1-genFromRTrack replaced	mov	_main_so_gio_mat_gps_65536_254,#0x00
	mov	_main_so_gio_mat_gps_65536_254,r7
;	src\main.c:32: u8 __xdata  ngaytemp = 1, thangtemp=1, namtemp = 21, thutemp = 1;
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_main_thangtemp_65536_254
	movx	@dptr,a
	mov	dptr,#_main_namtemp_65536_254
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#_main_thutemp_65536_254
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:35: P0M1 = 0; P0M0 = 0xff; //port LCD -- chân xuất với điện trở kéo lên nhỏ, dòng lớn -> 20mA
;	1-genFromRTrack replaced	mov	_P0M1,#0x00
	mov	_P0M1,r7
	mov	_P0M0,#0xff
;	src\main.c:36: P1M1 = P1M0 = 0;
;	1-genFromRTrack replaced	mov	_P1M0,#0x00
	mov	_P1M0,r7
;	1-genFromRTrack replaced	mov	_P1M1,#0x00
	mov	_P1M1,r7
;	src\main.c:37: P2M1 = 0; P2M0 = 0xff; // output
;	1-genFromRTrack replaced	mov	_P2M1,#0x00
	mov	_P2M1,r7
	mov	_P2M0,#0xff
;	src\main.c:38: P3M1 = P3M0 = 0; //full compatip 8051 -- key and cam
;	1-genFromRTrack replaced	mov	_P3M0,#0x00
	mov	_P3M0,r7
;	1-genFromRTrack replaced	mov	_P3M1,#0x00
	mov	_P3M1,r7
;	src\main.c:39: P4M1 = 2; P4M0 = 0x1c;//full compatip 8051 --motor port
	mov	_P4M1,#0x02
	mov	_P4M0,#0x1c
;	src\main.c:40: P5M1 = P5M0 = 0; // full compatip 8051
;	1-genFromRTrack replaced	mov	_P5M0,#0x00
	mov	_P5M0,r7
;	1-genFromRTrack replaced	mov	_P5M1,#0x00
	mov	_P5M1,r7
;	src\main.c:41: P4 = 0;
;	1-genFromRTrack replaced	mov	_P4,#0x00
	mov	_P4,r7
;	src\main.c:42: P3 = 0xff;
	mov	_P3,#0xff
;	src\main.c:43: P2 = 0;
;	1-genFromRTrack replaced	mov	_P2,#0x00
	mov	_P2,r7
;	src\main.c:45: IP = 0x81; //priority PCA
	mov	_IP,#0x81
;	src\main.c:47: P1ASF = 8;
	mov	_P1ASF,#0x08
;	src\main.c:48: CLK_DIV = 0;
;	1-genFromRTrack replaced	mov	_CLK_DIV,#0x00
	mov	_CLK_DIV,r7
;	src\main.c:49: ADC_RES = 0;
;	1-genFromRTrack replaced	mov	_ADC_RES,#0x00
	mov	_ADC_RES,r7
;	src\main.c:50: ADC_CONTR = 0x83;
	mov	_ADC_CONTR,#0x83
;	src\main.c:51: EADC = 1;
;	assignBit
	setb	_EADC
;	src\main.c:52: EA = 1; //bat tat ca interupt
;	assignBit
	setb	_EA
;	src\main.c:55: xung_giay_check=0;
	mov	dptr,#_xung_giay_check
	clr	a
	movx	@dptr,a
;	src\main.c:56: so_lan_goi_dien = 0;
	mov	dptr,#_so_lan_goi_dien
	movx	@dptr,a
;	src\main.c:57: motor_index = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:58: phone[0]='0';
	mov	dptr,#_phone
	mov	a,#0x30
	movx	@dptr,a
;	src\main.c:61: gsm_delay_reset=10;
	mov	dptr,#_gsm_delay_reset
	mov	a,#0x0a
	movx	@dptr,a
;	src\main.c:62: phim_mode_doi = phim_back_doi = phim_cong_doi = 2;
	mov	dptr,#_phim_cong_doi
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_phim_back_doi
	movx	@dptr,a
	mov	dptr,#_phim_mode_doi
	movx	@dptr,a
;	src\main.c:63: mode = SELECT; sub_mode = GIOKIM;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:67: LCD_Init();
	push	ar7
	push	ar6
	lcall	_LCD_Init
;	src\main.c:68: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:69: LCD_guichuoi(ver);
	mov	dptr,#_ver
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:72: delay_ms(5000);
	mov	dptr,#0x1388
	lcall	_delay_ms
;	src\main.c:78: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:79: LCD_guichuoi("THIET LAP EEPROM");
	mov	dptr,#___str_118
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:80: IAP_docxoasector1();
	lcall	_IAP_docxoasector1
	pop	ar6
	pop	ar7
;	src\main.c:81: if(eeprom_buf[MOTOR_EEPROM]==0xff)eeprom_buf[MOTOR_EEPROM] = MOTOR_DEFAULT;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0xff,00102$
	mov	dptr,#_eeprom_buf
	clr	a
	movx	@dptr,a
00102$:
;	src\main.c:97: if(eeprom_buf[BAOCAO_EEPROM]>1)eeprom_buf[BAOCAO_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0001)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00104$
	mov	dptr,#(_eeprom_buf + 0x0001)
	clr	a
	movx	@dptr,a
00104$:
;	src\main.c:98: if(eeprom_buf[GPSON_EEPROM]>1)eeprom_buf[GPSON_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0002)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00106$
	mov	dptr,#(_eeprom_buf + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
00106$:
;	src\main.c:99: if(eeprom_buf[NGAYRESET_EEPROM]>9)eeprom_buf[NGAYRESET_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x0003)
	movx	a,@dptr
	add	a,#0xff - 0x09
	jnc	00108$
	mov	dptr,#(_eeprom_buf + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
00108$:
;	src\main.c:101: if(eeprom_buf[GIORESET_EEPROM]>23)eeprom_buf[GIORESET_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0004)
	movx	a,@dptr
	add	a,#0xff - 0x17
	jnc	00110$
	mov	dptr,#(_eeprom_buf + 0x0004)
	clr	a
	movx	@dptr,a
00110$:
;	src\main.c:102: if((eeprom_buf[GIOSACXA_EEPROM]>>4) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0x0f | 0x50;
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r4,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
	mov	r2,#0x00
	dec	r3
	cjne	r3,#0xff,02459$
	dec	r2
02459$:
	clr	c
	mov	a,#0x08
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
	mov	a,#0x0f
	anl	a,r4
	orl	a,#0x50
	mov	r4,a
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	@dptr,a
00112$:
;	src\main.c:103: if((eeprom_buf[GIOSACXA_EEPROM] & 0x0f) -1 > 8) eeprom_buf[GIOSACXA_EEPROM] = eeprom_buf[GIOSACXA_EEPROM] & 0xf0 | 0x01;	
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x0f
	mov	r3,#0x00
	dec	r4
	cjne	r4,#0xff,02461$
	dec	r3
02461$:
	clr	c
	mov	a,#0x08
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	a,@dptr
	mov	r4,a
	mov	a,#0xf0
	anl	a,r4
	orl	a,#0x01
	mov	r4,a
	mov	dptr,#(_eeprom_buf + 0x0006)
	movx	@dptr,a
00114$:
;	src\main.c:104: i=1;
	mov	dptr,#_main_i_65537_255
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:105: if(eeprom_buf[TATMODEN_EEPROM]<9 && !(eeprom_buf[TATMODEN_EEPROM]&1))
	mov	dptr,#(_eeprom_buf + 0x0007)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x09,02463$
02463$:
	jnc	00117$
	mov	a,r4
	jb	acc.0,00117$
;	src\main.c:106: for(i=1;i<=eeprom_buf[TATMODEN_EEPROM] && eeprom_buf[TATMODEN_EEPROM+i]<144;i++);
	mov	r3,#0x01
00680$:
	clr	c
	mov	a,r4
	subb	a,r3
	jc	01140$
	mov	ar2,r3
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r2
	add	a,#_eeprom_buf
	mov	dpl,a
	mov	a,r5
	addc	a,#(_eeprom_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x90,02467$
02467$:
	jnc	01140$
	inc	r3
	sjmp	00680$
01140$:
	mov	dptr,#_main_i_65537_255
	mov	a,r3
	movx	@dptr,a
00117$:
;	src\main.c:107: if(i<=eeprom_buf[TATMODEN_EEPROM]){
	mov	dptr,#_main_i_65537_255
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00120$
;	src\main.c:108: eeprom_buf[TATMODEN_EEPROM] = 2;
	mov	dptr,#(_eeprom_buf + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	src\main.c:109: eeprom_buf[TATMODEN_EEPROM+1] = 36;
	mov	dptr,#(_eeprom_buf + 0x0008)
	mov	a,#0x24
	movx	@dptr,a
;	src\main.c:110: eeprom_buf[TATMODEN_EEPROM+2] = 108;
	mov	dptr,#(_eeprom_buf + 0x0009)
	mov	a,#0x6c
	movx	@dptr,a
00120$:
;	src\main.c:112: i=0;
	mov	dptr,#_main_i_65537_255
	clr	a
	movx	@dptr,a
;	src\main.c:113: if(eeprom_buf[PHONEPHU_EEPROM+11]<2 && !eeprom_buf[PHONEPHU_EEPROM+10])
	mov	dptr,#(_eeprom_buf + 0x001c)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x02,02470$
02470$:
	jnc	00123$
	mov	dptr,#(_eeprom_buf + 0x001b)
	movx	a,@dptr
;	src\main.c:114: for(i=0;i<10 && eeprom_buf[PHONEPHU_EEPROM+i]>='0' && eeprom_buf[PHONEPHU_EEPROM+i]<='9';i++);
	jnz	00123$
	mov	r5,a
00685$:
	cjne	r5,#0x0a,02473$
02473$:
	jnc	01141$
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
	cjne	r3,#0x30,02475$
02475$:
	jc	01141$
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
	jc	01141$
	inc	r5
	sjmp	00685$
01141$:
	mov	dptr,#_main_i_65537_255
	mov	a,r5
	movx	@dptr,a
00123$:
;	src\main.c:115: if(i<10){
	mov	dptr,#_main_i_65537_255
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,02478$
02478$:
	jnc	00126$
;	src\main.c:116: eeprom_buf[PHONEPHU_EEPROM+10] = 0;
	mov	dptr,#(_eeprom_buf + 0x001b)
	clr	a
	movx	@dptr,a
;	src\main.c:117: eeprom_buf[PHONEPHU_EEPROM+11] = 2;
	mov	dptr,#(_eeprom_buf + 0x001c)
	mov	a,#0x02
	movx	@dptr,a
00126$:
;	src\main.c:120: if(eeprom_buf[LOITHESIM_EEPROM]>24)eeprom_buf[LOITHESIM_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x001d)
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x18
	jnc	00128$
	mov	dptr,#(_eeprom_buf + 0x001d)
	clr	a
	movx	@dptr,a
00128$:
;	src\main.c:121: if(mp3_playing) eeprom_buf[MP3_EEPROM] &= 4;
	jnb	_P12,00135$
	mov	dptr,#(_eeprom_buf + 0x0010)
	movx	a,@dptr
	anl	a,#0x04
	mov	r5,a
	movx	@dptr,a
	sjmp	00136$
00135$:
;	src\main.c:122: else if(eeprom_buf[MP3_EEPROM]>6)eeprom_buf[MP3_EEPROM] = 2;
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
;	src\main.c:123: else if(!(eeprom_buf[MP3_EEPROM]&3))eeprom_buf[MP3_EEPROM] += 2;
	mov	a,r5
	anl	a,#0x03
	jnz	00136$
	inc	r5
	inc	r5
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,r5
	movx	@dptr,a
00136$:
;	src\main.c:124: if((eeprom_buf[DEBUG_EEPROM]&15) -1 > 10)eeprom_buf[DEBUG_EEPROM] = 0x3b; 	
	mov	dptr,#(_eeprom_buf + 0x001e)
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	r4,#0x00
	dec	r5
	cjne	r5,#0xff,02485$
	dec	r4
02485$:
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
;	src\main.c:125: if(eeprom_buf[CAM_EEPROM]>1)eeprom_buf[CAM_EEPROM] = 1;
	mov	dptr,#(_eeprom_buf + 0x001f)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00140$
	mov	dptr,#(_eeprom_buf + 0x001f)
	mov	a,#0x01
	movx	@dptr,a
00140$:
;	src\main.c:127: IAP_ghisector1();
	push	ar7
	push	ar6
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
;	src\main.c:128: so_motor = (eep_motor & 3) + 1;
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x03
	anl	a,r5
	mov	dptr,#_so_motor
	inc	a
	movx	@dptr,a
;	src\main.c:129: may_dc   = (eep_motor & 4);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_may_dc,c
;	src\main.c:130: motorDir = atmel_phat = (eep_motor & 8);
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
;	src\main.c:131: motor_dung  = (eep_motor & 16);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_motor_dung,c
;	src\main.c:134: thoi_gian_giu_motor_con_lai = thoi_gian_giu_motor = ((eep_motor & 192) >> 5) + 2;
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xc0
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
	jnb	acc.2,02488$
	orl	a,#0xf8
02488$:
	inc	r5
	inc	r5
	mov	dptr,#_thoi_gian_giu_motor
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_thoi_gian_giu_motor_con_lai
	mov	a,r5
	movx	@dptr,a
;	src\main.c:138: sms_on = (eep_debug & 96)>>5;
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
	jnb	acc.2,02489$
	orl	a,#0xf8
02489$:
	mov	r4,a
	mov	dptr,#_sms_on
	mov	a,r5
	movx	@dptr,a
;	src\main.c:139: for(i=0;i<11;i++)phone_chinh[i]= phone1[i];
	mov	r5,#0x00
00687$:
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
	cjne	r5,#0x0b,02490$
02490$:
	jc	00687$
;	src\main.c:140: if(!sms_on && !(eep_debug&16>>4)){
	mov	dptr,#_sms_on
	movx	a,@dptr
	jnz	00143$
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	jb	acc.0,00143$
;	src\main.c:141: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:142: eeprom_buf[GPSON_EEPROM] = 0;
	mov	dptr,#(_eeprom_buf + 0x0002)
	clr	a
	movx	@dptr,a
;	src\main.c:143: IAP_ghisector1();
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
00143$:
;	src\main.c:147: sim_test_sec = 0;
	mov	dptr,#_sim_test_sec
	clr	a
	movx	@dptr,a
;	src\main.c:148: max_second = (eep_debug & 15)<6?(eep_debug & 15) + 1 : (60/(12-(eep_debug & 15)));
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
	jnc	00691$
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
	sjmp	00692$
00691$:
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
00692$:
	mov	dptr,#_max_second
	mov	a,r4
	movx	@dptr,a
;	src\main.c:149: if(!(eep_debug & 16) || max_second<60) sim_test_sec = 61;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	jnb	acc.4,00145$
	cjne	r4,#0x3c,02496$
02496$:
	jnc	00146$
00145$:
	mov	dptr,#_sim_test_sec
	mov	a,#0x3d
	movx	@dptr,a
00146$:
;	src\main.c:151: thoi_gian_doi_cam_chuan = (eep_motor & 64)?255:(may_dc?30:10);
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	jnb	acc.6,00693$
	mov	r4,#0xff
	mov	r5,#0x00
	sjmp	00694$
00693$:
	jnb	_may_dc,00695$
	mov	r2,#0x1e
	mov	r3,#0x00
	sjmp	00696$
00695$:
	mov	r2,#0x0a
	mov	r3,#0x00
00696$:
	mov	ar4,r2
	mov	ar5,r3
00694$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	mov	a,r4
	movx	@dptr,a
;	src\main.c:153: switch(so_motor){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,02500$
	ljmp	00160$
02500$:
	cjne	r5,#0x02,02501$
	sjmp	00156$
02501$:
	cjne	r5,#0x03,02502$
	sjmp	00152$
02502$:
	cjne	r5,#0x04,02503$
	sjmp	02504$
02503$:
	ljmp	00165$
02504$:
;	src\main.c:154: case 4: thoi_gian_doi_doc_cam[3]=thoi_gian_doi_cam_chuan;
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0003)
	mov	a,r4
	movx	@dptr,a
;	src\main.c:155: if(eep_phut4>59 || eep_gio4>11)
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00149$
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00150$
00149$:
;	src\main.c:156: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00150$:
;	src\main.c:157: phut[3] = eep_phut4; 
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0003),a
;	src\main.c:158: gio[3] = eep_gio4;
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0003),a
;	src\main.c:159: case 3: thoi_gian_doi_doc_cam[2]=thoi_gian_doi_cam_chuan;
00152$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	@dptr,a
;	src\main.c:160: if(eep_phut3>59 || eep_gio3>11)
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00153$
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00154$
00153$:
;	src\main.c:161: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00154$:
;	src\main.c:162: phut[2] = eep_phut3; gio[2] = eep_gio3;
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0002),a
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0002),a
;	src\main.c:163: case 2: thoi_gian_doi_doc_cam[1]=thoi_gian_doi_cam_chuan;
00156$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	@dptr,a
;	src\main.c:164: if(eep_phut2>59 || eep_gio2>11)
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00157$
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00158$
00157$:
;	src\main.c:165: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00158$:
;	src\main.c:166: phut[1] = eep_phut2; gio[1] = eep_gio2;
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	mov	(_phut + 0x0001),a
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov	(_gio + 0x0001),a
;	src\main.c:167: case 1: thoi_gian_doi_doc_cam[0]=thoi_gian_doi_cam_chuan;
00160$:
	mov	dptr,#_thoi_gian_doi_cam_chuan
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	@dptr,a
;	src\main.c:168: if(eep_phut1>59 || eep_gio1>11)
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x3b
	jc	00161$
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov  r5,a
	add	a,#0xff - 0x0b
	jnc	00162$
00161$:
;	src\main.c:169: luu_gio_kim();
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00162$:
;	src\main.c:170: phut[0] = eep_phut1; gio[0] = eep_gio1;
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	mov	_phut,a
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov	_gio,a
;	src\main.c:172: }
00165$:
;	src\main.c:174: ChargeRelay = 1;
;	assignBit
	setb	_P22
;	src\main.c:177: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:178: LCD_guichuoi("POWER ON SIM800 ");
	mov	dptr,#___str_119
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:179: gsm_init();
	lcall	_gsm_init
;	src\main.c:183: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:184: LCD_guichuoi("  KHOI TAO MP3  ");
	mov	dptr,#___str_120
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:185: if(eep_mp3%4==2){
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00167$
	cjne	r5,#0x00,00167$
;	src\main.c:186: mp3_serial_init();
	push	ar7
	push	ar6
	lcall	_mp3_serial_init
	pop	ar6
	pop	ar7
;	src\main.c:187: mp3_status= mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	src\main.c:188: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:189: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
00167$:
;	src\main.c:193: da_gui_bao_cao = 1;
;	assignBit
	setb	_da_gui_bao_cao
;	src\main.c:194: ngay_reset_con_lai = eep_ngayreset;
	mov	dptr,#_eep_ngayreset
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_ngay_reset_con_lai
	movx	@dptr,a
;	src\main.c:197: PCA_Timer_init();
	push	ar7
	push	ar6
	lcall	_PCA_Timer_init
	pop	ar6
	pop	ar7
;	src\main.c:204: if(phim_mode_nhan && phim_back_nhan && phim_cong_nhan){
	jb	_phim_mode_nhan,02515$
	ljmp	00243$
02515$:
	jb	_phim_back_nhan,02516$
	ljmp	00243$
02516$:
	jb	_phim_cong_nhan,02517$
	ljmp	00243$
02517$:
;	src\main.c:205: u8 debug_dem = 0;
	mov	_main_debug_dem_131073_264,#0x00
;	src\main.c:207: u8 mp3temp = eep_mp3;
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov	_main_mp3temp_131073_264,a
;	src\main.c:208: __bit debug = 0;
;	assignBit
	clr	_main_debug_131073_264
;	src\main.c:209: giotemp = eep_debug;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	_main_giotemp_65536_254,a
;	src\main.c:211: i = eep_motor;
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	mov	r2,a
;	src\main.c:213: phim_mode_nhan = phim_back_nhan = phim_cong_nhan = 0;
;	assignBit
	clr	_phim_cong_nhan
;	assignBit
	clr	_phim_back_nhan
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:214: LCD_guichuoi("\200 NHA PHAT TRIEN");
	mov	dptr,#___str_121
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:215: LCD_guichuoi("\300MAY:");
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:216: LCD_guidulieu(so_motor+'0');
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:217: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00697$
	mov	_main_sloc0_1_0,#___str_123
	mov	(_main_sloc0_1_0 + 1),#(___str_123 >> 8)
	sjmp	00698$
00697$:
	mov	_main_sloc0_1_0,#___str_124
	mov	(_main_sloc0_1_0 + 1),#(___str_124 >> 8)
00698$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
	mov	r5,#0x80
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:218: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00699$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00700$
00699$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00700$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:219: LCD_guichuoi("\315S:");
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:220: LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:221: LCD_blinkXY(DUOI,4);
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar2
;	src\main.c:222: sub_mode = so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:223: mode = 0;
	mov	dptr,#_mode
	clr	a
	movx	@dptr,a
;	src\main.c:224: while(1){
00240$:
;	src\main.c:225: if(debug){
	jb	_main_debug_131073_264,02520$
	ljmp	00237$
02520$:
;	src\main.c:226: if(lcd_update_chop){
	jb	_lcd_update_chop,02521$
	ljmp	00169$
02521$:
;	src\main.c:227: lcd_update_chop = 0;
	push	ar2
;	assignBit
	clr	_lcd_update_chop
;	src\main.c:228: LCD_guichuoi("\300P:");
	mov	dptr,#___str_128
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:229: phuttemp = (giotemp & 15) < 6?(giotemp & 15)+1:(60/(12-(giotemp & 15)));
	mov	r3,_main_giotemp_65536_254
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
	jnc	00701$
	mov	r4,_main_giotemp_65536_254
	mov	a,#0x0f
	anl	a,r4
	inc	a
	mov	r4,a
	mov	_main_sloc0_1_0,r4
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
	sjmp	00702$
00701$:
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
;	src\main.c:1058: WATCHDOG;
	pop	ar2
;	src\main.c:229: phuttemp = (giotemp & 15) < 6?(giotemp & 15)+1:(60/(12-(giotemp & 15)));
00702$:
	mov	_main_sloc1_1_0,_main_sloc0_1_0
;	src\main.c:230: LCD_guidulieu((mode==0&&chop)?'_':phuttemp/10+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00703$
	jnb	_chop,00703$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00704$
00703$:
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
;	src\main.c:1058: WATCHDOG;
	pop	ar2
;	src\main.c:230: LCD_guidulieu((mode==0&&chop)?'_':phuttemp/10+'0');
00704$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:231: LCD_guidulieu((mode==0&&chop)?'_':phuttemp%10+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00708$
	jnb	_chop,00708$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00709$
00708$:
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
;	src\main.c:1058: WATCHDOG;
	pop	ar2
;	src\main.c:231: LCD_guidulieu((mode==0&&chop)?'_':phuttemp%10+'0');
00709$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:232: LCD_guichuoi(" T:");
	mov	dptr,#___str_129
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:233: LCD_guidulieu((mode==1&&chop)?'_':(((giotemp&96)>>5)+'0'));
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00713$
	jnb	_chop,00713$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00714$
00713$:
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
	jnb	acc.2,02530$
	orl	a,#0xf8
02530$:
	mov	r4,a
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	_main_sloc0_1_0,r2
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
;	src\main.c:1058: WATCHDOG;
	pop	ar2
;	src\main.c:233: LCD_guidulieu((mode==1&&chop)?'_':(((giotemp&96)>>5)+'0'));
00714$:
	mov	dpl,_main_sloc0_1_0
	push	ar5
	push	ar3
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:234: LCD_guichuoi(" G:");
	mov	dptr,#___str_130
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
	pop	ar3
	pop	ar5
;	src\main.c:235: LCD_guidulieu((mode==2&&chop)?'_':(((giotemp&16)>>4)+'0'));
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00718$
	jnb	_chop,00718$
	mov	_main_sloc0_1_0,#0x5f
	mov	(_main_sloc0_1_0 + 1),#0x00
	sjmp	00719$
00718$:
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
	jnb	acc.3,02534$
	orl	a,#0xf0
02534$:
	mov	r5,a
	mov	a,#0x30
	add	a,r3
	mov	r3,a
	mov	_main_sloc0_1_0,r3
	rlc	a
	subb	a,acc
	mov	(_main_sloc0_1_0 + 1),a
00719$:
	mov	dpl,_main_sloc0_1_0
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:236: LCD_guichuoi(" M:");
	mov	dptr,#___str_131
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:237: LCD_guidulieu((mode==3&&chop)?'_':((mp3temp&4)>>2)+'0');
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,00723$
	jnb	_chop,00723$
	mov	r4,#0x5f
	mov	r5,#0x00
	sjmp	00724$
00723$:
	push	ar2
	mov	r2,_main_mp3temp_131073_264
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
;	src\main.c:1058: WATCHDOG;
	pop	ar2
;	src\main.c:237: LCD_guidulieu((mode==3&&chop)?'_':((mp3temp&4)>>2)+'0');
00724$:
	mov	dpl,r4
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
00169$:
;	src\main.c:239: if(phim_mode_nhan){
;	src\main.c:240: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02538$
	ljmp	00176$
02538$:
;	src\main.c:241: mode++;
	mov	dptr,#_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:242: switch(mode){
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,02539$
	sjmp	00170$
02539$:
	cjne	r5,#0x02,02540$
	sjmp	00171$
02540$:
	cjne	r5,#0x03,02541$
	sjmp	00172$
02541$:
	cjne	r5,#0x04,02542$
	sjmp	00173$
02542$:
	ljmp	00176$
;	src\main.c:243: case 1:sub_mode = (giotemp&96)>>5;break;
00170$:
	mov	r3,_main_giotemp_65536_254
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
	jnb	acc.2,02543$
	orl	a,#0xf8
02543$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:244: case 2:sub_mode = (giotemp&16)>>4;break;
	sjmp	00176$
00171$:
	mov	r3,_main_giotemp_65536_254
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
	jnb	acc.3,02544$
	orl	a,#0xf0
02544$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:245: case 3:sub_mode = (mp3temp&4)>>2;break;
	sjmp	00176$
00172$:
	mov	r4,_main_mp3temp_131073_264
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
;	src\main.c:246: case 4:IAP_docxoasector1();
	sjmp	00176$
00173$:
	push	ar2
	lcall	_IAP_docxoasector1
;	src\main.c:247: eeprom_buf[MOTOR_EEPROM] &= 0xef;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	anl	a,#0xef
	movx	@dptr,a
;	src\main.c:248: eeprom_buf[DEBUG_EEPROM] =  giotemp;
	mov	dptr,#(_eeprom_buf + 0x001e)
	mov	a,_main_giotemp_65536_254
	movx	@dptr,a
;	src\main.c:249: eeprom_buf[MP3_EEPROM] =  mp3temp;
	mov	dptr,#(_eeprom_buf + 0x0010)
	mov	a,_main_mp3temp_131073_264
	movx	@dptr,a
;	src\main.c:251: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	src\main.c:252: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
	pop	ar2
;	src\main.c:253: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
;	src\main.c:254: }
00176$:
;	src\main.c:256: if(phim_back_nhan){
;	src\main.c:257: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02545$
	sjmp	00184$
02545$:
;	src\main.c:258: if(mode) mode--;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00178$
	mov	a,r5
	dec	a
	mov	dptr,#_mode
	movx	@dptr,a
00178$:
;	src\main.c:259: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	jz	00179$
	cjne	r5,#0x01,02548$
	sjmp	00180$
02548$:
;	src\main.c:260: case 0:sub_mode = giotemp & 15;break;
	cjne	r5,#0x02,00184$
	sjmp	00181$
00179$:
	mov	dptr,#_sub_mode
	mov	a,#0x0f
	anl	a,_main_giotemp_65536_254
	movx	@dptr,a
;	src\main.c:261: case 1:sub_mode = (giotemp&96)>>5;break;
	sjmp	00184$
00180$:
	mov	r3,_main_giotemp_65536_254
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
	jnb	acc.2,02550$
	orl	a,#0xf8
02550$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:262: case 2:sub_mode = (giotemp&16)>>4;break;
	sjmp	00184$
00181$:
	mov	r3,_main_giotemp_65536_254
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
	jnb	acc.3,02551$
	orl	a,#0xf0
02551$:
	mov	r5,a
	mov	dptr,#_sub_mode
	mov	a,r3
	movx	@dptr,a
;	src\main.c:263: }
00184$:
;	src\main.c:265: if(phim_cong_nhan){
;	src\main.c:266: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02552$
	ljmp	00240$
02552$:
;	src\main.c:267: sub_mode++;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:268: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	02553$
	ljmp	00240$
02553$:
	mov	a,r5
	add	a,r5
;	src\main.c:269: case 0:if(sub_mode>11) sub_mode = 0;giotemp = giotemp & 0xf0 | sub_mode; break;
	mov	dptr,#02554$
	jmp	@a+dptr
02554$:
	sjmp	00185$
	sjmp	00188$
	sjmp	00191$
	sjmp	00194$
00185$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x0b
	jnc	00187$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00187$:
	mov	a,#0xf0
	anl	a,_main_giotemp_65536_254
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_254,a
	ljmp	00240$
;	src\main.c:270: case 1:if(sub_mode>3) sub_mode = 0;giotemp = giotemp & 0x9f | (sub_mode<<5); break;
00188$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x03
	jnc	00190$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00190$:
	mov	a,#0x9f
	anl	a,_main_giotemp_65536_254
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_254,a
	ljmp	00240$
;	src\main.c:271: case 2:if(sub_mode>1) sub_mode = 0;giotemp = giotemp & 0xef | (sub_mode<<4); break;
00191$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00193$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00193$:
	mov	a,#0xef
	anl	a,_main_giotemp_65536_254
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r4,a
	orl	a,r5
	mov	_main_giotemp_65536_254,a
	ljmp	00240$
;	src\main.c:272: case 3:if(sub_mode>1) sub_mode = 0;mp3temp = mp3temp & 0x03 | (sub_mode<<2); break;
00194$:
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00196$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00196$:
	mov	a,#0x03
	anl	a,_main_mp3temp_131073_264
	mov	r5,a
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r4,a
	orl	a,r5
	mov	_main_mp3temp_131073_264,a
;	src\main.c:273: }
	ljmp	00240$
00237$:
;	src\main.c:277: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x05
	jnc	02559$
	ljmp	00214$
02559$:
	mov	a,r5
	add	a,r5
	add	a,r5
	mov	dptr,#02560$
	jmp	@a+dptr
02560$:
	ljmp	00200$
	ljmp	00201$
	ljmp	00204$
	ljmp	00207$
	ljmp	00210$
	ljmp	00211$
;	src\main.c:278: case 0:
00200$:
;	src\main.c:279: sub_mode = so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:280: LCD_guilenh(0xc4); 
	mov	dpl,#0xc4
	push	ar2
	lcall	_LCD_guilenh
	pop	ar2
;	src\main.c:281: break;
	ljmp	00214$
;	src\main.c:282: case 1:
00201$:
;	src\main.c:283: sub_mode = may_dc;
	mov	dptr,#_sub_mode
	mov	c,_may_dc
	clr	a
	rlc	a
	movx	@dptr,a
;	src\main.c:284: LCD_noblink(); 
	push	ar2
	lcall	_LCD_noblink
	pop	ar2
;	src\main.c:285: if(lcd_update_chop){
;	src\main.c:286: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02561$
	ljmp	00214$
02561$:
;	src\main.c:287: LCD_guichuoi(chop?"\305 __ ":(may_dc?"\305 DC ":"\305 ST "));
	jnb	_chop,00728$
	mov	r4,#___str_132
	mov	r5,#(___str_132 >> 8)
	sjmp	00729$
00728$:
	jnb	_may_dc,00730$
	mov	_main_sloc0_1_0,#___str_123
	mov	(_main_sloc0_1_0 + 1),#(___str_123 >> 8)
	sjmp	00731$
00730$:
	mov	_main_sloc0_1_0,#___str_124
	mov	(_main_sloc0_1_0 + 1),#(___str_124 >> 8)
00731$:
	mov	r4,_main_sloc0_1_0
	mov	r5,(_main_sloc0_1_0 + 1)
00729$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:289: break;
	ljmp	00214$
;	src\main.c:290: case 2:
00204$:
;	src\main.c:291: sub_mode = atmel_phat;
	mov	dptr,#_sub_mode
	mov	c,_atmel_phat
	clr	a
	rlc	a
	movx	@dptr,a
;	src\main.c:292: if(lcd_update_chop){
;	src\main.c:293: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02564$
	ljmp	00214$
02564$:
;	src\main.c:294: LCD_guichuoi(chop?"\311___":(atmel_phat?"\311C55 ":"\311STC "));
	jnb	_chop,00732$
	mov	r4,#___str_133
	mov	r5,#(___str_133 >> 8)
	sjmp	00733$
00732$:
	jnb	_atmel_phat,00734$
	mov	_main_sloc0_1_0,#___str_125
	mov	(_main_sloc0_1_0 + 1),#(___str_125 >> 8)
	sjmp	00735$
00734$:
	mov	_main_sloc0_1_0,#___str_126
	mov	(_main_sloc0_1_0 + 1),#(___str_126 >> 8)
00735$:
	mov	r4,_main_sloc0_1_0
	mov	r5,(_main_sloc0_1_0 + 1)
00733$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:296: break;
	ljmp	00214$
;	src\main.c:297: case 3:
00207$:
;	src\main.c:298: sub_mode = toc_do_motor_step;
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:299: if(lcd_update_chop){
;	src\main.c:300: lcd_update_chop = 0;
;	assignBit
	jbc	_lcd_update_chop,02567$
	ljmp	00214$
02567$:
;	src\main.c:301: LCD_guichuoi("\315S:");
	mov	dptr,#___str_127
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:302: LCD_guidulieu(chop?'_':(toc_do_motor_step+'0'));
	jnb	_chop,00736$
	mov	r4,#0x5f
	mov	r5,#0x00
	sjmp	00737$
00736$:
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	r3,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
00737$:
	mov	dpl,r4
	push	ar2
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:304: break;
;	src\main.c:305: case 4:
	sjmp	00214$
00210$:
;	src\main.c:306: LCD_guichuoi("\200      SAVE      ");
	mov	dptr,#___str_134
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:307: LCD_guichuoi("\300MODE:OK    RS:BO");
	mov	dptr,#___str_135
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:308: break;
;	src\main.c:309: case 5:
	sjmp	00214$
00211$:
;	src\main.c:310: phuttemp = (i & 0x10);
	mov	a,#0x10
	anl	a,r2
	mov	r5,a
;	src\main.c:311: phuttemp += (so_motor-1);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	dec	r4
	mov	a,r4
	add	a,r5
	mov	r5,a
;	src\main.c:312: phuttemp += (may_dc?4:0); 
	jnb	_may_dc,00738$
	mov	r3,#0x04
	mov	r4,#0x00
	sjmp	00739$
00738$:
	mov	r3,#0x00
	mov	r4,#0x00
00739$:
	mov	a,r3
	add	a,r5
	mov	r5,a
;	src\main.c:313: if(so_motor!=1) phuttemp += (atmel_phat?8:0);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,02570$
	sjmp	00213$
02570$:
	jnb	_atmel_phat,00740$
	mov	r3,#0x08
	mov	r4,#0x00
	sjmp	00741$
00740$:
	mov	r3,#0x00
	mov	r4,#0x00
00741$:
	mov	ar4,r5
	mov	a,r3
	add	a,r4
	mov	r5,a
00213$:
;	src\main.c:316: phuttemp &= 0x1f;
	anl	ar5,#0x1f
;	src\main.c:317: IAP_xoasector(SECTOR1);
	mov	dptr,#0x0000
	push	ar5
	push	ar2
	lcall	_IAP_xoasector
;	src\main.c:318: IAP_xoasector(SECTOR2);
	mov	dptr,#0x0200
	lcall	_IAP_xoasector
	pop	ar2
	pop	ar5
;	src\main.c:319: IAP_ghibyte(MOTOR_EEPROM,phuttemp);
	mov	_IAP_ghibyte_PARM_2,r5
	mov	dptr,#0x0000
	push	ar2
	lcall	_IAP_ghibyte
	pop	ar2
;	src\main.c:320: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
;	src\main.c:321: }
00214$:
;	src\main.c:322: if(phim_cong_nhan){
;	src\main.c:323: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02572$
	ljmp	00224$
02572$:
;	src\main.c:324: debug_dem = 0;
	mov	_main_debug_dem_131073_264,#0x00
;	src\main.c:325: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	02573$
	ljmp	00224$
02573$:
	mov	a,r5
	add	a,r5
;	src\main.c:326: case 0:
	mov	dptr,#02574$
	jmp	@a+dptr
02574$:
	sjmp	00215$
	sjmp	00216$
	sjmp	00217$
	sjmp	00221$
00215$:
;	src\main.c:327: sub_mode = sub_mode<3?sub_mode+1:0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,02575$
02575$:
	jnc	00742$
	inc	r5
	mov	a,r5
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00743$
00742$:
	mov	r4,#0x00
	mov	r5,#0x00
00743$:
	mov	dptr,#_sub_mode
	mov	a,r4
	movx	@dptr,a
;	src\main.c:328: so_motor = sub_mode + 1;
	inc	r4
	mov	dptr,#_so_motor
	mov	a,r4
	movx	@dptr,a
;	src\main.c:329: LCD_guidulieu(so_motor+'0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar2
	lcall	_LCD_guidulieu
;	src\main.c:330: LCD_guilenh(0xc4);
	mov	dpl,#0xc4
	lcall	_LCD_guilenh
	pop	ar2
;	src\main.c:331: break;
;	src\main.c:332: case 1:
	sjmp	00224$
00216$:
;	src\main.c:333: may_dc = sub_mode = 1 - sub_mode;
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
;	src\main.c:334: break;
;	src\main.c:335: case 2:
	sjmp	00224$
00217$:
;	src\main.c:336: if(so_motor>2) atmel_phat = sub_mode = 1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00219$
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	assignBit
	setb	_atmel_phat
	sjmp	00221$
00219$:
;	src\main.c:337: else atmel_phat = sub_mode = 1 - sub_mode;
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
;	src\main.c:338: case 3:
00221$:
;	src\main.c:339: sub_mode = sub_mode<3?sub_mode+1:0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x03,02578$
02578$:
	jnc	00744$
	inc	r5
	mov	a,r5
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	sjmp	00745$
00744$:
	mov	r4,#0x00
	mov	r5,#0x00
00745$:
	mov	dptr,#_sub_mode
	mov	a,r4
	movx	@dptr,a
;	src\main.c:340: toc_do_motor_step = sub_mode;
	mov	dptr,#_toc_do_motor_step
	mov	a,r4
	movx	@dptr,a
;	src\main.c:342: }
00224$:
;	src\main.c:345: if(phim_mode_nhan){
;	src\main.c:346: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02580$
	sjmp	00226$
02580$:
;	src\main.c:347: debug_dem = 0;
	mov	_main_debug_dem_131073_264,#0x00
;	src\main.c:348: mode++;
	mov	dptr,#_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	src\main.c:349: LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
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
;	src\main.c:350: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00746$
	mov	r4,#___str_123
	mov	r5,#(___str_123 >> 8)
	sjmp	00747$
00746$:
	mov	r4,#___str_124
	mov	r5,#(___str_124 >> 8)
00747$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:351: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00748$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00749$
00748$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00749$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:352: LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
;	src\main.c:353: LCD_noblink();
	lcall	_LCD_noblink
	pop	ar2
00226$:
;	src\main.c:355: if(phim_back_nhan){
;	src\main.c:356: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02583$
	ljmp	00240$
02583$:
;	src\main.c:357: if(mode) mode--;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00228$
	mov	a,r5
	dec	a
	mov	dptr,#_mode
	movx	@dptr,a
00228$:
;	src\main.c:358: LCD_guichuoi("\200 NHA PHAT TRIEN"); 
	mov	dptr,#___str_121
	mov	b,#0x80
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:359: LCD_guichuoi("\300MAY:");LCD_guidulieu(so_motor+'0');
	mov	dptr,#___str_122
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:360: LCD_guichuoi(may_dc?"\305 DC ":"\305 ST ");
	jnb	_may_dc,00750$
	mov	r4,#___str_123
	mov	r5,#(___str_123 >> 8)
	sjmp	00751$
00750$:
	mov	r4,#___str_124
	mov	r5,#(___str_124 >> 8)
00751$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
	pop	ar2
;	src\main.c:361: LCD_guichuoi(atmel_phat?"\311C55 ":"\311STC ");
	jnb	_atmel_phat,00752$
	mov	r4,#___str_125
	mov	r5,#(___str_125 >> 8)
	sjmp	00753$
00752$:
	mov	r4,#___str_126
	mov	r5,#(___str_126 >> 8)
00753$:
	mov	r3,#0x80
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	push	ar2
	lcall	_LCD_guichuoi
;	src\main.c:362: LCD_guichuoi("\315S:");LCD_guidulieu(toc_do_motor_step+'0');
	mov	dptr,#___str_127
	mov	b,#0x80
	lcall	_LCD_guichuoi
	mov	dptr,#_toc_do_motor_step
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar2
;	src\main.c:363: if(!mode){ 
	mov	dptr,#_mode
	movx	a,@dptr
	jz	02587$
	ljmp	00240$
02587$:
;	src\main.c:364: if(debug_dem++>8){
	mov	r5,_main_debug_dem_131073_264
	inc	_main_debug_dem_131073_264
	mov	a,r5
	add	a,#0xff - 0x08
	jnc	00230$
;	src\main.c:365: debug = 1;
;	assignBit
	setb	_main_debug_131073_264
;	src\main.c:366: LCD_noblink();
	push	ar2
	lcall	_LCD_noblink
	pop	ar2
;	src\main.c:367: sub_mode = eep_debug & 15;
	mov	dptr,#_eep_debug
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_sub_mode
	anl	a,#0x0f
	movx	@dptr,a
	ljmp	00240$
00230$:
;	src\main.c:369: else LCD_blinkXY(DUOI,4);
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	push	ar2
	lcall	_LCD_blinkXY
	pop	ar2
	ljmp	00240$
00243$:
;	src\main.c:379: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:382: rtc_init(); //khai bao cho ds1307 tao xung vuong moi giay
	push	ar7
	push	ar6
	lcall	_rtc_init
;	src\main.c:383: INT_DHO_EX = 1; //Bat ngat ngoai 0 (EX0)
;	assignBit
	setb	_EX0
;	src\main.c:384: INT_DHO_IT=1; // ngat ngoai 0 cho suon len
;	assignBit
	setb	_IT0
;	src\main.c:386: LCD_guilenh(0x80);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
;	src\main.c:387: LCD_guichuoi("KIEM TRA GIO RTC");
	mov	dptr,#___str_136
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:388: rtc_gettime(&hour, &minute, &second);
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
;	src\main.c:390: if(hour>23 || minute > 59 || second >59)	
	mov	a,_hour
	add	a,#0xff - 0x17
	jc	00246$
	mov	a,_minute
	add	a,#0xff - 0x3b
	jc	00246$
	mov	a,_second
	add	a,#0xff - 0x3b
	jnc	00247$
00246$:
;	src\main.c:391: rtc_settime(0,0,0);
	mov	_rtc_settime_PARM_2,#0x00
	mov	_rtc_settime_PARM_3,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_rtc_settime
	pop	ar6
	pop	ar7
00247$:
;	src\main.c:396: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:397: LCD_guichuoi("KIEM MOTOR 1 - 3");
	mov	dptr,#___str_137
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:398: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jc	02592$
	ljmp	00257$
02592$:
;	src\main.c:400: while(!cam_che && retry--){
	mov	_main_retry_131073_285,#0x14
00253$:
	jnb	_P36,02593$
	ljmp	00257$
02593$:
	mov	r4,_main_retry_131073_285
	dec	_main_retry_131073_285
	mov	a,r4
	jnz	02594$
	ljmp	00257$
02594$:
;	src\main.c:401: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:402: LCD_guidulieu(retry/10+'0');
	mov	r3,_main_retry_131073_285
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
;	src\main.c:403: LCD_guidulieu(retry%10+'0');
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
;	src\main.c:404: motor1 = 1;
;	assignBit
	setb	_P27
;	src\main.c:405: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00754$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00755$
00754$:
	mov	r4,#0xfa
	mov	r5,#0x00
00755$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:406: motor1 = 0;
;	assignBit
	clr	_P27
;	src\main.c:407: if(!cam_che){
	jb	_P36,00253$
;	src\main.c:408: motor3 = 1;
;	assignBit
	setb	_P26
;	src\main.c:409: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00756$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00757$
00756$:
	mov	r4,#0xfa
	mov	r5,#0x00
00757$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:410: motor3 = 0;
;	assignBit
	clr	_P26
	ljmp	00253$
00257$:
;	src\main.c:414: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:415: LCD_guichuoi("KIEM MOTOR 2 - 4");
	mov	dptr,#___str_138
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:416: if(so_motor>3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x03
	jc	02598$
	ljmp	00265$
02598$:
;	src\main.c:418: while(!cam_che2 && retry--){
	mov	_main_retry_131073_288,#0x05
00261$:
	jnb	_P37,02599$
	ljmp	00265$
02599$:
	mov	r4,_main_retry_131073_288
	dec	_main_retry_131073_288
	mov	a,r4
	jnz	02600$
	ljmp	00265$
02600$:
;	src\main.c:419: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:420: LCD_guidulieu(retry/10+'0');
	mov	r3,_main_retry_131073_288
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
;	src\main.c:421: LCD_guidulieu(retry%10+'0');
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
;	src\main.c:422: motor2 = 1;
;	assignBit
	setb	_P25
;	src\main.c:423: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00758$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00759$
00758$:
	mov	r4,#0xfa
	mov	r5,#0x00
00759$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:424: motor2 = 0;
;	assignBit
	clr	_P25
;	src\main.c:425: if(!cam_che2){
	jb	_P37,00261$
;	src\main.c:426: motor4 = 1;
;	assignBit
	setb	_P24
;	src\main.c:427: delay_ms(may_dc?1000:250);
	jnb	_may_dc,00760$
	mov	r4,#0xe8
	mov	r5,#0x03
	sjmp	00761$
00760$:
	mov	r4,#0xfa
	mov	r5,#0x00
00761$:
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:428: motor4 = 0;
;	assignBit
	clr	_P24
	ljmp	00261$
00265$:
;	src\main.c:432: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:433: LCD_guichuoi("THIET LAP MOTOR ");
	mov	dptr,#___str_139
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:434: motor_step_int_init();
	lcall	_motor_step_int_init
	pop	ar6
	pop	ar7
;	src\main.c:437: bat_phone_phu = eep_phonephu[11]&1;
	mov	dptr,#(_eep_phonephu + 0x000b)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_bat_phone_phu,c
;	src\main.c:438: GPS_time = 0;
;	assignBit
	clr	_GPS_time
;	src\main.c:439: if(!nosim && gsm_thietlapsim800()){
	jb	_nosim,00274$
	push	ar7
	push	ar6
	lcall	_gsm_thietlapsim800
	pop	ar6
	pop	ar7
	jnc	00274$
;	src\main.c:440: gsm_thietlapngaygiothuc();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
;	src\main.c:442: gsm_thietlapgoidien();
	lcall	_gsm_thietlapgoidien
;	src\main.c:444: if(gsm_thietlapnhantin()){ // thiet lap thong so nhan tin
	lcall	_gsm_thietlapnhantin
	pop	ar6
	pop	ar7
	jnc	00274$
;	src\main.c:445: if(!eep_norreset)baocaosms(CHINH,"\rkhoi dong phan mem san sang");
	mov	dptr,#_eep_norreset
	clr	a
	movc	a,@a+dptr
	jnz	00269$
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_140
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
	sjmp	00270$
00269$:
;	src\main.c:447: baocaosms(CHINH,"\rkhoi dong san sang");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:448: if(bat_phone_phu)baocaosms(PHU,"\rkhoi dong san sang");
	jnb	_bat_phone_phu,00270$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_141
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00270$:
;	src\main.c:450: kiemtrasodienthoai();
	push	ar7
	push	ar6
	lcall	_kiemtrasodienthoai
	pop	ar6
	pop	ar7
00274$:
;	src\main.c:454: if(!GPS_time) so_gio_mat_gps++;
	jb	_GPS_time,00277$
	mov	_main_so_gio_mat_gps_65536_254,#0x01
00277$:
;	src\main.c:455: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00762$
	mov	a,_hour
	add	a,#0xf4
	mov	r5,a
	sjmp	00763$
00762$:
	mov	r5,_hour
00763$:
	mov	_hour12,r5
;	src\main.c:456: if(!eep_norreset){
	mov	dptr,#_eep_norreset
	clr	a
	movc	a,@a+dptr
	jnz	00279$
;	src\main.c:457: mode_wait = 5;
	mov	dptr,#_mode_wait
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:458: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:459: eeprom_buf[NORRESET_EEPROM] = 0xff;
	mov	dptr,#(_eeprom_buf + 0x0005)
	mov	a,#0xff
	movx	@dptr,a
;	src\main.c:460: IAP_ghisector1();
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
	sjmp	00280$
00279$:
;	src\main.c:461: }else mode_wait = 60;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
00280$:
;	src\main.c:463: WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64; // Enable watchdog, clear watchdog, pre scale = 64, watchdog idle mode = NO
	mov	_WDT_CONTR,#0x65
;	src\main.c:467: while(1){
00676$:
;	src\main.c:469: if(so_motor==4 && (eep_phut4!=phut[3] || eep_gio4!=gio[3])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x04,00295$
	mov	dptr,#_eep_phut4
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0003),00294$
	mov	dptr,#_eep_gio4
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0003),02616$
	sjmp	00295$
02616$:
00294$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00296$
00295$:
;	src\main.c:470: else if(so_motor>2 && (eep_phut3!=phut[2] || eep_gio3!=gio[2])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00290$
	mov	dptr,#_eep_phut3
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0002),00289$
	mov	dptr,#_eep_gio3
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0002),02620$
	sjmp	00290$
02620$:
00289$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00296$
00290$:
;	src\main.c:471: else if(so_motor>1 && (eep_phut2!=phut[1] || eep_gio2!=gio[1])) luu_gio_kim();
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00285$
	mov	dptr,#_eep_phut2
	clr	a
	movc	a,@a+dptr
	cjne	a,(_phut + 0x0001),00284$
	mov	dptr,#_eep_gio2
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,(_gio + 0x0001),02624$
	sjmp	00285$
02624$:
00284$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
	sjmp	00296$
00285$:
;	src\main.c:472: else if(eep_phut1!=phut[0] || eep_gio1!=gio[0]) luu_gio_kim();
	mov	dptr,#_eep_phut1
	clr	a
	movc	a,@a+dptr
	cjne	a,_phut,00281$
	mov	dptr,#_eep_gio1
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,_gio,02627$
	sjmp	00296$
02627$:
00281$:
	push	ar7
	push	ar6
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00296$:
;	src\main.c:474: if(!mode_wait || !mode) {
	mov	dptr,#_mode_wait
	movx	a,@dptr
	jz	00303$
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00304$
00303$:
;	src\main.c:475: mode=0;
	mov	dptr,#_mode
	clr	a
	movx	@dptr,a
;	src\main.c:476: if(motor_index  == 5) motor_index  = motor_run_check();
	mov	a,#0x05
	cjne	a,_motor_index,00300$
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
	pop	ar6
	pop	ar7
00300$:
;	src\main.c:477: if(motor_index2 == 5) motor_index2 = motor_run_check2();
	mov	a,#0x05
	cjne	a,_motor_index2,00304$
	push	ar7
	push	ar6
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
00304$:
;	src\main.c:480: if(phut_out){
;	src\main.c:481: phut_out = 0;
;	assignBit
	jbc	_phut_out,02634$
	ljmp	00307$
02634$:
;	src\main.c:482: send_gsm_cmd("***stc");
	mov	dptr,#___str_142
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_send_gsm_cmd
;	src\main.c:483: send_gsm_byte(day/10+'0');
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
;	src\main.c:484: send_gsm_byte(day%10+'0');
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
;	src\main.c:485: send_gsm_byte(month/10+'0');
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
;	src\main.c:486: send_gsm_byte(month%10+'0');
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
;	src\main.c:487: send_gsm_byte(year/10+'0');
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
;	src\main.c:488: send_gsm_byte(year%10+'0');
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
;	src\main.c:489: send_gsm_byte(hour/10+'0');
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
;	src\main.c:490: send_gsm_byte(hour%10+'0');
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
;	src\main.c:491: send_gsm_byte(minute/10+'0');
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
;	src\main.c:492: send_gsm_byte(minute%10+'0');
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
;	src\main.c:493: send_gsm_byte(second/10+'0');
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
;	src\main.c:494: send_gsm_byte(second%10+'0');
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
;	src\main.c:495: send_gsm_cmd("###\r\n");
	mov	dptr,#___str_143
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
	pop	ar7
00307$:
;	src\main.c:497: if(!bao_cao_dien_ap_thap && dien_ap_thap){
	jb	_bao_cao_dien_ap_thap,00311$
	jnb	_dien_ap_thap,00311$
;	src\main.c:498: baocaosms(CHINH,"\rdien ap thap");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_144
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:499: if(bat_phone_phu)baocaosms(PHU,"\rdien ap thap");
	jnb	_bat_phone_phu,00309$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_144
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00309$:
;	src\main.c:500: bao_cao_dien_ap_thap = 1;
;	assignBit
	setb	_bao_cao_dien_ap_thap
00311$:
;	src\main.c:502: if(bao_cao_dien_ap_thap && !dien_ap_thap){
	jnb	_bao_cao_dien_ap_thap,00316$
	jb	_dien_ap_thap,00316$
;	src\main.c:503: baocaosms(CHINH,"\rdien ap khoi phuc");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_145
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:504: if(bat_phone_phu)baocaosms(PHU,"\rdien ap khoi phuc");
	jnb	_bat_phone_phu,00314$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_145
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00314$:
;	src\main.c:505: bao_cao_dien_ap_thap = 0;
;	assignBit
	clr	_bao_cao_dien_ap_thap
00316$:
;	src\main.c:507: if(!xung_giay_check && !mat_xung_giay){
	mov	dptr,#_xung_giay_check
	movx	a,@dptr
	jnz	00319$
	jb	_mat_xung_giay,00319$
;	src\main.c:508: mat_xung_giay = 1;
;	assignBit
	setb	_mat_xung_giay
00319$:
;	src\main.c:512: if(!thoi_gian_doi_doc_cam[0] && !loi_cam_motor1){
	mov	dptr,#_thoi_gian_doi_doc_cam
	movx	a,@dptr
	jnz	00324$
	jb	_loi_cam_motor1,00324$
;	src\main.c:513: loi_cam_motor1 = 1;
;	assignBit
	setb	_loi_cam_motor1
;	src\main.c:514: baocaosms(CHINH,"\rloi doc cam 1");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_146
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:515: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 1");
	jnb	_bat_phone_phu,00324$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_146
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00324$:
;	src\main.c:517: if(so_motor>1 && !thoi_gian_doi_doc_cam[1] && !loi_cam_motor2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00329$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0001)
	movx	a,@dptr
	jnz	00329$
	jb	_loi_cam_motor2,00329$
;	src\main.c:518: loi_cam_motor2 = 1;
;	assignBit
	setb	_loi_cam_motor2
;	src\main.c:519: baocaosms(CHINH,"\rloi doc cam 2");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:520: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 2");
	jnb	_bat_phone_phu,00329$
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_147
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00329$:
;	src\main.c:522: if(so_motor>2 && !thoi_gian_doi_doc_cam[2] && !loi_cam_motor3){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00335$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0002)
	movx	a,@dptr
	jnz	00335$
	jb	_loi_cam_motor3,00335$
;	src\main.c:523: loi_cam_motor3 = 1;
;	assignBit
	setb	_loi_cam_motor3
;	src\main.c:524: baocaosms(CHINH,"\rloi doc cam 3");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_148
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:525: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 3");
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
;	src\main.c:527: if(so_motor==4 && !thoi_gian_doi_doc_cam[3] && !loi_cam_motor4){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x04,00341$
	mov	dptr,#(_thoi_gian_doi_doc_cam + 0x0003)
	movx	a,@dptr
	jnz	00341$
	jb	_loi_cam_motor4,00341$
;	src\main.c:528: loi_cam_motor4 = 1;
;	assignBit
	setb	_loi_cam_motor4
;	src\main.c:529: baocaosms(CHINH,"\rloi doc cam 4");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_149
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:530: if(bat_phone_phu)baocaosms(PHU,"\rloi doc cam 4");
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
;	src\main.c:532: if(giay_out){
	jb	_giay_out,02659$
	ljmp	00368$
02659$:
;	src\main.c:533: if(!gsm_pw){
	jb	_P20,00347$
;	src\main.c:534: if(!--gsm_delay_reset){
	mov	dptr,#_gsm_delay_reset
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00347$
;	src\main.c:535: ADC_CONTR = 0x83;
	mov	_ADC_CONTR,#0x83
;	src\main.c:536: gsm_pw = 1;
;	assignBit
	setb	_P20
;	src\main.c:537: gsm_delay_reset = 30;
	mov	dptr,#_gsm_delay_reset
	mov	a,#0x1e
	movx	@dptr,a
;	src\main.c:538: gsm_reset=1;
;	assignBit
	setb	_gsm_reset
00347$:
;	src\main.c:541: if(delay_ve_kim && !canhkim && !--delay_ve_kim){
	mov	dptr,#_delay_ve_kim
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00349$
	mov	dptr,#_canhkim
	movx	a,@dptr
	jnz	00349$
	mov	a,r5
	dec	a
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
	movx	a,@dptr
	jnz	00349$
;	src\main.c:542: canhkim = 5;
	mov	dptr,#_canhkim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:543: delay_ve_kim = 5;
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
;	src\main.c:544: motor_index  = motor_run_check();
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	src\main.c:545: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
00349$:
;	src\main.c:548: if(motor_index!=5 && thoi_gian_doi_doc_cam[motor_index] && !--thoi_gian_doi_doc_cam[motor_index]){ cam_vao = cam_vao_han = 0;motor_index = 5;}
	mov	a,#0x05
	cjne	a,_motor_index,02665$
	sjmp	00353$
02665$:
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
	jz	00353$
	dec	r3
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	jnz	00353$
;	assignBit
	clr	_cam_vao_han
;	assignBit
	clr	_cam_vao
	mov	_motor_index,#0x05
00353$:
;	src\main.c:549: if((motor_index2!=5)  && thoi_gian_doi_doc_cam[motor_index2] && !--thoi_gian_doi_doc_cam[motor_index2]){ cam_vao2 = cam_vao_han2 = 0;motor_index2 = 5;}
	mov	a,#0x05
	cjne	a,_motor_index2,02668$
	sjmp	00357$
02668$:
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
	jz	00357$
	dec	r3
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	jnz	00357$
;	assignBit
	clr	_cam_vao_han2
;	assignBit
	clr	_cam_vao2
	mov	_motor_index2,#0x05
00357$:
;	src\main.c:551: if(mode_wait && (!(eep_mp3%4) || !mp3_playing)) mode_wait--;
	mov	dptr,#_mode_wait
	movx	a,@dptr
	jz	00361$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jz	00360$
	jb	_P12,00361$
00360$:
	mov	dptr,#_mode_wait
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00361$:
;	src\main.c:553: if(phim_mode_doi && phim_mode_giu){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	mov	r5,a
	movx	a,@dptr
	jz	00365$
	jnb	_phim_mode_giu,00365$
;	src\main.c:554: phim_mode_doi--;
	mov	a,r5
	dec	a
	mov	dptr,#_phim_mode_doi
	movx	@dptr,a
00365$:
;	src\main.c:556: giay_out=0;
;	assignBit
	clr	_giay_out
00368$:
;	src\main.c:559: kiem_tra_den();
	push	ar7
	push	ar6
	lcall	_kiem_tra_den
	pop	ar6
	pop	ar7
;	src\main.c:561: if(!mode && (eep_mp3%4)==2) kiem_tra_nhac();
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	00370$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00370$
	cjne	r5,#0x00,00370$
	push	ar7
	push	ar6
	lcall	_kiem_tra_nhac
	pop	ar6
	pop	ar7
00370$:
;	src\main.c:564: if(((eep_ngayreset && !ngay_reset_con_lai && eep_gioreset==hour && minute>5) || so_lan_goi_dien > 1)  && motor_index==5 && motor_index2==5 && (!(eep_mp3%4) || !mp3_playing)){
	mov	dptr,#_eep_ngayreset
	clr	a
	movc	a,@a+dptr
	jz	00381$
	mov	dptr,#_ngay_reset_con_lai
	movx	a,@dptr
	jnz	00381$
	mov	dptr,#_eep_gioreset
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,_hour,00381$
	mov	a,_minute
	add	a,#0xff - 0x05
	jc	00382$
00381$:
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00377$
00382$:
	mov	a,#0x05
	cjne	a,_motor_index,00377$
	mov	a,#0x05
	cjne	a,_motor_index2,00377$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jz	00376$
	jb	_P12,00377$
00376$:
;	src\main.c:565: if(max_second<60)rtc_settime(eep_gioreset,6,0);
	mov	dptr,#_max_second
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x3c,02691$
02691$:
	jnc	00373$
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
00373$:
;	src\main.c:566: if(so_lan_goi_dien>1) baocaosms(CHINH,"\rChuan bi reset phan mem tu cuoc goi");	
	mov	dptr,#_so_lan_goi_dien
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00375$
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_150
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00375$:
;	src\main.c:567: EA=0;
;	assignBit
	clr	_EA
;	src\main.c:568: gsm_pw = 0;
;	assignBit
	clr	_P20
;	src\main.c:569: IAP_ghibyte(NORRESET_EEPROM,0);
	mov	_IAP_ghibyte_PARM_2,#0x00
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_IAP_ghibyte
;	src\main.c:571: delay_ms(4000);
	mov	dptr,#0x0fa0
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	src\main.c:572: IAP_CONTR = 0x60;
	mov	_IAP_CONTR,#0x60
00377$:
;	src\main.c:576: if(!da_gui_bao_cao && minute>12 && motor_index == 5 && motor_index2 == 5 && (!(eep_mp3%4) || !mp3_playing)) {
	jnb	_da_gui_bao_cao,02694$
	ljmp	00402$
02694$:
	mov	a,_minute
	add	a,#0xff - 0x0c
	jc	02695$
	ljmp	00402$
02695$:
	mov	a,#0x05
	cjne	a,_motor_index,02696$
	sjmp	02697$
02696$:
	ljmp	00402$
02697$:
	mov	a,#0x05
	cjne	a,_motor_index2,02698$
	sjmp	02699$
02698$:
	ljmp	00402$
02699$:
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jz	00401$
	jnb	_P12,02701$
	ljmp	00402$
02701$:
00401$:
;	src\main.c:577: if(eep_gpson) {
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jnz	02702$
	ljmp	00397$
02702$:
;	src\main.c:579: motor_index = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:580: delay_ms(3000);
	mov	dptr,#0x0bb8
	push	ar7
	push	ar6
	lcall	_delay_ms
;	src\main.c:581: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	src\main.c:582: gsm_thietlapngaygiothuc();
	lcall	_gsm_thietlapngaygiothuc
	pop	ar6
	pop	ar7
;	src\main.c:583: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00764$
	mov	a,_hour
	add	a,#0xf4
	mov	r5,a
	sjmp	00765$
00764$:
	mov	r5,_hour
00765$:
	mov	_hour12,r5
;	src\main.c:585: if(so_gio_mat_gps>34 && !motor_dung){
	mov	a,_main_so_gio_mat_gps_65536_254
	add	a,#0xff - 0x22
	jnc	00393$
	jb	_motor_dung,00393$
;	src\main.c:586: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:587: eeprom_buf[MOTOR_EEPROM] |= 0x10;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	src\main.c:588: IAP_ghisector1();
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
;	src\main.c:589: motor_dung = 1;
;	assignBit
	setb	_motor_dung
;	src\main.c:590: if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00387$
	cjne	r5,#0x00,00387$
	jnb	_P12,00387$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00387$:
;	src\main.c:591: AmplyRelay = 0;			
;	assignBit
	clr	_P42
	sjmp	00398$
00393$:
;	src\main.c:592: }else if(!GPS_time)
	jb	_GPS_time,00390$
;	src\main.c:593: so_gio_mat_gps++;
	inc	_main_so_gio_mat_gps_65536_254
	sjmp	00398$
00390$:
;	src\main.c:594: else so_gio_mat_gps = 0;
	mov	_main_so_gio_mat_gps_65536_254,#0x00
	sjmp	00398$
00397$:
;	src\main.c:597: rtc_gettime(&hour,&minute,&second);
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
	pop	ar6
	pop	ar7
00398$:
;	src\main.c:602: if(eep_baocao) {
	mov	dptr,#_eep_baocao
	clr	a
	movc	a,@a+dptr
	jz	00400$
;	src\main.c:603: baocaosms(CHINH,"\rbao cao dau gio");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_151
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00400$:
;	src\main.c:605: da_gui_bao_cao = 1;
;	assignBit
	setb	_da_gui_bao_cao
;	src\main.c:606: motor_index = motor_run_check();
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	src\main.c:607: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
00402$:
;	src\main.c:610: if(so_gio_mat_gps>34 && !motor_dung){
	mov	a,_main_so_gio_mat_gps_65536_254
	add	a,#0xff - 0x22
	jnc	00412$
	jb	_motor_dung,00412$
;	src\main.c:611: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:612: eeprom_buf[MOTOR_EEPROM] |= 0x10;
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	orl	a,#0x10
	movx	@dptr,a
;	src\main.c:613: IAP_ghisector1();
	lcall	_IAP_ghisector1
	pop	ar6
	pop	ar7
;	src\main.c:614: motor_dung = 1;
;	assignBit
	setb	_motor_dung
;	src\main.c:615: if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x02,00409$
	cjne	r5,#0x00,00409$
	jnb	_P12,00409$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00409$:
;	src\main.c:616: AmplyRelay = 0;			
;	assignBit
	clr	_P42
00412$:
;	src\main.c:619: if(co_tin_nhan_moi){
;	src\main.c:620: co_tin_nhan_moi = 0;
;	assignBit
	jbc	_co_tin_nhan_moi,02716$
	sjmp	00415$
02716$:
;	src\main.c:621: gsm_sendandcheck("AT\r", 15, 1,"CO TIN NHAN MOI ");
	mov	_gsm_sendandcheck_PARM_4,#___str_152
	mov	(_gsm_sendandcheck_PARM_4 + 1),#(___str_152 >> 8)
	mov	(_gsm_sendandcheck_PARM_4 + 2),#0x80
	mov	_gsm_sendandcheck_PARM_2,#0x0f
	mov	_gsm_sendandcheck_PARM_3,#0x01
	mov	dptr,#___str_38
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_gsm_sendandcheck
;	src\main.c:622: send_gsm_cmd("AT+CMGL=\"ALL\"\r");
	mov	dptr,#___str_153
	mov	b,#0x80
	lcall	_send_gsm_cmd
	pop	ar6
	pop	ar7
00415$:
;	src\main.c:624: if(goi_dien_thoai){
;	src\main.c:625: goi_dien_thoai = 0;
;	assignBit
	jbc	_goi_dien_thoai,02717$
	sjmp	00417$
02717$:
;	src\main.c:626: gsm_quay_so(phone_chinh);
	mov	dptr,#_phone_chinh
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_gsm_quay_so
	pop	ar6
	pop	ar7
00417$:
;	src\main.c:629: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x08
	jnc	02718$
	ljmp	00673$
02718$:
	mov	a,r5
	add	a,#(02719$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(02720$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02719$:
	.db	00418$
	.db	00480$
	.db	00533$
	.db	00649$
	.db	00573$
	.db	00657$
	.db	00657$
	.db	00660$
	.db	00444$
02720$:
	.db	00418$>>8
	.db	00480$>>8
	.db	00533$>>8
	.db	00649$>>8
	.db	00573$>>8
	.db	00657$>>8
	.db	00657$>>8
	.db	00660$>>8
	.db	00444$>>8
;	src\main.c:630: case 0:
00418$:
;	src\main.c:631: if(gsm_reset){
	jnb	_gsm_reset,00422$
;	src\main.c:632: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:633: gsm_reset = 0;
;	assignBit
	clr	_gsm_reset
;	src\main.c:634: gsm_serial_cmd = NORMAL;
	mov	dptr,#_gsm_serial_cmd
	clr	a
	movx	@dptr,a
;	src\main.c:636: gsm_thietlapngaygiothuc();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
;	src\main.c:637: hour12=hour%12;
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
;	src\main.c:638: if(gsm_thietlapnhantin()){
	lcall	_gsm_thietlapnhantin
	pop	ar6
	pop	ar7
	jnc	00422$
;	src\main.c:639: baocaosms(CHINH,"\rgsm reset thanh cong");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_154
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
00422$:
;	src\main.c:642: if(sms_dang_xu_ly){
	jnb	_sms_dang_xu_ly,00431$
;	src\main.c:644: xu_ly_tin_nhan();
	push	ar7
	push	ar6
	lcall	_xu_ly_tin_nhan
;	src\main.c:645: gsm_sendandcheck("AT+CMGDA=\"DEL ALL\"\r", 15, 1,"  SENDING CMGDA  ");
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
;	src\main.c:646: sms_dang_xu_ly = 0;
;	assignBit
	clr	_sms_dang_xu_ly
	ljmp	00432$
00431$:
;	src\main.c:649: switch(so_motor){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,02724$
	sjmp	00423$
02724$:
	cjne	r4,#0x02,02725$
	sjmp	00424$
02725$:
	cjne	r4,#0x03,02726$
	ljmp	00426$
02726$:
	cjne	r4,#0x04,02727$
	ljmp	00425$
02727$:
	ljmp	00427$
;	src\main.c:650: case 1: LCD_guigio(0x80,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],date,flip_pulse);break;
00423$:
	jnb	_may_dc,00766$
	mov	r3,#___str_155
	mov	r4,#(___str_155 >> 8)
	sjmp	00767$
00766$:
	mov	r3,#___str_156
	mov	r4,#(___str_156 >> 8)
00767$:
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
	ljmp	00427$
;	src\main.c:651: case 2: LCD_guigio(0x80,"  ",gio[0],phut[0],253,flip_pulse);LCD_guigio(0x87,"  ",gio[1],phut[1],253,flip_pulse);LCD_guichuoi("  ");break;
00424$:
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	mov	c,_flip_pulse
	mov	_LCD_guigio_PARM_6,c
	mov	dpl,#0x87
	lcall	_LCD_guigio
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00427$
;	src\main.c:652: case 4:	LCD_guigio(0xc5,GPS_time?" G ":(eep_gpson?" D ":" A "),hour,minute,second,flip_pulse); 
00425$:
	jnb	_GPS_time,00768$
	mov	r3,#___str_158
	mov	r4,#(___str_158 >> 8)
	sjmp	00769$
00768$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00770$
	mov	_main_sloc0_1_0,#___str_159
	mov	(_main_sloc0_1_0 + 1),#(___str_159 >> 8)
	sjmp	00771$
00770$:
	mov	_main_sloc0_1_0,#___str_160
	mov	(_main_sloc0_1_0 + 1),#(___str_160 >> 8)
00771$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00769$:
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
;	src\main.c:653: LCD_guigio(0xc0," ",gio[3],phut[3],251,0);
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
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
;	src\main.c:654: case 3: LCD_guigio(0x80," ",gio[0],phut[0],251,0);LCD_guigio(0x85," ",gio[1],phut[1],251,0);
00426$:
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
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
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	clr	_LCD_guigio_PARM_6
	mov	dpl,#0x85
	lcall	_LCD_guigio
;	src\main.c:655: LCD_guigio(0x8a," ",gio[2],phut[2],251,0);LCD_guidulieu(' ');
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
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
;	src\main.c:656: }
00427$:
;	src\main.c:657: if(so_motor!=4){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,02731$
	sjmp	00432$
02731$:
;	src\main.c:658: LCD_guigio(0xc0,GPS_time?"  GPS  ":((eep_motor&16)?"   DS  ":" ASIA  "),hour,minute,second,flip_pulse);
	jnb	_GPS_time,00772$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00773$
00772$:
	mov	dptr,#_eep_motor
	clr	a
	movc	a,@a+dptr
	jnb	acc.4,00774$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00775$
00774$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00775$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00773$:
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
00432$:
;	src\main.c:661: if(!phim_mode_doi && !cam_vao){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jz	02734$
	ljmp	00674$
02734$:
	jnb	_cam_vao,02735$
	ljmp	00674$
02735$:
;	src\main.c:662: phim_mode_nhan=0;
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:663: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:664: delay_ve_kim = canhkim = may_canh_kim = 0;
	mov	dptr,#_may_canh_kim
	clr	a
	movx	@dptr,a
	mov	dptr,#_canhkim
	movx	@dptr,a
	mov	dptr,#_delay_ve_kim
	movx	@dptr,a
;	src\main.c:665: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:666: sub_mode = GIOKIM;
	mov	dptr,#_sub_mode
	mov	a,#0x01
	movx	@dptr,a
;	src\main.c:667: motor_index = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:668: if(eep_mp3%4==2 && mp3_playing) mp3_play(9,0,0);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x02,00434$
	cjne	r4,#0x00,00434$
	jnb	_P12,00434$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00434$:
;	src\main.c:669: AmplyRelay = 0;
;	assignBit
	clr	_P42
;	src\main.c:670: mp3_status = mp3_IDLE;
	mov	r0,#_mp3_status
	mov	@r0,#0x00
;	src\main.c:671: if(phim_back_nhan) phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02739$
	sjmp	00439$
02739$:
	ljmp	00674$
00439$:
;	src\main.c:673: baocaosms(CHINH,"\rchinh gio bang tay");
;	assignBit
	setb	_baocaosms_PARM_1
	mov	dptr,#___str_162
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:674: if(bat_phone_phu)baocaosms(PHU,"\r*chinh gio bang tay*");
	jb	_bat_phone_phu,02740$
	ljmp	00674$
02740$:
;	assignBit
	clr	_baocaosms_PARM_1
	mov	dptr,#___str_163
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_baocaosms
	pop	ar6
	pop	ar7
;	src\main.c:677: break;
	ljmp	00674$
;	src\main.c:679: case SELECT:
00444$:
;	src\main.c:680: if(phim_mode_nhan){
;	src\main.c:681: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02741$
	sjmp	00451$
02741$:
;	src\main.c:682: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:683: if(++sub_mode==MP3TEST && !(eep_mp3%4)) sub_mode++;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00446$
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	anl	a,#0x03
	jnz	00446$
	mov	dptr,#_sub_mode
	mov	a,r4
	inc	a
	movx	@dptr,a
00446$:
;	src\main.c:684: if(sub_mode>MAX_MODE)sub_mode = 0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x07
	jnc	00449$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00449$:
;	src\main.c:685: chop=0;
;	assignBit
	clr	_chop
00451$:
;	src\main.c:687: if(phim_cong_nhan){
;	src\main.c:688: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02747$
	sjmp	00453$
02747$:
;	src\main.c:689: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:690: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:691: chop=0;
;	assignBit
	clr	_chop
00453$:
;	src\main.c:693: if(phim_back_nhan){
;	src\main.c:694: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02748$
	ljmp	00479$
02748$:
;	src\main.c:695: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:696: mode = sub_mode;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	dptr,#_mode
	movx	@dptr,a
;	src\main.c:697: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:698: motor_index  = motor_run_check();
	push	ar7
	push	ar6
	lcall	_motor_run_check
	mov	_motor_index,dpl
;	src\main.c:699: motor_index2 = motor_run_check2();
	lcall	_motor_run_check2
	mov	_motor_index2,dpl
	pop	ar6
	pop	ar7
;	src\main.c:700: if(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	jnz	02749$
	ljmp	00674$
02749$:
;	src\main.c:701: LCD_guilenh(0x80);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:702: LCD_guichuoi(mode_select[mode]);
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
;	src\main.c:703: switch(mode){
	mov	dptr,#_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x07
	jnc	02750$
	ljmp	00674$
02750$:
	mov	a,r4
	add	a,#(02751$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(02752$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02751$:
	.db	00674$
	.db	00454$
	.db	00463$
	.db	00464$
	.db	00465$
	.db	00466$
	.db	00473$
	.db	00474$
02752$:
	.db	00674$>>8
	.db	00454$>>8
	.db	00463$>>8
	.db	00464$>>8
	.db	00465$>>8
	.db	00466$>>8
	.db	00473$>>8
	.db	00474$>>8
;	src\main.c:704: case GIOKIM : if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,1);
00454$:
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00456$
	jnb	_may_dc,00776$
	mov	r2,#___str_155
	mov	r3,#(___str_155 >> 8)
	sjmp	00777$
00776$:
	mov	r2,#___str_156
	mov	r3,#(___str_156 >> 8)
00777$:
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
	sjmp	00457$
00456$:
;	src\main.c:705: else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  "); }
	cjne	r4,#0x03,02756$
02756$:
	jnc	00778$
	mov	r3,#0xc0
	mov	r4,#0x00
	sjmp	00779$
00778$:
	mov	r3,#0x80
	mov	r4,#0x00
00779$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
	cjne	r4,#0x03,02758$
02758$:
	jnc	00780$
	mov	r3,#0xc7
	mov	r4,#0x00
	sjmp	00781$
00780$:
	mov	r3,#0x87
	mov	r4,#0x00
00781$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00457$:
;	src\main.c:706: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jc	02760$
	ljmp	00674$
02760$:
;	src\main.c:707: LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
;	src\main.c:708: if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00459$
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00674$
00459$:
;	src\main.c:709: else LCD_guichuoi("         ");   
	mov	dptr,#___str_164
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:711: break;
	ljmp	00674$
;	src\main.c:712: case GIOTHUC: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,second,1); 
00463$:
	jnb	_GPS_time,00782$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00783$
00782$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00784$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00785$
00784$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00785$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00783$:
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
;	src\main.c:713: giotemp=hour;phuttemp=minute;break;
	mov	r7,_hour
	mov	r6,_minute
	ljmp	00674$
;	src\main.c:714: case CANHKIM: LCD_guichuoi("\300MAY 1          ");LCD_blinkXY(DUOI,4);break;
00464$:
	mov	dptr,#___str_165
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	mov	_LCD_blinkXY_PARM_2,#0x04
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
	ljmp	00674$
;	src\main.c:715: case MP3TEST: LCD_guigio(0xc0,"000 ",0,0,251,1);LCD_guigio(0xc8," ",day,month,100+year,1);giotemp=phuttemp=song_name=0;
00465$:
	mov	_LCD_guigio_PARM_2,#___str_166
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_166 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,#0x00
	mov	_LCD_guigio_PARM_4,#0x00
	mov	_LCD_guigio_PARM_5,#0xfb
;	assignBit
	setb	_LCD_guigio_PARM_6
	mov	dpl,#0xc0
	lcall	_LCD_guigio
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
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
;	src\main.c:716: thutemp = date;ngaytemp = day;thangtemp = month; namtemp = year;
	mov	dptr,#_date
	movx	a,@dptr
	mov	dptr,#_main_thutemp_65536_254
	movx	@dptr,a
	mov	dptr,#_day
	movx	a,@dptr
	mov	dptr,#_main_ngaytemp_65536_254
	movx	@dptr,a
	mov	dptr,#_month
	movx	a,@dptr
	mov	dptr,#_main_thangtemp_65536_254
	movx	@dptr,a
	mov	dptr,#_year
	movx	a,@dptr
	mov	dptr,#_main_namtemp_65536_254
	movx	@dptr,a
;	src\main.c:717: LCD_guilenh(0xcf);
	mov	dpl,#0xcf
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:718: LCD_guidulieu(thutemp+'0');
	mov	dptr,#_main_thutemp_65536_254
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:719: break;
	ljmp	00674$
;	src\main.c:720: case DIENTHOAI: if(nosim) LCD_guichuoi("\300  KHONG CO SIM  ");
00466$:
	jnb	_nosim,00471$
	mov	dptr,#___str_167
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00674$
00471$:
;	src\main.c:721: else if(!gsm_pw) LCD_guichuoi("\300  GSM TAT NGUON ");
	jb	_P20,00468$
	mov	dptr,#___str_168
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	ljmp	00674$
00468$:
;	src\main.c:723: kiemtratinhieu();kiemtrataikhoan();
	push	ar7
	push	ar6
	lcall	_kiemtratinhieu
	lcall	_kiemtrataikhoan
;	src\main.c:724: LCD_xoa(DUOI);LCD_guilenh(0xc0);LCD_guichuoi(lenh_sms);
	mov	dpl,#0xc0
	lcall	_LCD_xoa
	mov	dpl,#0xc0
	lcall	_LCD_guilenh
	mov	dptr,#_lenh_sms
	mov	b,#0x00
	lcall	_LCD_guichuoi
;	src\main.c:725: LCD_guilenh(0x80);phone[10]=0;LCD_guichuoi(phone);
	mov	dpl,#0x80
	lcall	_LCD_guilenh
	mov	dptr,#(_phone + 0x000a)
	clr	a
	movx	@dptr,a
	mov	dptr,#_phone
	mov	b,#0x00
	lcall	_LCD_guichuoi
;	src\main.c:726: LCD_guilenh(0x8e);LCD_guidulieu(signal/10+'0');LCD_guidulieu(signal%10+'0');
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
;	src\main.c:728: break;
	ljmp	00674$
;	src\main.c:729: case DATE:  LCD_guichuoi("\300  ");LCD_guidulieu(day/10+'0');LCD_guidulieu(day%10+'0');
00473$:
	mov	dptr,#___str_169
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
;	src\main.c:730: LCD_guichuoi(" - ");LCD_guidulieu(month/10+'0');LCD_guidulieu(month%10+'0');
	mov	dptr,#___str_170
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
;	src\main.c:731: LCD_guichuoi(" - ");LCD_guidulieu(year/10+'0');LCD_guidulieu(year%10+'0');LCD_guichuoi("  ");
	mov	dptr,#___str_170
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
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
;	src\main.c:732: break;
	ljmp	00674$
;	src\main.c:733: case DCTIMER: LCD_guichuoi("\300 ");LCD_guidulieu(thoi_gian_giu_motor+'0');LCD_guichuoi("S             ");
00474$:
	mov	dptr,#___str_171
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	mov	dptr,#___str_172
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:734: LCD_blinkXY(DUOI,2);
	mov	_LCD_blinkXY_PARM_2,#0x02
	mov	dpl,#0xc0
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
;	src\main.c:738: break;
	ljmp	00674$
00479$:
;	src\main.c:741: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),hour,minute,mode_wait,flip_pulse);
	jnb	_GPS_time,00786$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00787$
00786$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00788$
	mov	_main_sloc0_1_0,#___str_2
	mov	(_main_sloc0_1_0 + 1),#(___str_2 >> 8)
	sjmp	00789$
00788$:
	mov	_main_sloc0_1_0,#___str_1
	mov	(_main_sloc0_1_0 + 1),#(___str_1 >> 8)
00789$:
	mov	r3,_main_sloc0_1_0
	mov	r4,(_main_sloc0_1_0 + 1)
00787$:
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
;	src\main.c:742: LCD_chop(TREN,mode_select[sub_mode]);		
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
;	src\main.c:743: break;
	ljmp	00674$
;	src\main.c:744: case GIOKIM:
00480$:
;	src\main.c:745: LCD_blinkXY((sub_mode<8 && so_motor>2)?TREN:DUOI,so_motor==1?(7+sub_mode+sub_mode/2):(2+sub_mode%8+sub_mode%8/2+sub_mode%8/4));
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,02769$
02769$:
	jnc	00790$
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jnc	00790$
	mov	r3,#0x80
	mov	r4,#0x00
	sjmp	00791$
00790$:
	mov	r3,#0xc0
	mov	r4,#0x00
00791$:
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00795$
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
	sjmp	00796$
00795$:
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
;	src\main.c:1058: WATCHDOG;
	pop	ar3
;	src\main.c:745: LCD_blinkXY((sub_mode<8 && so_motor>2)?TREN:DUOI,so_motor==1?(7+sub_mode+sub_mode/2):(2+sub_mode%8+sub_mode%8/2+sub_mode%8/4));
00796$:
	mov	_LCD_blinkXY_PARM_2,_main_sloc1_1_0
	mov	dpl,r3
	push	ar7
	push	ar6
	lcall	_LCD_blinkXY
	pop	ar6
	pop	ar7
;	src\main.c:746: if(!phim_mode_doi){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00482$
;	src\main.c:747: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
;	src\main.c:748: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:749: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:750: gio[0] = gio[0]%12;
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
;	src\main.c:751: gio[1] = gio[1]%12;
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
;	src\main.c:752: gio[2] = gio[2]%12;
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
;	src\main.c:753: gio[3] = gio[3]%12;
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
;	src\main.c:754: luu_gio_kim();	
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
00482$:
;	src\main.c:756: if(phim_cong_nhan){
;	src\main.c:757: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02775$
	ljmp	00523$
02775$:
;	src\main.c:758: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:759: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0f
	jnc	02776$
	ljmp	00513$
02776$:
	mov	a,r4
	add	a,#(02777$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(02778$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02777$:
	.db	00486$
	.db	00493$
	.db	00503$
	.db	00510$
	.db	00486$
	.db	00493$
	.db	00503$
	.db	00510$
	.db	00486$
	.db	00493$
	.db	00503$
	.db	00510$
	.db	00486$
	.db	00493$
	.db	00503$
	.db	00510$
02778$:
	.db	00486$>>8
	.db	00493$>>8
	.db	00503$>>8
	.db	00510$>>8
	.db	00486$>>8
	.db	00493$>>8
	.db	00503$>>8
	.db	00510$>>8
	.db	00486$>>8
	.db	00493$>>8
	.db	00503$>>8
	.db	00510$>>8
	.db	00486$>>8
	.db	00493$>>8
	.db	00503$>>8
	.db	00510$>>8
;	src\main.c:761: case GIO3CHUC : case GIO4CHUC  :
00486$:
;	src\main.c:762: if(gio[sub_mode/4]>13)gio[sub_mode/4]%=10;
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
	jnc	00488$
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
	ljmp	00513$
00488$:
;	src\main.c:763: else gio[sub_mode/4] +=10;
	mov	a,#0x0a
	add	a,r3
	mov	@r1,a
;	src\main.c:764: break;
	ljmp	00513$
;	src\main.c:766: case GIO3DVI  : case GIO4DVI   :
00493$:
;	src\main.c:767: if(gio[sub_mode/4]>22) gio[sub_mode/4] = 20;
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
	jnc	00498$
	mov	@r1,#0x14
	ljmp	00513$
00498$:
;	src\main.c:768: else if(gio[sub_mode/4]%10==9) gio[sub_mode/4]-=9;
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
	cjne	r2,#0x09,02781$
	cjne	r3,#0x00,02781$
	sjmp	02782$
02781$:
	pop	ar1
	sjmp	00495$
02782$:
	pop	ar1
	mov	a,_main_sloc2_1_0
	mov	r3,a
	add	a,#0xf7
	mov	@r1,a
	sjmp	00513$
00495$:
;	src\main.c:769: else gio[sub_mode/4]++;
	mov	a,_main_sloc2_1_0
	inc	a
	mov	@r1,a
;	src\main.c:770: break;
;	src\main.c:772: case PHUT3CHUC: case PHUT4CHUC :
	sjmp	00513$
00503$:
;	src\main.c:773: if(phut[sub_mode/4]>49) phut[sub_mode/4]-=50;
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
	jnc	00505$
	mov	ar2,r3
	mov	a,r2
	add	a,#0xce
	mov	@r1,a
	sjmp	00513$
00505$:
;	src\main.c:774: else phut[sub_mode/4]+=10;
	mov	a,#0x0a
	add	a,r3
	mov	@r1,a
;	src\main.c:775: break;
;	src\main.c:777: case PHUT3DVI : case PHUT4DVI  :
	sjmp	00513$
00510$:
;	src\main.c:778: if(!(++phut[sub_mode/4]%10)) phut[sub_mode/4]-=10;
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
	jnz	00513$
	mov	a,@r1
	mov	r4,a
	add	a,#0xf6
	mov	@r1,a
;	src\main.c:780: }
00513$:
;	src\main.c:782: if(so_motor==1)LCD_guigio(0xc0,may_dc? "  MDC  " : "  MST  ",gio[0],phut[0],0,flip_pulse);
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00515$
	jnb	_may_dc,00797$
	mov	r2,#___str_155
	mov	r3,#(___str_155 >> 8)
	sjmp	00798$
00797$:
	mov	r2,#___str_156
	mov	r3,#(___str_156 >> 8)
00798$:
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
	sjmp	00516$
00515$:
;	src\main.c:783: else {LCD_guigio((so_motor<3)?0xc0:0x80,"  ",gio[0],phut[0],253,1);LCD_guigio((so_motor<3)?0xc7:0x87,"  ",gio[1],phut[1],253,1);LCD_guichuoi("  ");}
	cjne	r4,#0x03,02788$
02788$:
	jnc	00799$
	mov	r3,#0xc0
	mov	r4,#0x00
	sjmp	00800$
00799$:
	mov	r3,#0x80
	mov	r4,#0x00
00800$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
	cjne	r4,#0x03,02790$
02790$:
	jnc	00801$
	mov	r3,#0xc7
	mov	r4,#0x00
	sjmp	00802$
00801$:
	mov	r3,#0x87
	mov	r4,#0x00
00802$:
	mov	dpl,r3
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	_LCD_guigio_PARM_3,(_gio + 0x0001)
	mov	_LCD_guigio_PARM_4,(_phut + 0x0001)
	mov	_LCD_guigio_PARM_5,#0xfd
;	assignBit
	setb	_LCD_guigio_PARM_6
	push	ar7
	push	ar6
	lcall	_LCD_guigio
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00516$:
;	src\main.c:784: if(so_motor>2){
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x02
	jnc	00523$
;	src\main.c:785: LCD_guigio(0xc0,"  ",gio[2],phut[2],253,1);
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
;	src\main.c:786: if(so_motor==4){LCD_guigio(0xc7,"  ",gio[3],phut[3],253,1);LCD_guichuoi("  ");}
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x04,00518$
	mov	_LCD_guigio_PARM_2,#___str_157
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_157 >> 8)
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
	mov	dptr,#___str_157
	mov	b,#0x80
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
	sjmp	00523$
00518$:
;	src\main.c:787: else LCD_guichuoi("         ");   
	mov	dptr,#___str_164
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_LCD_guichuoi
	pop	ar6
	pop	ar7
00523$:
;	src\main.c:790: if(phim_back_nhan){
;	src\main.c:791: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02795$
	sjmp	00528$
02795$:
;	src\main.c:792: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:793: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00525$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00528$
00525$:
;	src\main.c:794: else sub_mode = 4*so_motor-1;
	mov	dptr,#_so_motor
	movx	a,@dptr
	add	a,acc
	add	a,acc
	mov	r4,a
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
00528$:
;	src\main.c:797: if(phim_mode_nhan){
	jb	_phim_mode_nhan,02797$
	ljmp	00674$
02797$:
;	src\main.c:799: phim_mode_nhan = 0;
	push	ar6
;	assignBit
	clr	_phim_mode_nhan
;	src\main.c:800: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:801: if(++sub_mode>(4*so_motor-1)){
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
	cjne	r4,#0xff,02798$
	dec	r3
02798$:
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
	jc	02799$
	ljmp	00674$
02799$:
;	src\main.c:802: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
;	src\main.c:803: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:804: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:805: gio[0] = gio[0]%12;
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
;	src\main.c:806: gio[1] = gio[1]%12;
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
;	src\main.c:807: gio[2] = gio[2]%12;
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
;	src\main.c:808: gio[3] = gio[3]%12;
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
;	src\main.c:809: luu_gio_kim();
	lcall	_luu_gio_kim
	pop	ar6
	pop	ar7
;	src\main.c:814: break;
	ljmp	00674$
;	src\main.c:815: case GIOTHUC:
00533$:
;	src\main.c:816: LCD_blinkXY(DUOI,7+sub_mode+sub_mode/2);
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
;	src\main.c:817: if(eep_gpson && !phim_mode_doi){
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00541$
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00541$
;	src\main.c:818: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:819: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:820: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:821: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	src\main.c:822: if(eep_gpson){
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00538$
;	src\main.c:824: gsm_thietlapngaygiothuc();//gsm_laygio_gps();
	push	ar7
	push	ar6
	lcall	_gsm_thietlapngaygiothuc
	pop	ar6
	pop	ar7
;	src\main.c:825: if(!GPS_time) so_gio_mat_gps++;
	jb	_GPS_time,00535$
	inc	_main_so_gio_mat_gps_65536_254
	sjmp	00539$
00535$:
;	src\main.c:826: else so_gio_mat_gps = 0;
	mov	_main_so_gio_mat_gps_65536_254,#0x00
	sjmp	00539$
00538$:
;	src\main.c:829: else rtc_gettime(&hour,&minute,&second);
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
	pop	ar6
	pop	ar7
00539$:
;	src\main.c:830: hour12 = (hour>11)?hour-12:hour;
	mov	a,_hour
	add	a,#0xff - 0x0b
	jnc	00803$
	mov	a,_hour
	add	a,#0xf4
	mov	r4,a
	sjmp	00804$
00803$:
	mov	r4,_hour
00804$:
	mov	_hour12,r4
00541$:
;	src\main.c:832: if(phim_cong_nhan){
;	src\main.c:833: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02805$
	ljmp	00563$
02805$:
;	src\main.c:834: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:835: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	02806$
	ljmp	00561$
02806$:
	mov	a,r4
	add	a,r4
;	src\main.c:836: case GIOCHUC  :
	mov	dptr,#02807$
	jmp	@a+dptr
02807$:
	sjmp	00543$
	sjmp	00547$
	sjmp	00554$
	sjmp	00558$
00543$:
;	src\main.c:837: if(giotemp>13)giotemp%=10;
	mov	a,r7
	add	a,#0xff - 0x0d
	jnc	00545$
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
	sjmp	00561$
00545$:
;	src\main.c:838: else giotemp +=10;
	mov	ar4,r7
	mov	a,#0x0a
	add	a,r4
	mov	r7,a
;	src\main.c:839: break;
;	src\main.c:840: case GIODVI   :
	sjmp	00561$
00547$:
;	src\main.c:841: if(giotemp>22) giotemp = 20;
	mov	a,r7
	add	a,#0xff - 0x16
	jnc	00552$
	mov	r7,#0x14
	sjmp	00561$
00552$:
;	src\main.c:842: else if(giotemp%10==9) giotemp-=9;
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
	cjne	r3,#0x09,00549$
	cjne	r4,#0x00,00549$
	mov	ar4,r7
	mov	a,r4
	add	a,#0xf7
	mov	r7,a
	sjmp	00561$
00549$:
;	src\main.c:843: else giotemp++;
	inc	r7
;	src\main.c:844: break;
;	src\main.c:845: case PHUTCHUC :
	sjmp	00561$
00554$:
;	src\main.c:846: if(phuttemp>49) phuttemp-=50;
	mov	a,r6
	add	a,#0xff - 0x31
	jnc	00556$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xce
	mov	r6,a
	sjmp	00561$
00556$:
;	src\main.c:847: else phuttemp+=10;
	mov	ar4,r6
	mov	a,#0x0a
	add	a,r4
	mov	r6,a
;	src\main.c:848: break;
;	src\main.c:849: case PHUTDVI  :
	sjmp	00561$
00558$:
;	src\main.c:850: if(!(++phuttemp%10)) phuttemp-=10;
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
	jnz	00561$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xf6
	mov	r6,a
;	src\main.c:852: }
00561$:
;	src\main.c:854: LCD_guigio(0xc0,GPS_time?"  GPS  ":(eep_gpson?"   DS  ":" ASIA  "),giotemp,phuttemp,mode_wait,1);
	jnb	_GPS_time,00805$
	mov	r3,#___str_0
	mov	r4,#(___str_0 >> 8)
	sjmp	00806$
00805$:
	mov	dptr,#_eep_gpson
	clr	a
	movc	a,@a+dptr
	jz	00807$
	mov	_main_sloc2_1_0,#___str_2
	mov	(_main_sloc2_1_0 + 1),#(___str_2 >> 8)
	sjmp	00808$
00807$:
	mov	_main_sloc2_1_0,#___str_1
	mov	(_main_sloc2_1_0 + 1),#(___str_1 >> 8)
00808$:
	mov	r3,_main_sloc2_1_0
	mov	r4,(_main_sloc2_1_0 + 1)
00806$:
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
00563$:
;	src\main.c:857: if(phim_back_nhan){
;	src\main.c:858: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02816$
	sjmp	00568$
02816$:
;	src\main.c:859: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:860: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00565$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00568$
00565$:
;	src\main.c:861: else sub_mode = 3;
	mov	dptr,#_sub_mode
	mov	a,#0x03
	movx	@dptr,a
00568$:
;	src\main.c:864: if(phim_mode_nhan){
;	src\main.c:865: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02818$
	ljmp	00674$
02818$:
;	src\main.c:866: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:867: if(++sub_mode>3){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jc	02819$
	ljmp	00674$
02819$:
;	src\main.c:868: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
	pop	ar6
	pop	ar7
;	src\main.c:869: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:870: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:871: hour = giotemp;
	mov	_hour,r7
;	src\main.c:872: minute = phuttemp;
	mov	_minute,r6
;	src\main.c:873: rtc_settime(hour,minute,second);
	mov	_rtc_settime_PARM_2,_minute
	mov	_rtc_settime_PARM_3,_second
	mov	dpl,_hour
	push	ar7
	push	ar6
	lcall	_rtc_settime
;	src\main.c:874: hour12 = hour % 12;
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
;	src\main.c:875: GPS_time = 0;
;	assignBit
	clr	_GPS_time
;	src\main.c:876: mp3_hour = 24;
	mov	r0,#_mp3_hour
	mov	@r0,#0x18
;	src\main.c:877: mp3_minute = 60;
	mov	r0,#_mp3_minute
	mov	@r0,#0x3c
;	src\main.c:880: break;
	ljmp	00674$
;	src\main.c:881: case MP3TEST:
00573$:
;	src\main.c:883: LCD_blinkXY(DUOI,sub_mode+(sub_mode>2)+(sub_mode>6));
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
;	src\main.c:884: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:885: if(!phim_mode_doi){
	mov	dptr,#_phim_mode_doi
	movx	a,@dptr
	jnz	00577$
;	src\main.c:886: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:887: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:888: if(mp3_playing) mp3_play(9,0,0);
	jnb	_P12,00575$
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	push	ar7
	push	ar6
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00575$:
;	src\main.c:889: AmplyRelay = 0;
;	assignBit
	clr	_P42
00577$:
;	src\main.c:891: if(phim_cong_nhan){
;	src\main.c:892: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02822$
	ljmp	00634$
02822$:
;	src\main.c:893: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:894: switch(sub_mode){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0c
	jnc	02823$
	ljmp	00632$
02823$:
	mov	a,r4
	add	a,#(02824$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(02825$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
02824$:
	.db	00578$
	.db	00579$
	.db	00580$
	.db	00581$
	.db	00585$
	.db	00592$
	.db	00596$
	.db	00599$
	.db	00605$
	.db	00612$
	.db	00618$
	.db	00625$
	.db	00629$
02825$:
	.db	00578$>>8
	.db	00579$>>8
	.db	00580$>>8
	.db	00581$>>8
	.db	00585$>>8
	.db	00592$>>8
	.db	00596$>>8
	.db	00599$>>8
	.db	00605$>>8
	.db	00612$>>8
	.db	00618$>>8
	.db	00625$>>8
	.db	00629$>>8
;	src\main.c:895: case MP3SONGTRAM  :
00578$:
;	src\main.c:896: song_name = (song_name+100)%1000;
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
;	src\main.c:897: break;
	ljmp	00632$
;	src\main.c:898: case MP3SONGCHUC  :
00579$:
;	src\main.c:899: song_name = (song_name/100*100) + (song_name-song_name/100*100+10)%100;
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
;	src\main.c:900: break;
	pop	ar6
	ljmp	00632$
;	src\main.c:901: case MP3SONGDVI  :
00580$:
;	src\main.c:902: song_name = (song_name/10*10) + (song_name-song_name/10*10+1)%10;
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
;	src\main.c:903: break;
	pop	ar6
	ljmp	00632$
;	src\main.c:904: case MP3GIOCHUC  :
00581$:
;	src\main.c:905: if(giotemp>13)giotemp%=10;
	mov	a,r7
	add	a,#0xff - 0x0d
	jnc	00583$
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
	ljmp	00632$
00583$:
;	src\main.c:906: else giotemp +=10;
	mov	ar4,r7
	mov	a,#0x0a
	add	a,r4
	mov	r7,a
;	src\main.c:907: break;
	ljmp	00632$
;	src\main.c:908: case MP3GIODVI   :
00585$:
;	src\main.c:909: if(giotemp>22) giotemp = 20;
	mov	a,r7
	add	a,#0xff - 0x16
	jnc	00590$
	mov	r7,#0x14
	ljmp	00632$
00590$:
;	src\main.c:910: else if(giotemp%10==9) giotemp-=9;
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
	cjne	r3,#0x09,00587$
	cjne	r4,#0x00,00587$
	mov	ar4,r7
	mov	a,r4
	add	a,#0xf7
	mov	r7,a
	ljmp	00632$
00587$:
;	src\main.c:911: else giotemp++;
	inc	r7
;	src\main.c:912: break;
	ljmp	00632$
;	src\main.c:913: case MP3PHUTCHUC :
00592$:
;	src\main.c:914: if(phuttemp>49) phuttemp-=50;
	mov	a,r6
	add	a,#0xff - 0x31
	jnc	00594$
	mov	ar4,r6
	mov	a,r4
	add	a,#0xce
	mov	r6,a
	ljmp	00632$
00594$:
;	src\main.c:915: else phuttemp+=10;
	mov	ar4,r6
	mov	a,#0x0a
	add	a,r4
	mov	r6,a
;	src\main.c:916: break;
	ljmp	00632$
;	src\main.c:917: case MP3PHUTDVI  :
00596$:
;	src\main.c:918: phuttemp=phuttemp+(eep_mp3>3?5:1);
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	add	a,#0xff - 0x03
	jnc	00809$
	mov	r3,#0x05
	mov	r4,#0x00
	sjmp	00810$
00809$:
	mov	r3,#0x01
	mov	r4,#0x00
00810$:
	mov	ar4,r6
	mov	a,r3
	add	a,r4
;	src\main.c:919: if(!(phuttemp%10)) phuttemp-=10;
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
	jz	02832$
	ljmp	00632$
02832$:
	mov	ar4,r6
	mov	a,r4
	add	a,#0xf6
	mov	r6,a
;	src\main.c:920: break;
	ljmp	00632$
;	src\main.c:921: case MP3NGAYCHUC :
00599$:
;	src\main.c:922: if(ngaytemp>21) ngaytemp%=10;
	mov	dptr,#_main_ngaytemp_65536_254
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x15
	jnc	00601$
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
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,r2
	movx	@dptr,a
	sjmp	00602$
00601$:
;	src\main.c:923: else ngaytemp+=10;
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,#0x0a
	add	a,r4
	movx	@dptr,a
00602$:
;	src\main.c:924: if(!ngaytemp) ngaytemp = 10;
	mov	dptr,#_main_ngaytemp_65536_254
	movx	a,@dptr
	jz	02834$
	ljmp	00632$
02834$:
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,#0x0a
	movx	@dptr,a
;	src\main.c:925: break;
	ljmp	00632$
;	src\main.c:926: case MP3NGAYDVI  :
00605$:
;	src\main.c:927: if(ngaytemp>30) ngaytemp = 30;
	mov	dptr,#_main_ngaytemp_65536_254
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x1e
	jnc	00610$
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,#0x1e
	movx	@dptr,a
	ljmp	00632$
00610$:
;	src\main.c:928: else if(ngaytemp%10==9) ngaytemp-=9;
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
	cjne	r2,#0x09,00607$
	cjne	r3,#0x00,00607$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xf7
	mov	dptr,#_main_ngaytemp_65536_254
	movx	@dptr,a
	ljmp	00632$
00607$:
;	src\main.c:929: else ngaytemp++;
	mov	dptr,#_main_ngaytemp_65536_254
	mov	a,r4
	inc	a
	movx	@dptr,a
;	src\main.c:930: break;
	ljmp	00632$
;	src\main.c:931: case MP3THANGCHUC :
00612$:
;	src\main.c:932: if(thangtemp<3) thangtemp+=10;
	mov	dptr,#_main_thangtemp_65536_254
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,02838$
02838$:
	jnc	00616$
	mov	ar3,r4
	mov	dptr,#_main_thangtemp_65536_254
	mov	a,#0x0a
	add	a,r3
	movx	@dptr,a
	ljmp	00632$
00616$:
;	src\main.c:933: else if(thangtemp>10) thangtemp-=10;
	mov	a,r4
	add	a,#0xff - 0x0a
	jc	02840$
	ljmp	00632$
02840$:
	mov	a,r4
	add	a,#0xf6
	mov	dptr,#_main_thangtemp_65536_254
	movx	@dptr,a
;	src\main.c:934: break;
;	src\main.c:935: case MP3THANGDVI  :
	sjmp	00632$
00618$:
;	src\main.c:936: if(thangtemp==9) thangtemp = 1;
	mov	dptr,#_main_thangtemp_65536_254
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x09,00623$
	mov	dptr,#_main_thangtemp_65536_254
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00632$
00623$:
;	src\main.c:937: else if(thangtemp>11) thangtemp = 10;
	mov	a,r4
	add	a,#0xff - 0x0b
	jnc	00620$
	mov	dptr,#_main_thangtemp_65536_254
	mov	a,#0x0a
	movx	@dptr,a
	sjmp	00632$
00620$:
;	src\main.c:938: else thangtemp++;
	mov	dptr,#_main_thangtemp_65536_254
	mov	a,r4
	inc	a
	movx	@dptr,a
;	src\main.c:939: break;
;	src\main.c:940: case MP3NAMCHUC :
	sjmp	00632$
00625$:
;	src\main.c:941: if(namtemp>89) namtemp-=90;
	mov	dptr,#_main_namtemp_65536_254
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x59
	jnc	00627$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xa6
	mov	dptr,#_main_namtemp_65536_254
	movx	@dptr,a
	sjmp	00632$
00627$:
;	src\main.c:942: else namtemp+=10;
	mov	dptr,#_main_namtemp_65536_254
	mov	a,#0x0a
	add	a,r4
	movx	@dptr,a
;	src\main.c:943: break;
;	src\main.c:944: case MP3NAMDVI  :
	sjmp	00632$
00629$:
;	src\main.c:945: if(!(++namtemp%10)) namtemp-=10;
	mov	dptr,#_main_namtemp_65536_254
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
	jnz	00632$
	mov	a,r4
	add	a,#0xf6
	mov	dptr,#_main_namtemp_65536_254
	movx	@dptr,a
;	src\main.c:948: }
00632$:
;	src\main.c:949: LCD_guigio(0xc0,"    ",giotemp,phuttemp,251,1);
	mov	_LCD_guigio_PARM_2,#___str_173
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_173 >> 8)
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
;	src\main.c:950: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	lcall	_LCD_guilenh
;	src\main.c:951: LCD_guidulieu(song_name/100+'0');
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
;	src\main.c:952: LCD_guidulieu(song_name/10%10+'0');
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
;	src\main.c:953: LCD_guidulieu(song_name%10 + '0');
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
;	src\main.c:954: LCD_guigio(0xc8," ",ngaytemp,thangtemp,100+namtemp,1);
	mov	_LCD_guigio_PARM_2,#___str_161
	mov	(_LCD_guigio_PARM_2 + 1),#(___str_161 >> 8)
	mov	(_LCD_guigio_PARM_2 + 2),#0x80
	mov	dptr,#_main_ngaytemp_65536_254
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_main_thangtemp_65536_254
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_main_namtemp_65536_254
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
;	src\main.c:955: check = (23*thangtemp/9 + ngaytemp + (thangtemp>2?!(namtemp%4):2) + namtemp + (namtemp+3)/4 + 1);
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
	jnc	00811$
	mov	a,#0x03
	anl	a,_main_sloc2_1_0
	mov	r4,#0x00
	orl	a,r4
	cjne	a,#0x01,02847$
02847$:
	mov  _main_sloc3_1_0,c
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	sjmp	00812$
00811$:
	mov	r3,#0x02
	mov	r4,#0x00
00812$:
	push	ar6
	mov	a,r3
	add	a,_main_sloc0_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_main_sloc0_1_0 + 1)
	mov	r4,a
	mov	dptr,#_main_namtemp_65536_254
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
;	src\main.c:956: thutemp = check%7+1; 
	mov	__moduint_PARM_2,#0x07
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	mov	r6,dph
	inc	r4
	mov	dptr,#_main_thutemp_65536_254
	mov	a,r4
	movx	@dptr,a
;	src\main.c:957: LCD_guilenh(0xcf);
	mov	dpl,#0xcf
	push	ar6
	push	ar4
	lcall	_LCD_guilenh
	pop	ar4
;	src\main.c:958: LCD_guidulieu(thutemp+'0');
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:1058: WATCHDOG;
	pop	ar6
;	src\main.c:958: LCD_guidulieu(thutemp+'0');
00634$:
;	src\main.c:962: if(phim_back_nhan){
;	src\main.c:963: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02848$
	sjmp	00639$
02848$:
;	src\main.c:964: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:965: if(sub_mode)sub_mode--;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00636$
	mov	a,r4
	dec	a
	mov	dptr,#_sub_mode
	movx	@dptr,a
	sjmp	00639$
00636$:
;	src\main.c:967: song_name = 0;
	mov	dptr,#_song_name
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src\main.c:968: LCD_guilenh(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	lcall	_LCD_guilenh
;	src\main.c:969: LCD_guichuoi("000 ");
	mov	dptr,#___str_166
	mov	b,#0x80
	lcall	_LCD_guichuoi
;	src\main.c:970: mp3_play(9,0,0);
	mov	_mp3_play_PARM_2,#0x00
	mov	_mp3_play_PARM_3,#0x00
	mov	dpl,#0x09
	lcall	_mp3_play
	pop	ar6
	pop	ar7
00639$:
;	src\main.c:975: if(phim_mode_nhan){
;	src\main.c:977: phim_mode_nhan = 0;
;	assignBit
	jbc	_phim_mode_nhan,02850$
	ljmp	00674$
02850$:
;	src\main.c:978: mode_wait = TIME_MODE_WAIT;
	mov	dptr,#_mode_wait
	mov	a,#0x3c
	movx	@dptr,a
;	src\main.c:979: if(++sub_mode>12){
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x0c
	jnc	00645$
;	src\main.c:980: sub_mode = 0;
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:981: mp3_play(eep_mp3>3?thutemp:10,giotemp,phuttemp);
	mov	dptr,#_eep_mp3
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	add	a,#0xff - 0x03
	jnc	00813$
	mov	dptr,#_main_thutemp_65536_254
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	sjmp	00814$
00813$:
	mov	r2,#0x0a
	mov	r3,#0x00
00814$:
	mov	dpl,r2
	mov	_mp3_play_PARM_2,r7
	mov	_mp3_play_PARM_3,r6
	push	ar7
	push	ar6
	lcall	_mp3_play
;	src\main.c:982: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	src\main.c:983: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:984: LCD_guilenh(0xc3);
	mov	dpl,#0xc3
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:985: LCD_guidulieu(mp3_playing?'O':'X');
	jnb	_P12,00815$
	mov	r2,#0x4f
	mov	r3,#0x00
	sjmp	00816$
00815$:
	mov	r2,#0x58
	mov	r3,#0x00
00816$:
	mov	dpl,r2
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
	ljmp	00674$
00645$:
;	src\main.c:992: }else if(song_name && sub_mode > 2 && eep_mp3>3){
	mov	dptr,#_song_name
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	02854$
	ljmp	00674$
02854$:
	mov	a,r4
	add	a,#0xff - 0x02
	jc	02855$
	ljmp	00674$
02855$:
	mov	dptr,#_eep_mp3
	clr	a
	movc	a,@a+dptr
	mov  r4,a
	add	a,#0xff - 0x03
	jc	02856$
	ljmp	00674$
02856$:
;	src\main.c:993: sub_mode = 0;
	push	ar6
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
;	src\main.c:994: mp3_play(0,song_name/12,(song_name-song_name/12*12)*5);
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
;	src\main.c:995: delay_ms(100);
	mov	dptr,#0x0064
	lcall	_delay_ms
;	src\main.c:996: AmplyRelay = mp3_playing;
;	assignBit
	mov	c,_P12
	mov	_P42,c
;	src\main.c:997: LCD_guilenh(0xc3);
	mov	dpl,#0xc3
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:998: LCD_guidulieu(mp3_playing?'M':'X');
	pop	ar6
	jnb	_P12,00817$
	mov	r3,#0x4d
	mov	r4,#0x00
	sjmp	00818$
00817$:
	mov	r3,#0x58
	mov	r4,#0x00
00818$:
	mov	dpl,r3
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:1002: break;
	ljmp	00674$
;	src\main.c:1003: case CANHKIM:
00649$:
;	src\main.c:1004: if(phim_mode_nhan){
;	src\main.c:1005: phim_mode_nhan=0;
;	assignBit
	jbc	_phim_mode_nhan,02858$
	sjmp	00651$
02858$:
;	src\main.c:1006: canhkim = 5; 
	mov	dptr,#_canhkim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:1007: may_canh_kim = sub_mode+1;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	mov	dptr,#_may_canh_kim
	inc	a
	movx	@dptr,a
;	src\main.c:1008: delay_ve_kim = 5;
	mov	dptr,#_delay_ve_kim
	mov	a,#0x05
	movx	@dptr,a
;	src\main.c:1009: sub_mode = mode;
	mov	dptr,#_sub_mode
	mov	a,r5
	movx	@dptr,a
;	src\main.c:1010: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:1011: LCD_noblink();
	push	ar7
	push	ar6
	lcall	_LCD_noblink
	pop	ar6
	pop	ar7
00651$:
;	src\main.c:1013: if(phim_cong_nhan){
	jb	_phim_cong_nhan,02859$
	ljmp	00674$
02859$:
;	src\main.c:1014: phim_cong_nhan = 0;
	push	ar6
;	assignBit
	clr	_phim_cong_nhan
;	src\main.c:1015: if(++sub_mode>so_motor-1) sub_mode = 0;
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_so_motor
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	dec	r4
	cjne	r4,#0xff,02860$
	dec	r3
02860$:
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
	jnc	00653$
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
00653$:
;	src\main.c:1016: LCD_guidulieu(sub_mode+'1');
	mov	dptr,#_sub_mode
	movx	a,@dptr
	add	a,#0x31
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
;	src\main.c:1017: LCD_guilenh(0xc4);
	mov	dpl,#0xc4
	lcall	_LCD_guilenh
	pop	ar6
	pop	ar7
;	src\main.c:1019: break;
	ljmp	00674$
;	src\main.c:1021: case DATE:
00657$:
;	src\main.c:1023: if(phim_mode_nhan){
;	src\main.c:1024: phim_mode_nhan=0;
;	assignBit
	jbc	_phim_mode_nhan,02862$
	ljmp	00674$
02862$:
;	src\main.c:1025: sub_mode = mode;
	mov	dptr,#_sub_mode
	mov	a,r5
	movx	@dptr,a
;	src\main.c:1026: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:1028: break;
	ljmp	00674$
;	src\main.c:1029: case DCTIMER:
00660$:
;	src\main.c:1030: if(phim_mode_nhan){
;	src\main.c:1031: phim_mode_nhan=0;
;	assignBit
	jbc	_phim_mode_nhan,02863$
	sjmp	00662$
02863$:
;	src\main.c:1032: IAP_docxoasector1();
	push	ar7
	push	ar6
	lcall	_IAP_docxoasector1
;	src\main.c:1034: eeprom_buf[MOTOR_EEPROM] = (eeprom_buf[MOTOR_EEPROM] & 0x1f) | ((thoi_gian_giu_motor-2)<<5);
	mov	dptr,#_eeprom_buf
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x1f
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	mov	r4,a
	dec	r4
	dec	r4
	mov	a,r4
	swap	a
	rl	a
	anl	a,#0xe0
	orl	ar5,a
	mov	dptr,#_eeprom_buf
	mov	a,r5
	movx	@dptr,a
;	src\main.c:1035: IAP_ghisector1();
	lcall	_IAP_ghisector1
;	src\main.c:1038: sub_mode = mode;
	mov	dptr,#_mode
	movx	a,@dptr
	mov	dptr,#_sub_mode
	movx	@dptr,a
;	src\main.c:1039: mode = SELECT;
	mov	dptr,#_mode
	mov	a,#0x08
	movx	@dptr,a
;	src\main.c:1040: LCD_noblink(); 
	lcall	_LCD_noblink
	pop	ar6
	pop	ar7
00662$:
;	src\main.c:1042: if(phim_cong_nhan){
;	src\main.c:1043: phim_cong_nhan = 0;
;	assignBit
	jbc	_phim_cong_nhan,02864$
	sjmp	00667$
02864$:
;	src\main.c:1044: if(thoi_gian_giu_motor>8) thoi_gian_giu_motor=2;
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x08
	jnc	00664$
	mov	dptr,#_thoi_gian_giu_motor
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00667$
00664$:
;	src\main.c:1045: else thoi_gian_giu_motor++;
	mov	dptr,#_thoi_gian_giu_motor
	mov	a,r5
	inc	a
	movx	@dptr,a
00667$:
;	src\main.c:1047: if(phim_back_nhan){
;	src\main.c:1048: phim_back_nhan = 0;
;	assignBit
	jbc	_phim_back_nhan,02866$
	sjmp	00672$
02866$:
;	src\main.c:1049: if(thoi_gian_giu_motor>2) thoi_gian_giu_motor--;
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	mov  r5,a
	add	a,#0xff - 0x02
	jnc	00669$
	mov	a,r5
	dec	a
	mov	dptr,#_thoi_gian_giu_motor
	movx	@dptr,a
	sjmp	00672$
00669$:
;	src\main.c:1050: else thoi_gian_giu_motor=8;
	mov	dptr,#_thoi_gian_giu_motor
	mov	a,#0x08
	movx	@dptr,a
00672$:
;	src\main.c:1052: LCD_guidulieu(' ');
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_LCD_guidulieu
;	src\main.c:1053: LCD_guidulieu(thoi_gian_giu_motor+'0');
	mov	dptr,#_thoi_gian_giu_motor
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_LCD_guidulieu
	pop	ar6
	pop	ar7
;	src\main.c:1054: break;
;	src\main.c:1055: default: mode = sub_mode = 0;
	sjmp	00674$
00673$:
	mov	dptr,#_sub_mode
	clr	a
	movx	@dptr,a
	mov	dptr,#_mode
	movx	@dptr,a
;	src\main.c:1056: }
00674$:
;	src\main.c:1058: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\main.c:1060: }
	ljmp	00676$
;------------------------------------------------------------
;Allocation info for local variables in function 'mp3_serial_interupt'
;------------------------------------------------------------
;	src\main.c:1062: void mp3_serial_interupt() __interrupt 8 __using 1 {
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
;	src\main.c:1063: WATCHDOG;
	orl	_WDT_CONTR,#0x10
;	src\main.c:1064: if(mp3_RI)
	mov	a,_S2CON
	jnb	acc.0,00103$
;	src\main.c:1065: S2CON &= 0xFE;
	anl	_S2CON,#0xfe
00103$:
;	src\main.c:1067: }
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
;	src\main.c:1071: void adc_isr() __interrupt ADC_VECTOR __using 0
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
;	src\main.c:1073: ADC_CONTR = 0x83; //Clear ADC interrupt flag
	mov	_ADC_CONTR,#0x83
;	src\main.c:1076: dien_ap_nguon = ADC_RES;
	mov	r7,_ADC_RES
	mov	r0,#_dien_ap_nguon
	mov	@r0,ar7
;	src\main.c:1077: if(motor_index==5 && motor_index2==5){
	mov	a,#0x05
	cjne	a,_motor_index,00112$
	mov	a,#0x05
	cjne	a,_motor_index2,00112$
;	src\main.c:1078: if(dien_ap_thap){
	jnb	_dien_ap_thap,00109$
;	src\main.c:1079: if(dien_ap_nguon<78) ChargeRelay = 0;
	cjne	r7,#0x4e,00145$
00145$:
	jnc	00104$
;	assignBit
	clr	_P22
	sjmp	00112$
00104$:
;	src\main.c:1080: else if(dien_ap_nguon>100) {//110
	mov	a,r7
	add	a,#0xff - 0x64
	jnc	00112$
;	src\main.c:1081: dien_ap_thap = 0;
;	assignBit
	clr	_dien_ap_thap
	sjmp	00112$
00109$:
;	src\main.c:1083: }else if(dien_ap_nguon<92){
	cjne	r7,#0x5c,00148$
00148$:
	jnc	00112$
;	src\main.c:1084: dien_ap_thap = 1;
;	assignBit
	setb	_dien_ap_thap
;	src\main.c:1085: motor_index  = motor_index2 = 5;
	mov	_motor_index2,#0x05
	mov	_motor_index,#0x05
;	src\main.c:1086: P2 &= 0x0F;
	anl	_P2,#0x0f
00112$:
;	src\main.c:1091: ADC_CONTR = 0x8b;
	mov	_ADC_CONTR,#0x8b
;	src\main.c:1092: }
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
	.ascii "   CAM DELAY   "
	.db 0x00
	.db 0x00
_ver:
	.ascii "_ASIA_GPS__4.9FD_"
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
	.ascii "CALLIBRATING GPS"
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
	.ascii "loi doc cam 1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_147:
	.db 0x0d
	.ascii "loi doc cam 2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_148:
	.db 0x0d
	.ascii "loi doc cam 3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_149:
	.db 0x0d
	.ascii "loi doc cam 4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_150:
	.db 0x0d
	.ascii "Chuan bi reset phan mem tu cuoc goi"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_151:
	.db 0x0d
	.ascii "bao cao dau gio"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_152:
	.ascii "CO TIN NHAN MOI "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_153:
	.ascii "AT+CMGL="
	.db 0x22
	.ascii "ALL"
	.db 0x22
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_154:
	.db 0x0d
	.ascii "gsm reset thanh cong"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_155:
	.ascii "  MDC  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_156:
	.ascii "  MST  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_157:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_158:
	.ascii " G "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_159:
	.ascii " D "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_160:
	.ascii " A "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_161:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_162:
	.db 0x0d
	.ascii "chinh gio bang tay"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_163:
	.db 0x0d
	.ascii "*chinh gio bang tay*"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_164:
	.ascii "         "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_165:
	.db 0xc0
	.ascii "MAY 1          "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_166:
	.ascii "000 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_167:
	.db 0xc0
	.ascii "  KHONG CO SIM  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_168:
	.db 0xc0
	.ascii "  GSM TAT NGUON "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_169:
	.db 0xc0
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_170:
	.ascii " - "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_171:
	.db 0xc0
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_172:
	.ascii "S             "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_173:
	.ascii "    "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__cnt:
	.db #0x14	; 20
__xinit__counter_xung_giay:
	.db #0x28	; 40
	.area CABS    (ABS,CODE)
