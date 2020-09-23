# digital_clock

macOSの場合

```sh
stty -f /dev/cu.usbmodem14101 raw 9600
./main.sh /dev/cu.usbmodem14101
```

Linuxの場合

```sh
stty -F /dev/ttyACM0 raw 9600
./main.sh /dev/ttyACM0
```
