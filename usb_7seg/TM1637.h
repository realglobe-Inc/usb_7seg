#ifndef TM1637_h
#define TM1637_h
#include <inttypes.h>
#include <Arduino.h>

class TM1637
{
  public:
    TM1637(uint8_t, uint8_t);
    void init(void);
    void setDigit(uint8_t Digit, uint8_t Data, boolean Point);
    void clearDisplay(void);
};
#endif