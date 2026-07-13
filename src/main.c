#include "main.h"
#include "true.h"
#include "mp3.h"
#include "gsm.h"

/*
        THANG MAY GIA DINH NHIEU TANG - DIEU KHIEN BIEN TAN 2 CAP TOC DO
        Dung phan cung bo dieu khien dong ho.

        2.0A nhieu tang 2 ngo cam + loa MP3 + SMS bao loi A7680C
        3.0A - Dieu khien bien tan 3 pha: FWD / REV / TOC DO CAO.
                 Roi tang: bien tan tu tang toc theo ramp ACC.
                 Cham vau giam toc truoc tang dich: cat TOC DO CAO ->
                 giam ve toc do do tang; cham vau tang: cat RUN -> dung.
                 Them 2 cam bien giam toc: chieu LEN (vau duoi moi tang)
                 va chieu XUONG (vau tren moi tang).
               - Cua cabin tu dong: relay MO/DONG + cong tac mo het/dong
                 het; den tang tu mo cua, mo cho vai giay roi tu dong;
                 ket cua thi mo lai va thu dong toi 3 lan, hong bao SMS.
                 Chuoi an toan cua tang (P33) van nhu cu.
               - Ban phim ma tran 3x4 trong buong: chon thang tang truc
                 tiep 0..8 + phim MO CUA / DONG CUA.
               - Nut goi ngoai buong (P34/P35): len/xuong 1 tang nhu cu.
        3.0B - Nut goi tai moi tang dau SONG SONG voi phim cung tang cua
               ma tran (cung giao diem hang-cot) -> goi thang ve dung tang,
               khong ton them input. Khi mat moc, phim TRET cung kich hoat
               ve chuan (khong chi GOI XUONG).
*/

u8 __code ver[] = VERSION;
__bit chop; // lcd.c can bien nay cho LCD_chop (khong dung o day)

#if CO_MP3
#define PHAT_MP3(track)  \
  do                     \
  {                      \
    mp3_phat(track);     \
    mp3_giu = 150;       \
  } while (0)
#else
#define PHAT_MP3(track)
#endif

/* Quet ban phim ma tran 3 cot x 4 hang.
   Tra ve ma phim dang nhan (hang*3+cot) hoac KHONG_PHIM. */
static u8 quet_ma_tran()
{
  u8 __data phim = KHONG_PHIM;
  mt_cot0 = 0;
  delay_us(5);
  if (!mt_hang0)
    phim = 0;
  else if (!mt_hang1)
    phim = 3;
  else if (!mt_hang2)
    phim = 6;
  else if (!mt_hang3)
    phim = 9;
  mt_cot0 = 1;
  if (phim == KHONG_PHIM)
  {
    mt_cot1 = 0;
    delay_us(5);
    if (!mt_hang0)
      phim = 1;
    else if (!mt_hang1)
      phim = 4;
    else if (!mt_hang2)
      phim = 7;
    else if (!mt_hang3)
      phim = 10;
    mt_cot1 = 1;
  }
  if (phim == KHONG_PHIM)
  {
    mt_cot2 = 0;
    delay_us(5);
    if (!mt_hang0)
      phim = 2;
    else if (!mt_hang1)
      phim = 5;
    else if (!mt_hang2)
      phim = 8;
    else if (!mt_hang3)
      phim = 11;
    mt_cot2 = 1;
  }
  return phim;
}

void main()
{
  u8 __data trang_thai = DUNG;
  u8 __data tang = 0, tang_dich = 0;
  u8 __data tang_cho = KHONG_PHIM; // tang dich dang doi (cho cua dong...)
  __bit giua_tang = 0;
  __bit vi_tri_biet = 0;
  __bit ve_chuan = 0, yeu_cau_ve_chuan = 0;
  __bit di_len;

  u8 __data cua_tt = CUA_DONG_HET;
  u16 __data cua_tick = 0;
  u8 __data so_lan_dong = 0;
  __bit loi_cua = 0;

  u8 __data hien_ma = 0xff, ma;
  u16 __data tick_chay = 0;
  u8 __data khoa = 0;
  u8 __data mp3_giu = 0;

  /* chong doi */
  u8 __data dem_goi_len = 0, dem_goi_xuong = 0, dem_chuoi = 0;
  u8 __data dem_day = 0, dem_tang = 0;
  u8 __data dem_gt_len = 0, dem_gt_xuong = 0;
  u8 __data dem_cua_mo = 0, dem_cua_dong = 0;
  u8 __data phim_truoc = KHONG_PHIM, dem_phim = 0, phim_nhan;
  __bit goi_len_nhan, goi_xuong_nhan, chuoi_ho;
  __bit gt_len_canh, gt_xuong_canh;
  __bit cua_mo_het, cua_dong_het;
  __bit toi_day = 0, cb_tang = 0, cb_tang_cu;
  __bit cb_canh_len, cb_canh_xuong;
  __bit toi_tang_luc_nay, den_noi, cua_ok;
  __bit loi_ct, loi_qua_gio = 0, loi_dem = 0;
  __bit da_gui_sms = 0;
  u8 __data i;

  /*PORT IO INIT*/
  P0M1 = 0;
  P0M0 = 0xff;     // port LCD - push pull
  P1M1 = P1M0 = 0; // hang ma tran + cam bien + BUSY mp3 (quasi keo len)
  P2M1 = 0;
  P2M0 = 0xff; // relay + cot ma tran + nguon SIM - push pull
  P3M1 = P3M0 = 0;
  P4M1 = 0;
  P4M0 = 0x1c; // P4.2 amply, P4.3, P4.4 relay cua - push pull
  P5M1 = P5M0 = 0;
  P2 = 0x70; // relay tat, cot ma tran muc 1 (P24-P26), SIM tat
  P3 = 0xff;
  P4 = 0;
  P1 = 0xff;

  RelayLen = 0;
  RelayXuong = 0;
  RelayTocDoCao = 0;
  RelayCuaMo = 0;
  RelayCuaDong = 0;

  /*Khoi tao man hinh LCD*/
  LCD_Init();
  LCD_guilenh(0x80);
  LCD_guichuoi(ver);
  LCD_guilenh(0xc0);
  LCD_guichuoi("   THANG MAY    ");

#if CO_MP3
  mp3_serial_init();
#endif
#if CO_SIM_A7680C
  gsm_serial_init();
#endif

  delay_ms(2000);

#if CO_SIM_A7680C
  gsm_khoi_tao();
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
  {
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

    /* ===== DOC NGO VAO ===== */

    /* Nut goi ngoai buong: 1 xung khi giu du SO_LAN_CHONG_DOI x10ms */
    if (!goi_len)
    {
      if (dem_goi_len < 255)
        dem_goi_len++;
    }
    else
      dem_goi_len = 0;
    if (!goi_xuong)
    {
      if (dem_goi_xuong < 255)
        dem_goi_xuong++;
    }
    else
      dem_goi_xuong = 0;
    goi_len_nhan = (dem_goi_len == SO_LAN_CHONG_DOI);
    goi_xuong_nhan = (dem_goi_xuong == SO_LAN_CHONG_DOI);

    /* Ban phim ma tran: mot phim mot luc, 1 xung khi nhan */
    phim_nhan = KHONG_PHIM;
    i = quet_ma_tran();
    if (i != KHONG_PHIM && i == phim_truoc)
    {
      if (dem_phim < 255)
        dem_phim++;
      if (dem_phim == SO_LAN_CHONG_DOI)
        phim_nhan = i;
    }
    else
      dem_phim = 0;
    phim_truoc = i;

    /* Chuoi an toan cua tang: ho (muc 1) = cam chay */
#if CO_TIEP_DIEM_CUA
    if (tiep_diem_cua)
    {
      if (dem_chuoi < SO_LAN_CHONG_DOI)
        dem_chuoi++;
    }
    else
      dem_chuoi = 0;
    chuoi_ho = (dem_chuoi >= SO_LAN_CHONG_DOI);
#else
    chuoi_ho = 0;
#endif

    /* Cong tac day + cam bien tang: loc doi 2 chieu de bat suon */
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

    cb_canh_len = cb_tang && !cb_tang_cu;
    cb_canh_xuong = !cb_tang && cb_tang_cu;
    cb_tang_cu = cb_tang;

    /* Cam bien giam toc: chi can suon len (1 xung moi lan cham vau) */
#if CO_GIAM_TOC
    if (gt_len_tac_dong)
    {
      if (dem_gt_len < 255)
        dem_gt_len++;
    }
    else
      dem_gt_len = 0;
    if (gt_xuong_tac_dong)
    {
      if (dem_gt_xuong < 255)
        dem_gt_xuong++;
    }
    else
      dem_gt_xuong = 0;
    gt_len_canh = (dem_gt_len == SO_LAN_CHONG_DOI);
    gt_xuong_canh = (dem_gt_xuong == SO_LAN_CHONG_DOI);
#else
    gt_len_canh = gt_xuong_canh = 0;
#endif

    /* Cong tac cua cabin (tac dong = dong xuong GND) */
#if CO_CUA_TU_DONG
    if (!ct_cua_mo)
    {
      if (dem_cua_mo < SO_LAN_CHONG_DOI)
        dem_cua_mo++;
    }
    else
      dem_cua_mo = 0;
    if (!ct_cua_dong)
    {
      if (dem_cua_dong < SO_LAN_CHONG_DOI)
        dem_cua_dong++;
    }
    else
      dem_cua_dong = 0;
    cua_mo_het = (dem_cua_mo >= SO_LAN_CHONG_DOI);
    cua_dong_het = (dem_cua_dong >= SO_LAN_CHONG_DOI);
#else
    cua_mo_het = 0;
    cua_dong_het = 1;
#endif

    loi_ct = toi_day && cb_tang; // day + vau tang cung tac dong = loi day

    toi_tang_luc_nay = 0;
    den_noi = 0;

    /* ===== MAY TRANG THAI CHAY ===== */
    switch (trang_thai)
    {
    case DANG_LEN:
      RelayXuong = 0;
      tick_chay++;
      if (cb_canh_len)
      {
        tick_chay = 0;
        if (giua_tang)
        {
          giua_tang = 0;
          if (tang < SO_TANG - 1)
            tang++;
          else
          {
            loi_dem = 1;
            vi_tri_biet = 0;
          }
          toi_tang_luc_nay = 1;
        }
      }
      if (cb_canh_xuong)
      {
        tick_chay = 0;
        giua_tang = 1;
      }
      // cham vau giam toc duoi tang dich -> chuyen ve toc do do tang
      if (gt_len_canh)
      {
        tick_chay = 0;
        if (giua_tang && (u8)(tang + 1) == tang_dich)
          RelayTocDoCao = 0;
      }
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;

      den_noi = toi_tang_luc_nay && !loi_dem && tang >= tang_dich;
      if (den_noi || loi_dem || loi_ct || loi_qua_gio || chuoi_ho ||
          goi_xuong_nhan)
      {
        RelayLen = 0;
        RelayTocDoCao = 0;
        trang_thai = DUNG;
        khoa = KHOA_SAU_KHI_DUNG;
        if (den_noi)
        {
          PHAT_MP3(TRACK_TOI_TANG + tang);
#if CO_CUA_TU_DONG
          cua_tt = CUA_DANG_MO; // den tang: tu mo cua
          cua_tick = 0;
#endif
        }
      }
      else if (goi_len_nhan && tang_dich < SO_TANG - 1)
        tang_dich++;
      break;

    case DANG_XUONG:
      RelayLen = 0;
      tick_chay++;
      if (!ve_chuan)
      {
        if (cb_canh_len)
        {
          tick_chay = 0;
          giua_tang = 0;
          toi_tang_luc_nay = 1;
        }
        if (cb_canh_xuong)
        {
          tick_chay = 0;
          if (!giua_tang)
          {
            if (tang)
              tang--;
            giua_tang = 1;
          }
        }
        // cham vau giam toc tren tang dich -> toc do do tang
        if (gt_xuong_canh)
        {
          tick_chay = 0;
          if (giua_tang && tang == tang_dich)
            RelayTocDoCao = 0;
        }
      }
      else if (cb_canh_len || cb_canh_xuong || gt_len_canh || gt_xuong_canh)
        tick_chay = 0; // ve chuan: cam bien chi de reset thoi gian cho

      if (toi_day)
      {
        tang = 0;
        giua_tang = 0;
        vi_tri_biet = 1;
      }
      if (tick_chay > (u16)THOI_GIAN_CHAY_TOI_DA * 100)
        loi_qua_gio = 1;

      den_noi = toi_day || (!ve_chuan && toi_tang_luc_nay && tang_dich &&
                            tang <= tang_dich);
      if (den_noi || loi_ct || loi_dem || loi_qua_gio || chuoi_ho ||
          goi_len_nhan)
      {
        RelayXuong = 0;
        RelayTocDoCao = 0;
        trang_thai = DUNG;
        ve_chuan = 0;
        khoa = KHOA_SAU_KHI_DUNG;
        if (den_noi)
        {
          PHAT_MP3(TRACK_TOI_TANG + tang);
#if CO_CUA_TU_DONG
          cua_tt = CUA_DANG_MO;
          cua_tick = 0;
#endif
        }
      }
      else if (goi_xuong_nhan && !ve_chuan && tang_dich)
        tang_dich--;
      break;

    default: /* DUNG */
      RelayLen = 0;
      RelayXuong = 0;
      RelayTocDoCao = 0;

      /* nhan yeu cau tu ban phim tang (phim buong // nut goi tang dau
         song song cung giao diem ma tran) */
      if (phim_nhan < SO_TANG)
      {
        if (vi_tri_biet)
          tang_cho = phim_nhan;
        else if (phim_nhan == 0)
          yeu_cau_ve_chuan = 1; // mat moc: phim TRET cung goi ve chuan
      }
      if (goi_len_nhan && vi_tri_biet && tang < SO_TANG - 1)
        tang_cho = tang + 1;
      if (goi_xuong_nhan)
      {
        if (!vi_tri_biet)
          yeu_cau_ve_chuan = 1;
        else if (giua_tang)
          tang_cho = tang;
        else if (tang)
          tang_cho = tang - 1;
      }

      if (khoa)
        khoa--;
      else if (!loi_ct && !chuoi_ho)
      {
#if CO_CUA_TU_DONG
        cua_ok = (cua_tt == CUA_DONG_HET) && cua_dong_het;
#else
        cua_ok = 1;
#endif
        if (yeu_cau_ve_chuan && cua_ok)
        {
          yeu_cau_ve_chuan = 0;
          loi_qua_gio = 0;
          loi_dem = 0;
          da_gui_sms = 0;
          ve_chuan = 1;
          tick_chay = 0;
          RelayXuong = 1; // ve chuan: chay cham (khong bat toc do cao)
          trang_thai = DANG_XUONG;
          PHAT_MP3(TRACK_DI_XUONG);
        }
        else if (tang_cho != KHONG_PHIM && cua_ok)
        {
          if (tang_cho == tang && !giua_tang && (toi_day || cb_tang))
          {
            tang_cho = KHONG_PHIM; // da o dung tang: chi mo cua
#if CO_CUA_TU_DONG
            loi_cua = 0;
            cua_tt = CUA_DANG_MO;
            cua_tick = 0;
#endif
          }
          else
          {
            di_len = (tang_cho > tang);
            tang_dich = tang_cho;
            tang_cho = KHONG_PHIM;
            loi_qua_gio = 0;
            da_gui_sms = 0;
            tick_chay = 0;
            RelayTocDoCao = 1; // bien tan tu tang toc theo ramp ACC
            if (di_len)
            {
              RelayLen = 1;
              trang_thai = DANG_LEN;
              PHAT_MP3(TRACK_DI_LEN);
            }
            else
            {
              RelayXuong = 1;
              trang_thai = DANG_XUONG;
              PHAT_MP3(TRACK_DI_XUONG);
            }
          }
        }
      }
    }

    /* ===== MAY TRANG THAI CUA (chi khi thang dung) ===== */
#if CO_CUA_TU_DONG
    if (trang_thai == DUNG)
    {
      switch (cua_tt)
      {
      case CUA_DANG_MO:
        RelayCuaDong = 0;
        RelayCuaMo = 1;
        cua_tick++;
        if (phim_nhan == PHIM_DONG_CUA || cua_mo_het ||
            cua_tick > (u16)THOI_GIAN_CUA_CHAY * 10)
        {
          RelayCuaMo = 0;
          if (!cua_mo_het && cua_tick > (u16)THOI_GIAN_CUA_CHAY * 10)
            loi_cua = 1; // mo khong toi noi: bao loi nhung van cho dong
          cua_tt = CUA_MO_CHO;
          cua_tick = 0;
        }
        break;
      case CUA_MO_CHO:
        RelayCuaMo = 0;
        RelayCuaDong = 0;
        cua_tick++;
        if (phim_nhan == PHIM_MO_CUA)
          cua_tick = 0; // giu cua mo them
        if (phim_nhan == PHIM_DONG_CUA || tang_cho != KHONG_PHIM ||
            yeu_cau_ve_chuan || cua_tick > (u16)THOI_GIAN_CHO_CUA * 10)
        {
          cua_tt = CUA_DANG_DONG;
          cua_tick = 0;
        }
        break;
      case CUA_DANG_DONG:
        RelayCuaMo = 0;
        RelayCuaDong = 1;
        cua_tick++;
        if (phim_nhan == PHIM_MO_CUA)
        { // nhuong nguoi vao: mo lai
          RelayCuaDong = 0;
          cua_tt = CUA_DANG_MO;
          cua_tick = 0;
        }
        else if (cua_dong_het)
        {
          RelayCuaDong = 0;
          cua_tt = CUA_DONG_HET;
          cua_tick = 0;
          so_lan_dong = 0;
        }
        else if (cua_tick > (u16)THOI_GIAN_CUA_CHAY * 10)
        {
          RelayCuaDong = 0;
          cua_tick = 0;
          if (++so_lan_dong >= SO_LAN_THU_DONG_CUA)
          { // ket cua: bao loi, mo ra cho
            loi_cua = 1;
            so_lan_dong = 0;
            cua_tt = CUA_DANG_MO;
          }
          else
            cua_tt = CUA_DANG_MO; // mo ra roi thu dong lai
        }
        break;
      default: /* CUA_DONG_HET */
        RelayCuaMo = 0;
        RelayCuaDong = 0;
        if (phim_nhan == PHIM_MO_CUA)
        {
          loi_cua = 0;
          cua_tt = CUA_DANG_MO;
          cua_tick = 0;
        }
      }
    }
    else
    {
      RelayCuaMo = 0;
      RelayCuaDong = 0;
    }
#endif

#if CO_MP3
    if (mp3_giu)
      mp3_giu--;
    AmplyRelay = (mp3_giu || mp3_playing) ? 1 : 0;
#endif

#if CO_SIM_A7680C
    /* Nhan tin bao loi - moi su co gui 1 lan, thang da dung han */
    if (!da_gui_sms && (loi_qua_gio || loi_dem || loi_ct || loi_cua))
    {
      da_gui_sms = 1;
      gsm_sms_batdau();
      if (loi_ct)
        gsm_gui_chuoi("LOI THANG MAY: cong tac day va cam bien tang cung "
                      "tac dong, kiem tra day");
      else if (loi_dem)
        gsm_gui_chuoi("LOI THANG MAY: dem tang vuot gioi han, can bam GOI "
                      "XUONG cho thang ve tang tret");
      else if (loi_cua)
        gsm_gui_chuoi("LOI THANG MAY: cua cabin dong/mo khong duoc, kiem "
                      "tra motor cua");
      else
      {
        gsm_gui_chuoi("LOI THANG MAY: chay qua thoi gian chua toi tang, "
                      "thang dang dung gan tang ");
        gsm_sms_so(tang);
      }
      gsm_sms_ketthuc();
    }
#endif

    /* ===== HIEN THI LCD - ma = (id<<4) | so tang ===== */
    if (loi_ct)
      ma = 5 << 4;
    else if (loi_dem)
      ma = 9 << 4;
    else if (trang_thai == DANG_LEN)
      ma = (1 << 4) | tang_dich;
    else if (trang_thai == DANG_XUONG)
      ma = ve_chuan ? (8 << 4) : ((2 << 4) | tang_dich);
    else if (loi_cua)
      ma = 13 << 4;
#if CO_CUA_TU_DONG
    else if (cua_tt == CUA_DANG_MO)
      ma = 10 << 4;
    else if (cua_tt == CUA_MO_CHO)
      ma = 11 << 4;
    else if (cua_tt == CUA_DANG_DONG)
      ma = 12 << 4;
#endif
    else if (chuoi_ho)
      ma = 7 << 4;
    else if (loi_qua_gio)
      ma = 6 << 4;
    else if (!vi_tri_biet)
      ma = 4 << 4;
    else if (toi_day || cb_tang)
      ma = tang;
    else
      ma = 3 << 4;

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
        LCD_guichuoi(" BAM GOI XUONG  ");
        break;
      case 6:
        LCD_guichuoi("!QUA THOI GIAN  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("BAM NUT THU LAI ");
        break;
      case 4:
        LCD_guichuoi("CHUA RO VI TRI  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("BAM GOI XUONG   ");
        break;
      case 13:
        LCD_guichuoi("!LOI CUA CABIN  ");
        LCD_guilenh(0xc0);
        LCD_guichuoi("KT MOTOR CUA    ");
        break;
      default:
        LCD_guichuoi("   THANG MAY    ");
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
        case 10:
          LCD_guichuoi("  DANG MO CUA   ");
          break;
        case 11:
          LCD_guichuoi("   CUA DANG MO  ");
          break;
        case 12:
          LCD_guichuoi(" DANG DONG CUA  ");
          break;
        case 7:
          LCD_guichuoi("CUA TANG DANG MO");
          break;
        case 3:
          LCD_guichuoi(" GIUA HAI TANG  ");
          break;
        default:
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
