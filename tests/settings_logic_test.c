#include "../src/settings_logic.h"

volatile __xdata __at(0x0100) unsigned char test_result;

static void fail(unsigned char code)
{
  test_result = code;
  while (1)
    ;
}

void main(void)
{
  test_result = 0xff;

  if (cam_delay_from_eeprom(0xff, 0) != 10)
    fail(1); /* EEPROM moi: stepper mac dinh 10 giay. */
  if (cam_delay_from_eeprom(0xff, 1) != 30)
    fail(2); /* EEPROM moi: DC mac dinh 30 giay. */
  if (cam_delay_from_eeprom(0, 0) != 10)
    fail(3); /* 0 khong hop le: ve mac dinh stepper. */
  if (cam_delay_from_eeprom(31, 1) != 30)
    fail(4); /* Vuot 30: ve mac dinh DC. */
  if (cam_delay_from_eeprom(1, 0) != 1)
    fail(5); /* Bien duoi hop le. */
  if (cam_delay_from_eeprom(30, 0) != 30)
    fail(6); /* Bien tren hop le. */
  if (cam_delay_next(30) != 1)
    fail(7); /* Nut + quay vong 30 -> 1. */

  if (step_output_direction(0, 1, 0, 0, 1) != 1)
    fail(8); /* TT1ST DIR=1 dao chieu tien. */
  if (step_output_direction(1, 1, 0, 0, 2) != 0)
    fail(9); /* TT2ST DIR=1 dao chieu lui. */
  if (step_output_direction(1, 0, 0, 0, 2) != 1)
    fail(10); /* DIR=0 giu nguyen. */
  if (step_output_direction(1, 1, 1, 0, 1) != 1)
    fail(11); /* May DC khong bi anh huong. */
  if (step_output_direction(1, 1, 0, 1, 2) != 1)
    fail(12); /* Driver ngoai khong bi anh huong. */
  if (step_output_direction(1, 1, 0, 0, 3) != 1)
    fail(13); /* Hon 2 may khong bi anh huong. */

  test_result = 0;
  while (1)
    ;
}
