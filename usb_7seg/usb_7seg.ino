//We always have to include the library
#include "LedControl.h"

typedef unsigned char uchar;

/*
 Now we need a LedControl to work with.
 ***** These pin numbers will probably not work with your hardware *****
 pin 6 is connected to the DataIn 
 pin 7 is connected to the CLK 
 pin 8 is connected to LOAD 
 We have only a single MAX72XX.
 */
LedControl lc=LedControl(6,7,8,1);

/* we always wait a bit between updates of the display */
unsigned long delaytime=250;

#define STRING_MAX 4

void setup() {
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect
  }
  /*
   The MAX72XX is in power-saving mode on startup,
   we have to do a wakeup call
   */
  lc.shutdown(0,false);
  /* Set the brightness to a medium values */
  lc.setIntensity(0,8);
  /* and clear the display */
  lc.clearDisplay(0);
}


void loop() { 
  static char sc_strings[ STRING_MAX + 1 ] = {0};
  char tmp = 0;
  uchar uc_loop_cnt = 0;
  static uchar suc_char_cnt = 0;
  static uchar suc_state = 0;

  switch ( suc_state )
  {
  case 0: // 初期化
    for( uc_loop_cnt = 0; uc_loop_cnt < STRING_MAX; uc_loop_cnt++ ){
      sc_strings[uc_loop_cnt] = 0;
    }
    suc_char_cnt = 0;
    suc_state++;
    break;
  case 1: // 受信する文字は数字のみ可
    if( Serial.available() > 0 ){
      tmp = Serial.read();
      if( character_chack( tmp ) ){
        sc_strings[ suc_char_cnt ] = tmp;
        suc_char_cnt++;
        suc_state++;
      }
      else{
        lc.clearDisplay(0);
        suc_state = 0;
      }
    }
    break;
  case 2: // 受信する文字は数字または改行コードのみ可
    if( Serial.available() > 0 ){
      tmp = Serial.read();
      if( character_chack( tmp ) && ( suc_char_cnt < STRING_MAX ) ){
        sc_strings[ suc_char_cnt ] = tmp;
        suc_char_cnt++;
      }
      else if( '\n' == tmp ){
        suc_state++;
      }
      else{
        lc.clearDisplay(0);
        suc_state = 0;
      }
    }
    break;
  case 3: // 表示
    lc.clearDisplay(0);
    for( uc_loop_cnt = 0; uc_loop_cnt < STRING_MAX; uc_loop_cnt++ ){
      lc.setDigit(0, uc_loop_cnt + STRING_MAX - suc_char_cnt , sc_strings[ uc_loop_cnt ] - 0x30 ,false);
    }
    suc_state = 0;
    break;
  default:
    break;
  }

}

char character_chack( char c ){
  char ret = 0;

  if( ( c >= '0' ) && ( c <= '9' ) ){
    ret = 1;
  }

  return ret;
}
