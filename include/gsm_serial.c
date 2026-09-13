// GPS-only serial handling for ATGM336H.
// Toan bo phan SIM800/A7680C (SMS, cuoc goi, lay gio GSM, bao cao) da bi go bo.
// Chi giu lai: cau hinh module GPS va phan tich cau NMEA $GNRMC de lay gio.

// Cau hinh module GPS ATGM336H: 38400 baud, 1Hz, chi bat cau RMC.
__bit gps_configure_atgm336h() {
  LCD_guilenh(0x80);
  LCD_guichuoi("CONFIG GPS ATGM ");

  send_gsm_cmd("$PCAS01,3*1F\r\n"); // baud 38400
  delay_ms(500);

  send_gsm_cmd("$PCAS02,1000*2E\r\n"); // 1Hz
  delay_ms(100);

  send_gsm_cmd("$PCAS03,0,0,0,0,1,0,0,0,0,0,,,0,0*03\r\n"); // chi RMC
  delay_ms(100);

  send_gsm_cmd("$PCAS00*01\r\n"); // luu vao flash
  delay_ms(500);

  LCD_guilenh(0x80);
  LCD_guichuoi("GPS CONFIG DONE ");
  return 1;
}

void gsm_serial_interrupt() __interrupt(gsm_SERIAL_INT) __using(SERIAL_MEM) {
  if (gsm_RI) {
    WATCHDOG;
    gsm_receive_buf[gsm_receive_pointer] = SBUF;

    switch (gsm_serial_cmd) {
    case NORMAL:
      // Phat hien cau $GNRMC -> chuyen sang phan tich
      if (gsm_receive_buf[gsm_receive_pointer] == ',' &&
          gsm_receive_buf[(gsm_receive_pointer + 12) % 13] == 'C' &&
          gsm_receive_buf[(gsm_receive_pointer + 11) % 13] == 'M' &&
          gsm_receive_buf[(gsm_receive_pointer + 10) % 13] == 'R' &&
          gsm_receive_buf[(gsm_receive_pointer + 9) % 13] == 'N' &&
          gsm_receive_buf[(gsm_receive_pointer + 8) % 13] == 'G' &&
          gsm_receive_buf[(gsm_receive_pointer + 7) % 13] == '$') {
        gps_module_atgm = 1;
        gnrmc_field_index = 0;
        gnrmc_char_index = 0;
        gsm_serial_cmd = GNRMC_PARSE;
      }
      break;
    case GNRMC_PARSE:
      // Parse GNRMC:
      // $GNRMC,hhmmss.sss,A/V,lat,N/S,lon,E/W,spd,cog,ddmmyy,...*checksum
      // Fields: 0=time, 1=status, 2-3=lat, 4-5=lon, 6=speed, 7=course, 8=date
      if (SBUF == ',') {
        gnrmc_field_index++;
        gnrmc_char_index = 0;
      } else if (SBUF == '\r' || SBUF == '\n' || SBUF == '*') {
        // End of sentence
        // Check if time and date fields are populated (not empty)
        // This allows sync even without location fix (V status)
        if (gnrmc_field_index >= 8 && gnrmc_time_buf[0] >= '0' &&
            gnrmc_time_buf[0] <= '9' && gnrmc_date_buf[0] >= '0' &&
            gnrmc_date_buf[0] <= '9') {
          // Extract time/date from GNRMC
          hour = (gnrmc_time_buf[0] - '0') * 10 + (gnrmc_time_buf[1] - '0');
          minute = (gnrmc_time_buf[2] - '0') * 10 + (gnrmc_time_buf[3] - '0');
          second = (gnrmc_time_buf[4] - '0') * 10 + (gnrmc_time_buf[5] - '0');
          day = (gnrmc_date_buf[0] - '0') * 10 + (gnrmc_date_buf[1] - '0');
          month = (gnrmc_date_buf[2] - '0') * 10 + (gnrmc_date_buf[3] - '0');
          year = (gnrmc_date_buf[4] - '0') * 10 + (gnrmc_date_buf[5] - '0');

          // Apply UTC+7 timezone offset
          hour = (hour + 7 > 23) ? hour - 17 : hour + 7;

          // Only sync RTC when allowed (startup or hourly)
          if (gps_sync_allowed) {
            rtc_settime(hour, minute, second);
            u16 check = (23 * month / 9 + day + (month > 2 ? !(year % 4) : 2) +
                         year + (year + 3) / 4 + 1);
            date = check % 7 + 1;
            rtc_setdate(date, day, month, year);
            gps_sync_allowed = 0; // Block further syncs until re-enabled
          }
          GPS_time = 1;
        }
        gsm_serial_cmd = NORMAL;
      } else {
        // Store data in appropriate field buffer
        if (gnrmc_field_index == 0 && gnrmc_char_index < 6) {
          // Time field (hhmmss)
          gnrmc_time_buf[gnrmc_char_index++] = SBUF;
        } else if (gnrmc_field_index == 1 && gnrmc_char_index == 0) {
          // Status field: A=valid, V=invalid
          gps_valid_fix = (SBUF == 'A') || (SBUF == 'V');
          gnrmc_char_index++;
        } else if (gnrmc_field_index == 8 && gnrmc_char_index < 6) {
          // Date field (ddmmyy)
          gnrmc_date_buf[gnrmc_char_index++] = SBUF;
        } else {
          gnrmc_char_index++;
        }
      }
      break;
    default:
      gsm_serial_cmd = NORMAL;
      break;
    }
    if (++gsm_receive_pointer > 12)
      gsm_receive_pointer = 0;
    gsm_RI = 0;
  }
}
