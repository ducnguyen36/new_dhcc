#ifndef SETTINGS_LOGIC_H
#define SETTINGS_LOGIC_H

/* Gia tri delay cam mac dinh giu nguyen hanh vi cua firmware cu. */
static unsigned char cam_delay_default(unsigned char is_dc)
{
  return is_dc ? 30 : 10;
}

static unsigned char cam_delay_from_eeprom(unsigned char stored,
                                            unsigned char is_dc)
{
  if (stored < 1 || stored > 30)
    return cam_delay_default(is_dc);
  return stored;
}

static unsigned char cam_delay_next(unsigned char delay)
{
  return delay >= 30 ? 1 : delay + 1;
}

static unsigned char step_output_direction(unsigned char logical_direction,
                                            unsigned char reverse,
                                            unsigned char is_dc,
                                            unsigned char uses_driver,
                                            unsigned char motor_count)
{
  if (reverse && !is_dc && !uses_driver && motor_count <= 2)
    return !logical_direction;
  return logical_direction;
}

#endif
