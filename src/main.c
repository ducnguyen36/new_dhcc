#include "main.h"
#include "true.h"
#include "mp3.h"
#include "gsm.h"

/*
        THANG NANG GIA DINH NHIEU TANG (SO_TANG tang, tret = tang 0)
        Dung phan cung bo dieu khien dong ho.

        1.0  phien ban dau 2 tang: bam 1 lan tu chay, cham cong tac thi dung
        1.0B doi nut DUNG (P33) thanh ngo vao tiep diem cua
        1.0C chon kieu cong tac hanh trinh NO/NC (THANG_NO / THANG_NC)
        2.0A - Nhieu tang nhung van 2 ngo cam:
                 cam 1 = cong tac day (tang tret, moc chuan tuyet doi)
                 cam 2 = cam bien tang: vau/cong tac tai MOI tang (tru tret),
                 bo DEM so vau di qua de biet dang o tang nao.
               - Bam LEN/XUONG: chay 1 tang; DANG chay bam them cung chieu:
                 di them 1 tang nua; bam nguoc chieu: DUNG khan cap.
               - Mat dien xong vi tri chua biet -> bam XUONG de ve tang tret
                 (ve chuan), tru khi dang dau san o tret (hoac tang 1 neu
                 SO_TANG=2).
               - Thong bao loa qua module MP3: khi chay len, chay xuong,
                 va khi den tang (bai 11+tang).
               - Nhan tin bao loi qua module SIM A7680C: qua thoi gian chay,
                 loi cong tac hanh trinh, loi dem tang.
*/

u8 __code ver[] = VERSION;
__bit chop; // lcd.c can bien nay cho LCD_chop (khong dung o day)

#if CO_MP3
#define PHAT_MP3(track)     \
  do                        \
  {                         \
    mp3_phat(track);        \
    mp3_giu = 150;          \
  } while (0)
#else
#define PHAT_MP3(track)
#endif

void main()
{
  u8 __data trang_thai = DUNG;
  u8 __data tang = 0, tang_dich = 0;
  __bit giua_tang = 0;   // dang o khoang giua tang `tang` va `tang+1`
  __bit vi_tri_biet = 0; // 0 = chua ro vi tri (sau mat dien) -> can ve chuan
  __bit ve_chuan = 0;    // dang chay xuong ve tang tret de lay moc

  u8 __data hien_ma = 0xff, ma; // ma man hinh LCD (id<<4 | so tang)
  u16 __data tick_chay = 0;
  u8 __data khoa = 0;
  u8 __data mp3_giu = 0;

  u8 __data dem_len = 0, dem_xuong = 0, dem_cua = 0;
  u8 __data dem_day = 0, dem_tang = 0;
  __bit len_nhan, xuong_nhan, cua_mo;
  __bit toi_day = 0, cb_tang = 0, cb_tang_cu;
  __bit cb_canh_len, cb_canh_xuong; // suon len/xuong cua cam bien tang
  __bit toi_tang_luc_nay, den_noi;
  __bit loi_ct, loi_qua_gio = 0, loi_dem = 0;
  __bit da_gui_sms = 0;
  u8 __data i;

  /*PORT IO INIT*/
  P0M1 = 0;
  P0M0 = 0xff;     // port LCD - push pull
  P1M1 = P1M0 = 0; // P1.2 = BUSY mp3 (vao)
  P2M1 = 0;
  P2M0 = 0xff;     // relay + nguon SIM - push pull
  P3M1 = P3M0 = 0; // nut bam + cong tac (quasi, co keo len)
  P4M1 = P4M0 = 0; // P4.2 amply, P4.6/4.7 UART2 mp3
  P5M1 = P5M0 = 0;
  P2 = 0; // tat het relay + nguon SIM ngay khi cap dien
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

#if CO_MP3
  mp3_serial_init();
#endif
#if CO_SIM_A7680C
  gsm_serial_init(); // bat nguon SIM (P2.0) + UART1
#endif

  delay_ms(2000);

#if CO_SIM_A7680C
  gsm_khoi_tao(); // dong bo AT + che do SMS text
#endif

  /* Doc on dinh ngo vao roi xac dinh vi tri ban dau */
  for (i = 0; i < 10; i++)
  {
    delay_ms(10);
    if (ct_day_tac_dong)
    {
      if (dem_day < SO_LAN_CHONG_DOI)
        dem_day++;
    }
    else if (dem_day)
      dem_day--;
    if (ct_dinh_tac_dong)
    {
      if (dem_tang < SO_LAN_CHONG_DOI)
        dem_tang++;
    }
    else if (dem_tang)
      dem_tang--;
  }
  toi_day = (dem_day >= SO_LAN_CHONG_DOI);
  cb_tang = (dem_tang >= SO_LAN_CHONG_DOI);
  cb_tang_cu = cb_tang;
  if (toi_day)
  {
    tang = 0;
    vi_tri_biet = 1;
  }
#if SO_TANG == 2
  else if (cb_tang)
  { // 2 tang: vau chi co o tang 1 -> biet chac vi tri
    tang = 1;
    vi_tri_biet = 1;
  }
#endif

  /*Bat watchdog*/
  WDT_CONTR = EN_WDT | CLR_WDT | WDT_SCALE_64;

  while (1)
  {
    WATCHDOG;
    delay_ms(10); // chu ky quet 10ms

    /* Doc nut bam: phat 1 xung khi giu du SO_LAN_CHONG_DOI x10ms */
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

    /* Doc tiep diem cua theo muc: cua dong = P33 dong xuong GND */
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

    /* Doc cong tac day + cam bien tang: loc doi 2 chieu (hysteresis)
       de bat suon len/xuong chinh xac. Kieu NO/NC theo CT_THUONG_MO. */
    if (ct_day_tac_dong)
    {
      if (dem_day < SO_LAN_CHONG_DOI)
        dem_day++;
    }
    else if (dem_day)
      dem_day--;
    if (dem_day >= SO_LAN_CHONG_DOI)
      toi_day = 1;
    else if (!dem_day)
      toi_day = 0;

    if (ct_dinh_tac_dong)
    {
      if (dem_tang < SO_LAN_CHONG_DOI)
        dem_tang++;
    }
    else if (dem_tang)
      dem_tang--;
    if (dem_tang >= SO_LAN_CHONG_DOI)
      cb_tang = 1;
    else if (!dem_tang)
      cb_tang = 0;

    cb_canh_len = cb_tang && !cb_tang_cu;   // vua cham vau tang
    cb_canh_xuong = !cb_tang && cb_tang_cu; // vua roi khoi vau tang
    cb_tang_cu = cb_tang;

    // cong tac day + cam bien tang cung tac dong = loi dau day
    // (KHONG duoc gan vau cam bien o tang tret)
    loi_ct = toi_day && cb_tang;

    toi_tang_luc_nay = 0;
    den_noi = 0;

    switch (trang_thai)
    {
    case DANG_LEN:
      RelayXuong = 0;
      tick_chay++;
      if (cb_canh_len) // cham vau: den tang ke tiep
      {
        tick_chay = 0;
        if (giua_tang)
        {
          giua_tang = 0;
          if (tang < SO_TANG - 1)
            tang++;
          else
          {
            loi_dem = 1; // dem vuot tang tren cung -> vi tri khong tin duoc
            vi_tri_biet = 0;
          }
          toi_tang_luc_nay = 1;
        }
      }
      if (cb_canh_xuong) // roi khoi vau, di vao khoang giua tang
      {
        tick_chay = 0;
        giua_tang = 1;
      }
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;

      den_noi = toi_tang_luc_nay && !loi_dem && tang >= tang_dich;
      if (den_noi || loi_dem || loi_ct || loi_qua_gio || cua_mo || xuong_nhan)
      {
        RelayLen = 0;
        trang_thai = DUNG;
        khoa = KHOA_SAU_KHI_DUNG;
        if (den_noi)
          PHAT_MP3(TRACK_TOI_TANG + tang);
      }
      else if (len_nhan && tang_dich < SO_TANG - 1)
        tang_dich++; // bam LEN khi dang len: di them 1 tang nua
      break;

    case DANG_XUONG:
      RelayLen = 0;
      tick_chay++;
      if (!ve_chuan)
      {
        if (cb_canh_len) // cham vau: den tang `tang`
        {
          tick_chay = 0;
          giua_tang = 0;
          toi_tang_luc_nay = 1;
        }
        if (cb_canh_xuong) // roi vau di xuong: vao khoang duoi tang cu
        {
          tick_chay = 0;
          if (!giua_tang)
          {
            if (tang)
              tang--;
            giua_tang = 1;
          }
        }
      }
      else if (cb_canh_len || cb_canh_xuong)
        tick_chay = 0; // ve chuan: chi dung vau de reset thoi gian cho

      if (toi_day) // cham day: moc chuan tuyet doi
      {
        tang = 0;
        giua_tang = 0;
        vi_tri_biet = 1;
      }
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;

      den_noi = toi_day || (!ve_chuan && toi_tang_luc_nay && tang_dich &&
                            tang <= tang_dich);
      if (den_noi || loi_ct || loi_dem || loi_qua_gio || cua_mo || len_nhan)
      {
        RelayXuong = 0;
        trang_thai = DUNG;
        ve_chuan = 0;
        khoa = KHOA_SAU_KHI_DUNG;
        if (den_noi)
          PHAT_MP3(TRACK_TOI_TANG + tang);
      }
      else if (xuong_nhan && !ve_chuan && tang_dich)
        tang_dich--; // bam XUONG khi dang xuong: xuong them 1 tang nua
      break;

    default: /* DUNG */
      RelayLen = 0;
      RelayXuong = 0;
      if (khoa)
        khoa--; // doi 1 giay sau khi dung roi moi cho chay lai
      else if (!loi_ct && !cua_mo)
      {
        if (!vi_tri_biet)
        {
          // chua ro vi tri (sau mat dien / loi dem): chi cho ve chuan
          if (xuong_nhan)
          {
            loi_qua_gio = 0;
            loi_dem = 0;
            da_gui_sms = 0;
            ve_chuan = 1;
            tick_chay = 0;
            RelayXuong = 1;
            trang_thai = DANG_XUONG;
            PHAT_MP3(TRACK_DI_XUONG);
          }
        }
        else if (len_nhan && tang < SO_TANG - 1)
        {
          loi_qua_gio = 0;
          da_gui_sms = 0;
          tang_dich = tang + 1;
          tick_chay = 0;
          RelayLen = 1;
          trang_thai = DANG_LEN;
          PHAT_MP3(TRACK_DI_LEN);
        }
        else if (xuong_nhan && (tang || giua_tang) && !toi_day)
        {
          loi_qua_gio = 0;
          da_gui_sms = 0;
          // dang giua tang: xuong ve tang `tang`; dang o tang: xuong 1 tang
          tang_dich = giua_tang ? tang : (tang - 1);
          tick_chay = 0;
          RelayXuong = 1;
          trang_thai = DANG_XUONG;
          PHAT_MP3(TRACK_DI_XUONG);
        }
      }
    }

#if CO_MP3
    /* Amply chi bat khi dang phat thong bao */
    if (mp3_giu)
      mp3_giu--;
    AmplyRelay = (mp3_giu || mp3_playing) ? 1 : 0;
#endif

#if CO_SIM_A7680C
    /* Nhan tin bao loi - moi loi gui 1 lan (thang da dung, relay da tat) */
    if (!da_gui_sms && (loi_qua_gio || loi_dem || loi_ct))
    {
      da_gui_sms = 1;
      gsm_sms_batdau();
      if (loi_ct)
        gsm_gui_chuoi("LOI THANG NANG: cong tac day va cam bien tang cung "
                      "tac dong, kiem tra day");
      else if (loi_dem)
        gsm_gui_chuoi("LOI THANG NANG: dem tang vuot gioi han, can bam XUONG "
                      "cho thang ve tang tret");
      else
      {
        gsm_gui_chuoi("LOI THANG NANG: chay qua thoi gian chua toi tang, "
                      "thang dang dung gan tang ");
        gsm_sms_so(tang);
      }
      gsm_sms_ketthuc();
    }
#endif

    /* Hien thi LCD - ma = (id man hinh <<4) | so tang, chi ve lai khi doi */
    if (loi_ct)
      ma = 5 << 4;
    else if (loi_dem)
      ma = 9 << 4;
    else if (trang_thai == DANG_LEN)
      ma = (1 << 4) | tang_dich;
    else if (trang_thai == DANG_XUONG)
      ma = ve_chuan ? (8 << 4) : ((2 << 4) | tang_dich);
    else if (cua_mo)
      ma = 7 << 4;
    else if (loi_qua_gio)
      ma = 6 << 4;
    else if (!vi_tri_biet)
      ma = 4 << 4;
    else if (toi_day || cb_tang)
      ma = tang; // dang dau tai tang (id 0)
    else
      ma = 3 << 4; // dung giua tang

    if (ma != hien_ma)
    {
      hien_ma = ma;
      LCD_guilenh(0x80);
      switch (ma >> 4)
      {
      case 5:
        LCD_guichuoi("!LOI CONG TAC HT");
        LCD_guilenh(0xc0);
        LCD_guichuoi("KT DAY & CB TANG");
        break;
      case 9:
        LCD_guichuoi("!LOI DEM TANG   ");
        LCD_guilenh(0xc0);
        LCD_guichuoi(" BAM NUT XUONG  ");
        break;
      case 6:
        LCD_guichuoi("!QUA THOI GIAN  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("BAM NUT THU LAI ");
        break;
      case 4:
        LCD_guichuoi("CHUA RO VI TRI  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("BAM XUONG VE TRE");
        break;
      default:
        LCD_guichuoi("   THANG NANG   ");
        LCD_guilenh(0xc0);
        switch (ma >> 4)
        {
        case 1:
          LCD_guichuoi("LEN DEN TANG ");
          LCD_guidulieu((ma & 15) + '0');
          LCD_guichuoi("  ");
          break;
        case 2:
          if (ma & 15)
          {
            LCD_guichuoi("XUONG DEN TANG ");
            LCD_guidulieu((ma & 15) + '0');
          }
          else
            LCD_guichuoi("XUONG DEN T.TRET");
          break;
        case 8:
          LCD_guichuoi(" DANG VE T.TRET ");
          break;
        case 7:
          LCD_guichuoi("  CUA DANG MO   ");
          break;
        case 3:
          LCD_guichuoi(" GIUA HAI TANG  ");
          break;
        default: // id 0: dang dau tai tang
          if (ma & 15)
          {
            LCD_guichuoi("    O TANG ");
            LCD_guidulieu((ma & 15) + '0');
            LCD_guichuoi("    ");
          }
          else
            LCD_guichuoi("  O TANG TRET   ");
        }
      }
    }
  }
}
