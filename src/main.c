#include "main.h"
#include "true.h"

/*
        THANG NANG GIA DINH 2 TANG (tang tret + tang 1)
        Dung phan cung bo dieu khien dong ho.

        1.0  phien ban dau:
        - Bam nut LEN (trong buong hoac nut goi tang tren dau song song):
          relay giu lenh LEN cho den khi cham cong tac hanh trinh tren
          (cong cam 2) thi dung.
        - Bam nut XUONG (trong buong hoac nut goi tang tret dau song song):
          relay giu lenh XUONG cho den khi cham cong tac hanh trinh duoi
          (cong cam 1) thi dung.
        - Dang chay bam nut bat ky -> dung ngay (dung khan cap).
        - Tiep diem cua vao chan P33 (cua dong = dong xuong GND): cua mo
          -> dung ngay va HUY lenh; dong cua lai phai bam nut moi chay.
          Dut day tin hieu cua cung duoc coi la cua mo (an toan).
        - Qua THOI_GIAN_CHAY_TOI_DA giay chua toi noi -> tu dung + bao loi.
        - Ca 2 cong tac hanh trinh cung tac dong -> bao loi, khong cho chay.

        1.0B doi nut DUNG (P33) thanh ngo vao tiep diem cua
*/

u8 __code ver[] = VERSION;
__bit chop; // lcd.c can bien nay cho LCD_chop (khong dung o day)

void main()
{
  u8 __data trang_thai = DUNG;
  u8 __data man_hinh = 0xff, man_hinh_moi;
  u16 __data tick_chay = 0;
  u8 __data khoa = 0;
  u8 __data dem_len = 0, dem_xuong = 0, dem_cua = 0;
  u8 __data dem_day = 0, dem_dinh = 0;
  __bit len_nhan, xuong_nhan, cua_mo;
  __bit toi_day, toi_dinh, loi_ct;
  __bit loi_qua_gio = 0;

  /*PORT IO INIT*/
  P0M1 = 0;
  P0M0 = 0xff;     // port LCD - push pull
  P1M1 = P1M0 = 0; // khong dung
  P2M1 = 0;
  P2M0 = 0xff;     // relay ngo ra - push pull
  P3M1 = P3M0 = 0; // nut bam + cong tac hanh trinh (quasi, co keo len)
  P4M1 = P4M0 = 0;
  P5M1 = P5M0 = 0;
  P2 = 0; // tat het relay ngay khi cap dien
  P3 = 0xff;
  P4 = 0;

  RelayLen = 0;
  RelayXuong = 0;

  /*Khoi tao man hinh LCD*/
  LCD_Init();
  LCD_guilenh(0x80);
  LCD_guichuoi(ver);
  LCD_guilenh(0xc0);
  LCD_guichuoi("   THANG NANG   ");
  delay_ms(2000);

  /*Bat watchdog*/
  WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64;

  while (1)
  {
    WATCHDOG;
    delay_ms(10); // chu ky quet 10ms

    /* Doc nut bam: phat 1 xung khi giu du SO_LAN_CHONG_DOI x10ms,
       giu tiep khong phat lai (chong doi + chong lap) */
    if (!nut_len)
    {
      if (dem_len < 255)
        dem_len++;
    }
    else
      dem_len = 0;
    if (!nut_xuong)
    {
      if (dem_xuong < 255)
        dem_xuong++;
    }
    else
      dem_xuong = 0;
    len_nhan = (dem_len == SO_LAN_CHONG_DOI);
    xuong_nhan = (dem_xuong == SO_LAN_CHONG_DOI);

    /* Doc tiep diem cua theo muc: cua dong = P33 dong xuong GND.
       Muc 1 (cua mo hoac dut day) -> cua_mo */
#if CO_TIEP_DIEM_CUA
    if (tiep_diem_cua)
    {
      if (dem_cua < SO_LAN_CHONG_DOI)
        dem_cua++;
    }
    else
      dem_cua = 0;
    cua_mo = (dem_cua >= SO_LAN_CHONG_DOI);
#else
    cua_mo = 0;
#endif

    /* Doc cong tac hanh trinh theo muc, loc doi */
    if (!ct_day)
    {
      if (dem_day < SO_LAN_CHONG_DOI)
        dem_day++;
    }
    else
      dem_day = 0;
    if (!ct_dinh)
    {
      if (dem_dinh < SO_LAN_CHONG_DOI)
        dem_dinh++;
    }
    else
      dem_dinh = 0;
    toi_day = (dem_day >= SO_LAN_CHONG_DOI);
    toi_dinh = (dem_dinh >= SO_LAN_CHONG_DOI);
    loi_ct = toi_day && toi_dinh; // ca 2 cung tac dong: loi dau day/cong tac

    switch (trang_thai)
    {
    case DANG_LEN:
      RelayXuong = 0;
      tick_chay++;
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;
      // toi noi / cua mo / loi / bam nut bat ky / qua gio -> dung + huy lenh
      if (toi_dinh || cua_mo || loi_ct || loi_qua_gio || len_nhan ||
          xuong_nhan)
      {
        RelayLen = 0;
        trang_thai = DUNG;
        khoa = KHOA_SAU_KHI_DUNG;
      }
      break;

    case DANG_XUONG:
      RelayLen = 0;
      tick_chay++;
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;
      if (toi_day || cua_mo || loi_ct || loi_qua_gio || len_nhan ||
          xuong_nhan)
      {
        RelayXuong = 0;
        trang_thai = DUNG;
        khoa = KHOA_SAU_KHI_DUNG;
      }
      break;

    default: /* DUNG */
      RelayLen = 0;
      RelayXuong = 0;
      if (khoa)
        khoa--; // doi 1 giay sau khi dung roi moi cho chay lai
      else if (!loi_ct && !cua_mo) // cua mo: khong nhan lenh chay
      {
        if (len_nhan && !toi_dinh)
        {
          // dang o duoi (hoac giua tang): di len
          loi_qua_gio = 0;
          tick_chay = 0;
          RelayLen = 1;
          trang_thai = DANG_LEN;
        }
        else if (xuong_nhan && !toi_day)
        {
          // dang o tren (hoac giua tang): di xuong
          loi_qua_gio = 0;
          tick_chay = 0;
          RelayXuong = 1;
          trang_thai = DANG_XUONG;
        }
      }
    }

    /* Hien thi LCD - chi ve lai khi thay doi */
    if (loi_ct)
      man_hinh_moi = 5;
    else if (trang_thai == DANG_LEN)
      man_hinh_moi = 1;
    else if (trang_thai == DANG_XUONG)
      man_hinh_moi = 2;
    else if (cua_mo)
      man_hinh_moi = 7;
    else if (loi_qua_gio)
      man_hinh_moi = 6;
    else if (toi_day)
      man_hinh_moi = 3;
    else if (toi_dinh)
      man_hinh_moi = 4;
    else
      man_hinh_moi = 0;

    if (man_hinh_moi != man_hinh)
    {
      man_hinh = man_hinh_moi;
      LCD_guilenh(0x80);
      switch (man_hinh)
      {
      case 5:
        LCD_guichuoi("!LOI CONG TAC HT");
        LCD_guilenh(0xc0);
        LCD_guichuoi("KT CT DAY & DINH");
        break;
      case 6:
        LCD_guichuoi("!QUA THOI GIAN  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("BAM NUT THU LAI ");
        break;
      default:
        LCD_guichuoi("   THANG NANG   ");
        LCD_guilenh(0xc0);
        switch (man_hinh)
        {
        case 1:
          LCD_guichuoi(" DANG DI LEN... ");
          break;
        case 2:
          LCD_guichuoi("DANG DI XUONG...");
          break;
        case 3:
          LCD_guichuoi("  O TANG TRET   ");
          break;
        case 4:
          LCD_guichuoi("    O TANG 1    ");
          break;
        case 7:
          LCD_guichuoi("  CUA DANG MO   ");
          break;
        default:
          LCD_guichuoi(" GIUA HAI TANG  ");
        }
      }
    }
  }
}
