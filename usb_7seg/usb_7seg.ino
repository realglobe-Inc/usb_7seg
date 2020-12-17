void setup() {
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect
  }
}

void loop() {
  Serial.println( "test" );
  delay(1000);
}
