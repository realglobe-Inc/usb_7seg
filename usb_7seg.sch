EESchema Schematic File Version 4
LIBS:usb_7seg-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Seeeduino_XIAO:SeeeduinoXIAO U1
U 1 1 5EFAE698
P 2000 2850
F 0 "U1" H 1975 1911 50  0000 C CNN
F 1 "SeeeduinoXIAO" H 1975 1820 50  0000 C CNN
F 2 "Seeeduino XIAO:Seeeduino XIAO-MOUDLE14P-2.54-21X17.8MM" H 1650 3050 50  0001 C CNN
F 3 "" H 1650 3050 50  0001 C CNN
	1    2000 2850
	1    0    0    -1  
$EndComp
$Comp
L usb_7seg-rescue:7segment_led-kicad_7segment_led U2
U 1 1 5EFAF3F1
P 7600 2100
F 0 "U2" H 7800 2275 50  0000 C CNN
F 1 "7segment_led" H 7800 2184 50  0000 C CNN
F 2 "kicad_7segment_led:kicad_7segment_led_0.56" H 8000 2200 50  0001 C CNN
F 3 "" H 8000 2200 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EFB0EAD
P 1250 950
F 0 "#FLG01" H 1250 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1123 50  0000 C CNN
F 2 "" H 1250 950 50  0001 C CNN
F 3 "~" H 1250 950 50  0001 C CNN
	1    1250 950 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EFB10FC
P 1700 950
F 0 "#FLG02" H 1700 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 1123 50  0000 C CNN
F 2 "" H 1700 950 50  0001 C CNN
F 3 "~" H 1700 950 50  0001 C CNN
	1    1700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5EFB145F
P 1700 1100
F 0 "#PWR03" H 1700 850 50  0001 C CNN
F 1 "GND" H 1705 927 50  0000 C CNN
F 2 "" H 1700 1100 50  0001 C CNN
F 3 "" H 1700 1100 50  0001 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EFBFA17
P 3800 2550
F 0 "C1" V 4052 2550 50  0000 C CNN
F 1 "C" V 3961 2550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3838 2400 50  0001 C CNN
F 3 "~" H 3800 2550 50  0001 C CNN
	1    3800 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5EFC47EE
P 3400 2700
F 0 "#PWR04" H 3400 2450 50  0001 C CNN
F 1 "GND" H 3405 2527 50  0000 C CNN
F 2 "" H 3400 2700 50  0001 C CNN
F 3 "" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EFC9843
P 2900 3700
F 0 "#PWR07" H 2900 3450 50  0001 C CNN
F 1 "GND" H 2905 3527 50  0000 C CNN
F 2 "" H 2900 3700 50  0001 C CNN
F 3 "" H 2900 3700 50  0001 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EFCAC65
P 3100 1800
F 0 "R1" V 2893 1800 50  0000 C CNN
F 1 "R" V 2984 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 1800 50  0001 C CNN
F 3 "~" H 3100 1800 50  0001 C CNN
	1    3100 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3300 1000 3300
Wire Wire Line
	1000 3300 1000 4550
$Comp
L MAX7219CWG:MAX7219CWG IC2
U 1 1 5EFA033C
P 4750 4050
F 0 "IC2" H 5350 4315 50  0000 C CNN
F 1 "MAX7219CWG" H 5350 4224 50  0000 C CNN
F 2 "MAX7219CWG:MAX7219CWG" H 5800 4150 50  0001 L CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 5800 4050 50  0001 L CNN
F 4 "IC DRVR 7 SEGMNT 8 DIGIT 24SOIC" H 5800 3950 50  0001 L CNN "Description"
F 5 "2.65" H 5800 3850 50  0001 L CNN "Height"
F 6 "" H 5800 3750 50  0001 L CNN "RS Part Number"
F 7 "" H 5800 3650 50  0001 L CNN "RS Price/Stock"
F 8 "Maxim Integrated" H 5800 3550 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX7219CWG" H 5800 3450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1550 6750 2650
Wire Wire Line
	8650 2950 8650 2650
Wire Wire Line
	8600 3050 8600 2350
Wire Wire Line
	8550 3150 8550 2250
Wire Wire Line
	8700 1400 8700 2450
Wire Wire Line
	8750 1600 8750 2550
Wire Wire Line
	8800 1750 8800 2150
Wire Wire Line
	6700 2850 6700 2550
Wire Wire Line
	6650 2550 6650 2450
Wire Wire Line
	6600 2450 6600 2150
$Comp
L MAX7219CNG:MAX7219CNG IC1
U 1 1 5EF9E56A
P 4600 2150
F 0 "IC1" H 5350 2415 50  0000 C CNN
F 1 "MAX7219CNG" H 5350 2324 50  0000 C CNN
F 2 "MAX7219CNG:MAX7219CNG" H 5950 2250 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/0311473" H 5950 2150 50  0001 L CNN
F 4 "LED Display Drivers 8-Digit LED Display Driver" H 5950 2050 50  0001 L CNN "Description"
F 5 "4.572" H 5950 1950 50  0001 L CNN "Height"
F 6 "0311473" H 5950 1850 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/0311473" H 5950 1750 50  0001 L CNN "RS Price/Stock"
F 8 "Maxim Integrated" H 5950 1650 50  0001 L CNN "Manufacturer_Name"
F 9 "MAX7219CNG" H 5950 1550 50  0001 L CNN "Manufacturer_Part_Number"
	1    4600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2250 4050 2250
Wire Wire Line
	4600 2350 4100 2350
Wire Wire Line
	4600 2550 4200 2550
Wire Wire Line
	4600 2650 4250 2650
Wire Wire Line
	4600 2750 4300 2750
Wire Wire Line
	4600 2850 4350 2850
Wire Wire Line
	4600 3050 4400 3050
Wire Wire Line
	4600 3150 4450 3150
Wire Wire Line
	6100 2250 6500 2250
Wire Wire Line
	6100 2350 6550 2350
Wire Wire Line
	6100 2450 6600 2450
Wire Wire Line
	6100 2850 6700 2850
Wire Wire Line
	4600 2450 4150 2450
$Comp
L power:GND #PWR08
U 1 1 5EFE75C2
P 4150 3000
F 0 "#PWR08" H 4150 2750 50  0001 C CNN
F 1 "GND" H 4155 2827 50  0000 C CNN
F 2 "" H 4150 3000 50  0001 C CNN
F 3 "" H 4150 3000 50  0001 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2950 4150 2950
Wire Wire Line
	4150 2450 4150 2950
Wire Wire Line
	4050 1750 4050 2250
Wire Wire Line
	4250 1600 4250 2650
Wire Wire Line
	4300 1550 4300 2750
Wire Wire Line
	4300 1550 6750 1550
Wire Wire Line
	4450 1400 4450 3150
Connection ~ 6500 2250
Connection ~ 6550 2350
Connection ~ 6600 2450
Wire Wire Line
	6100 2550 6650 2550
Connection ~ 6650 2550
Connection ~ 6700 2850
Wire Wire Line
	4050 1750 8800 1750
Wire Wire Line
	4250 1600 8750 1600
Wire Wire Line
	4450 1400 8700 1400
Wire Wire Line
	6100 2950 6350 2950
Wire Wire Line
	6100 3050 6400 3050
Wire Wire Line
	6100 3150 6450 3150
$Comp
L power:+5V #PWR01
U 1 1 5F1F0CD5
P 800 950
F 0 "#PWR01" H 800 800 50  0001 C CNN
F 1 "+5V" H 815 1123 50  0000 C CNN
F 2 "" H 800 950 50  0001 C CNN
F 3 "" H 800 950 50  0001 C CNN
	1    800  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 950  1700 1100
Wire Wire Line
	1250 950  1250 1100
Wire Wire Line
	1250 1100 800  1100
Wire Wire Line
	800  1100 800  950 
$Comp
L power:+5V #PWR06
U 1 1 5F226823
P 2850 1750
F 0 "#PWR06" H 2850 1600 50  0001 C CNN
F 1 "+5V" H 2865 1923 50  0000 C CNN
F 2 "" H 2850 1750 50  0001 C CNN
F 3 "" H 2850 1750 50  0001 C CNN
	1    2850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5F2309CA
P 6150 2100
F 0 "#PWR011" H 6150 1950 50  0001 C CNN
F 1 "+5V" H 6165 2273 50  0000 C CNN
F 2 "" H 6150 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2100 6150 2650
Wire Wire Line
	6150 2650 6100 2650
Wire Wire Line
	2850 2400 2800 2400
Wire Wire Line
	2850 1750 2850 1800
Wire Wire Line
	2950 1800 2850 1800
Connection ~ 2850 1800
Wire Wire Line
	2850 1800 2850 1950
Wire Wire Line
	6200 1800 6200 2750
Wire Wire Line
	6200 2750 6100 2750
Wire Wire Line
	2800 2550 2900 2550
Wire Wire Line
	2900 2550 2900 3700
Wire Wire Line
	4600 3250 2950 3250
Wire Wire Line
	2950 3250 2950 3150
Wire Wire Line
	2950 3150 2800 3150
Wire Wire Line
	2800 3300 3000 3300
Wire Wire Line
	3000 3300 3000 3450
Wire Wire Line
	6250 3450 6250 3250
Wire Wire Line
	6250 3250 6100 3250
Wire Wire Line
	3000 3450 6250 3450
Wire Wire Line
	4150 2950 4150 3000
Connection ~ 4150 2950
Wire Wire Line
	4600 2150 3050 2150
Wire Wire Line
	3050 4550 1000 4550
Wire Wire Line
	6500 4150 5950 4150
Wire Wire Line
	5950 4250 6550 4250
Wire Wire Line
	6600 4350 5950 4350
Wire Wire Line
	6650 4450 5950 4450
Wire Wire Line
	6700 4750 5950 4750
Wire Wire Line
	5950 5050 6450 5050
Wire Wire Line
	6450 5050 6450 3150
Connection ~ 6450 3150
Wire Wire Line
	6450 3150 8550 3150
Wire Wire Line
	6400 3050 6400 4950
Wire Wire Line
	6400 4950 5950 4950
Connection ~ 6400 3050
Wire Wire Line
	6400 3050 8600 3050
Wire Wire Line
	5950 4850 6350 4850
Wire Wire Line
	6350 4850 6350 2950
Connection ~ 6350 2950
Wire Wire Line
	6350 2950 8650 2950
Wire Wire Line
	4450 3150 4450 5050
Wire Wire Line
	4450 5050 4750 5050
Connection ~ 4450 3150
Wire Wire Line
	4400 3050 4400 4950
Wire Wire Line
	4400 4950 4750 4950
Wire Wire Line
	4750 4750 4350 4750
Wire Wire Line
	4350 4750 4350 2850
Wire Wire Line
	4300 2750 4300 4650
Wire Wire Line
	4300 4650 4750 4650
Connection ~ 4300 2750
Wire Wire Line
	4250 2650 4250 4550
Wire Wire Line
	4250 4550 4750 4550
Connection ~ 4250 2650
Wire Wire Line
	4200 2550 4200 4450
Wire Wire Line
	4200 4450 4750 4450
Wire Wire Line
	4100 2350 4100 4250
Wire Wire Line
	4100 4250 4750 4250
Wire Wire Line
	4050 2250 4050 4150
Wire Wire Line
	4050 4150 4750 4150
Connection ~ 4050 2250
$Comp
L power:GND #PWR09
U 1 1 5F450764
P 4150 4900
F 0 "#PWR09" H 4150 4650 50  0001 C CNN
F 1 "GND" H 4155 4727 50  0000 C CNN
F 2 "" H 4150 4900 50  0001 C CNN
F 3 "" H 4150 4900 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4350 4150 4350
Wire Wire Line
	4150 4350 4150 4850
Wire Wire Line
	4750 4850 4150 4850
Connection ~ 4150 4850
Wire Wire Line
	4150 4850 4150 4900
Wire Wire Line
	2950 3250 2950 5150
Wire Wire Line
	2950 5150 4750 5150
Connection ~ 2950 3250
Wire Wire Line
	3000 3450 3000 5350
Wire Wire Line
	3000 5350 6250 5350
Wire Wire Line
	6250 5350 6250 5150
Wire Wire Line
	6250 5150 5950 5150
Connection ~ 3000 3450
Wire Wire Line
	4750 4050 3050 4050
Wire Wire Line
	3050 2150 3050 4050
Connection ~ 3050 4050
Wire Wire Line
	3050 4050 3050 4550
$Comp
L power:+5V #PWR010
U 1 1 5F4AC29E
P 6000 3950
F 0 "#PWR010" H 6000 3800 50  0001 C CNN
F 1 "+5V" H 6015 4123 50  0000 C CNN
F 2 "" H 6000 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3950 6000 4550
Wire Wire Line
	6000 4550 5950 4550
Wire Wire Line
	6200 2750 6200 4650
Wire Wire Line
	6200 4650 5950 4650
Connection ~ 6200 2750
NoConn ~ 5950 4050
NoConn ~ 6100 2150
NoConn ~ 2800 2700
NoConn ~ 2800 2850
NoConn ~ 2800 3000
NoConn ~ 1150 3150
NoConn ~ 1150 3000
NoConn ~ 1150 2850
NoConn ~ 1150 2700
NoConn ~ 1150 2550
NoConn ~ 1150 2400
NoConn ~ 2250 1950
NoConn ~ 2100 1950
NoConn ~ 1950 1950
NoConn ~ 1800 1950
$Comp
L Device:R R2
U 1 1 5F611E76
P 3100 1950
F 0 "R2" V 3307 1950 50  0000 C CNN
F 1 "R" V 3216 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 1950 50  0001 C CNN
F 3 "~" H 3100 1950 50  0001 C CNN
	1    3100 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F612656
P 3400 2550
F 0 "C2" H 3515 2596 50  0000 L CNN
F 1 "C" H 3515 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 2400 50  0001 C CNN
F 3 "~" H 3400 2550 50  0001 C CNN
	1    3400 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2700 3800 2700
Wire Wire Line
	2950 1950 2850 1950
Connection ~ 2850 1950
Wire Wire Line
	2850 1950 2850 2050
Wire Wire Line
	3250 1950 3400 1950
NoConn ~ 2100 3700
Wire Wire Line
	3800 2400 3400 2400
Connection ~ 3400 2700
NoConn ~ 1900 3700
Wire Wire Line
	8100 2650 8650 2650
Wire Wire Line
	8100 2550 8750 2550
Wire Wire Line
	8100 2450 8700 2450
Wire Wire Line
	8100 2350 8600 2350
Wire Wire Line
	8100 2250 8550 2250
Wire Wire Line
	8100 2150 8800 2150
Wire Wire Line
	6700 2550 7500 2550
Wire Wire Line
	6750 2650 7500 2650
Wire Wire Line
	6650 2450 7500 2450
Wire Wire Line
	6550 2350 7500 2350
Wire Wire Line
	6500 2250 7500 2250
Wire Wire Line
	6600 2150 7500 2150
Wire Wire Line
	3250 1800 3400 1800
Wire Wire Line
	3400 1950 3400 1800
Connection ~ 3400 1800
Wire Wire Line
	3400 1800 6200 1800
Wire Wire Line
	3400 2400 3400 2050
Wire Wire Line
	3400 2050 2850 2050
Connection ~ 3400 2400
Connection ~ 2850 2050
Wire Wire Line
	2850 2050 2850 2400
Wire Wire Line
	6500 2250 6500 4150
Wire Wire Line
	6550 2350 6550 4250
Wire Wire Line
	6600 2450 6600 4350
Wire Wire Line
	6650 2550 6650 4450
Wire Wire Line
	6700 2850 6700 4750
$EndSCHEMATC