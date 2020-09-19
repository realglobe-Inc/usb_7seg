//We always have to include the library
#include "LedControl.h"

#define STATUS_OK 0

typedef unsigned char uchar;
typedef unsigned int uint;

/*
 Now we need a LedControl to work with.
 ***** These pin numbers will probably not work with your hardware *****
 pin 6 is connected to the DataIn 
 pin 7 is connected to the CLK 
 pin 8 is connected to LOAD 
 We have only a single MAX72XX.
 */
LedControl lc=LedControl(6,7,8,1);

#define INTERVAL_UPDATE 1000
#define INTERVAL_LOOP 10
#define STRING_MAX 4

static char sc_strings_tmp[ STRING_MAX + 1 ] = {0};
static char sc_strings[ STRING_MAX + 1 ] = {0};

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
  char tmp = 0;
  uchar uc_loop_cnt = 0;
  static uchar suc_char_cnt = 0;
  static uchar suc_state = 0;
  static uchar suc_correct_flg = 0;
  static uint sui_interval_cnt = 0;

  switch ( suc_state )
  {
  case 0: // 初期化
/*
    for( uc_loop_cnt = 0; uc_loop_cnt < STRING_MAX; uc_loop_cnt++ ){
      sc_strings_tmp[uc_loop_cnt] = 0;
    }
*/
    buff_clr( sc_strings_tmp , STRING_MAX + 1 );
    suc_char_cnt = 0;
    suc_state++;
    break;
  case 1: // 受信する文字は数字のみ可
    if( Serial.available() > 0 ){
      tmp = Serial.read();
      if( character_chack( tmp ) ){
        sc_strings_tmp[ suc_char_cnt ] = tmp;
        suc_char_cnt++;
        suc_state++;
      }
      else{
        lc.clearDisplay(0);
        suc_state = 0;
        suc_correct_flg = 0;
      }
    }
    break;
  case 2: // 受信する文字は数字または改行コードのみ可
    if( Serial.available() > 0 ){
      tmp = Serial.read();
      if( character_chack( tmp ) && ( suc_char_cnt < STRING_MAX ) ){
        sc_strings_tmp[ suc_char_cnt ] = tmp;
        suc_char_cnt++;
      }
      else if( '\n' == tmp ){
        suc_state++;
        suc_correct_flg = 1;
        buff_clr( sc_strings , STRING_MAX + 1 );
        buff_cp( sc_strings_tmp, sc_strings, suc_char_cnt + 1 );
      }
      else{
        lc.clearDisplay(0);
        suc_state = 0;
        suc_correct_flg = 0;
      }
    }
    break;
  case 3: // 表示
    lc.clearDisplay(0);
    for( uc_loop_cnt = 0; uc_loop_cnt < STRING_MAX; uc_loop_cnt++ ){
      lc.setDigit(0, uc_loop_cnt + STRING_MAX - suc_char_cnt , sc_strings_tmp[ uc_loop_cnt ] - 0x30 ,false);
    }
    suc_state = 0;
    break;
  default:
    break;
  }

  sui_interval_cnt += INTERVAL_LOOP;
  delay( INTERVAL_LOOP );
  if( INTERVAL_UPDATE <= sui_interval_cnt ){
    sui_interval_cnt = 0;
    Serial.print( "7seg=" );
    if( suc_correct_flg ){
      Serial.print( sc_strings );
    }
    else{
      buff_clr( sc_strings , STRING_MAX + 1 );
    }
  Serial.print(";status=");
  Serial.println(STATUS_OK);
  }

}

char character_chack( char c ){
  char ret = 0;

  if( ( c >= '0' ) && ( c <= '9' ) ){
    ret = 1;
  }

  return ret;
}

void buff_clr( char * buff, uchar cnt ){
  uchar i = 0;

  for( i = 0; i < cnt; i++){
    buff[i] = 0;
  }
}

void buff_cp( char * from, char * to, uchar cnt ){
  uchar i = 0;

  for( i = 0; i < cnt; i++){
    to[i] = from[i];
  }
}
