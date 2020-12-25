#include "TM1637.h"

#define SEG_OFF   0x10
#define SEG_POINT 0x80
#define SEG_BRIGHTNESS 3 // min:0,max:7

uint8_t Clkpin;
uint8_t Datapin;
static int8_t SegTbl[] = {
  0x3F, // 0
  0x06, // 1
  0x5B, // 2
  0x4F, // 3
  0x66, // 4
  0x6D, // 5
  0x7D, // 6
  0x07, // 7
  0x7F, // 8
  0x6F, // 9
  0x77, // A
  0x7C, // b
  0x39, // C
  0x5E, // d
  0x79, // E
  0x71, // F
  0x00  // " "
};

void byteWrite(int8_t);
void bitStart(void);
void bitStop(void);
void bitDelay(void);

TM1637::TM1637(uint8_t Clk, uint8_t Data)
{
  Clkpin = Clk;
  Datapin = Data;
  pinMode(Clkpin, OUTPUT);
  pinMode(Datapin, OUTPUT);
}

void TM1637::init(void)
{
  clearDisplay();
}

void TM1637::setDigit(uint8_t Digit, uint8_t Data, boolean Point)
{
  int8_t SegData = SegTbl[Data];
  if(Point)
  {
    SegData |= SEG_POINT;
  }
  bitStart();
  byteWrite(0x44); // Data command setting
  bitStop();
  bitStart();
  byteWrite(Digit|0xC0); // Address command setting
  byteWrite(SegData); // Segment data setting
  bitStop();
  bitStart();
  byteWrite(0x88|SEG_BRIGHTNESS); // Display control setting
  bitStop();
}

void TM1637::clearDisplay(void)
{
  setDigit(0x00, SEG_OFF, false);
  setDigit(0x01, SEG_OFF, false);
  setDigit(0x02, SEG_OFF, false);
  setDigit(0x03, SEG_OFF, false);
}

void byteWrite(int8_t Data)
{
  for(uint8_t i=0; i<8; i++)
  {
    digitalWrite(Clkpin, LOW);
    if(Data&0x01)digitalWrite(Datapin, HIGH);
    else digitalWrite(Datapin, LOW);
    Data >>= 1;
    digitalWrite(Clkpin, HIGH);

  }
  digitalWrite(Clkpin, LOW);
  digitalWrite(Datapin, HIGH);
  digitalWrite(Clkpin, HIGH);
  pinMode(Datapin, INPUT);

  bitDelay();
  if (digitalRead(Datapin) == 0) // ACK
  {
    pinMode(Datapin, OUTPUT);
    digitalWrite(Datapin, LOW);
  }
  bitDelay();
  pinMode(Datapin, OUTPUT);
  bitDelay();
}

void bitStart(void)
{
  digitalWrite(Clkpin, HIGH);
  digitalWrite(Datapin, HIGH);
  digitalWrite(Datapin, LOW);
  digitalWrite(Clkpin, LOW);
}

void bitStop(void)
{
  digitalWrite(Clkpin, LOW);
  digitalWrite(Datapin, LOW);
  digitalWrite(Clkpin, HIGH);
  digitalWrite(Datapin, HIGH);
}

void bitDelay(void)
{
	delayMicroseconds(50);
}
