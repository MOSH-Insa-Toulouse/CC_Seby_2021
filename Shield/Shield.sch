EESchema Schematic File Version 4
LIBS:Shield-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Shield UNO"
Date "lun. 30 mars 2015"
Rev ""
Comp "CC & Seby"
Comment1 ""
Comment2 "INSA Toulouse"
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L CC_&_Seby:LTC1050 LTC1
U 1 1 60422421
P 5100 2500
F 0 "LTC1" H 5100 3165 50  0000 C CNN
F 1 "LTC1050" H 5100 3074 50  0000 C CNN
F 2 "CC_&_Seby:LTC1050" H 4965 2705 50  0001 C CNN
F 3 "" H 4965 2705 50  0001 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60422BB6
P 4350 2700
F 0 "#PWR0101" H 4350 2450 50  0001 C CNN
F 1 "GND" H 4355 2527 50  0000 C CNN
F 2 "" H 4350 2700 50  0001 C CNN
F 3 "" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2700 4500 2700
$Comp
L power:+5V #PWR0102
U 1 1 60423EB1
P 2400 1650
F 0 "#PWR0102" H 2400 1500 50  0001 C CNN
F 1 "+5V" H 2415 1823 50  0000 C CNN
F 2 "" H 2400 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60424DD8
P 2750 2400
F 0 "R5" V 2543 2400 50  0000 C CNN
F 1 "10k" V 2634 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2680 2400 50  0001 C CNN
F 3 "~" H 2750 2400 50  0001 C CNN
	1    2750 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 60428E49
P 3500 2550
F 0 "R1" H 3570 2596 50  0000 L CNN
F 1 "100k" H 3570 2505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 2550 50  0001 C CNN
F 3 "~" H 3500 2550 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6042978C
P 3150 2550
F 0 "C1" H 3265 2596 50  0000 L CNN
F 1 "100n" H 3265 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3188 2400 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60429FE2
P 3350 2800
F 0 "#PWR0103" H 3350 2550 50  0001 C CNN
F 1 "GND" H 3355 2627 50  0000 C CNN
F 2 "" H 3350 2800 50  0001 C CNN
F 3 "" H 3350 2800 50  0001 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2400 2600 2400
Wire Wire Line
	2900 2400 3150 2400
Wire Wire Line
	3150 2400 3500 2400
Connection ~ 3150 2400
Wire Wire Line
	3150 2700 3150 2800
Wire Wire Line
	3150 2800 3350 2800
Wire Wire Line
	3500 2700 3500 2800
Wire Wire Line
	3500 2800 3350 2800
Connection ~ 3350 2800
Wire Wire Line
	3500 2400 3700 2400
Connection ~ 3500 2400
$Comp
L Device:R R3
U 1 1 60430579
P 6150 2700
F 0 "R3" H 6220 2746 50  0000 L CNN
F 1 "100k" H 6220 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6080 2700 50  0001 C CNN
F 3 "~" H 6150 2700 50  0001 C CNN
	1    6150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6043100A
P 6950 2550
F 0 "R6" V 6743 2550 50  0000 C CNN
F 1 "1k" V 6834 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6880 2550 50  0001 C CNN
F 3 "~" H 6950 2550 50  0001 C CNN
	1    6950 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 6043193C
P 6500 2700
F 0 "C4" H 6615 2746 50  0000 L CNN
F 1 "1u" H 6615 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W6.0mm_P5.00mm" H 6538 2550 50  0001 C CNN
F 3 "~" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60431F74
P 7350 2700
F 0 "C2" H 7465 2746 50  0000 L CNN
F 1 "100n" H 7465 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 7388 2550 50  0001 C CNN
F 3 "~" H 7350 2700 50  0001 C CNN
	1    7350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2550 6150 2550
Wire Wire Line
	6150 2550 6500 2550
Connection ~ 6150 2550
Wire Wire Line
	6500 2550 6800 2550
Connection ~ 6500 2550
Wire Wire Line
	7100 2550 7350 2550
$Comp
L Device:R R2
U 1 1 60437170
P 6950 2950
F 0 "R2" V 6743 2950 50  0000 C CNN
F 1 "1k" V 6834 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6880 2950 50  0001 C CNN
F 3 "~" H 6950 2950 50  0001 C CNN
	1    6950 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2850 6150 2950
Wire Wire Line
	6150 2950 6500 2950
Wire Wire Line
	6500 2850 6500 2950
Connection ~ 6500 2950
Wire Wire Line
	6500 2950 6800 2950
Wire Wire Line
	6500 2950 6500 3100
Wire Wire Line
	7100 2950 7350 2950
Wire Wire Line
	7350 2950 7350 2850
$Comp
L power:GND #PWR0104
U 1 1 6043CDFB
P 7350 3100
F 0 "#PWR0104" H 7350 2850 50  0001 C CNN
F 1 "GND" H 7355 2927 50  0000 C CNN
F 2 "" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3100 7350 2950
Connection ~ 7350 2950
Wire Wire Line
	7350 2550 7650 2550
Connection ~ 7350 2550
$Comp
L power:+5V #PWR0105
U 1 1 604407F5
P 6850 1350
F 0 "#PWR0105" H 6850 1200 50  0001 C CNN
F 1 "+5V" H 6865 1523 50  0000 C CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "" H 6850 1350 50  0001 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60440B4D
P 6850 1650
F 0 "C3" H 6965 1696 50  0000 L CNN
F 1 "100n" H 6965 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 6888 1500 50  0001 C CNN
F 3 "~" H 6850 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60443FB1
P 6850 1950
F 0 "#PWR0106" H 6850 1700 50  0001 C CNN
F 1 "GND" H 6855 1777 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1350 6850 1400
Wire Wire Line
	6850 1800 6850 1950
Wire Wire Line
	6850 1400 6400 1400
Wire Wire Line
	6400 1400 6400 2400
Wire Wire Line
	6400 2400 5700 2400
Connection ~ 6850 1400
Wire Wire Line
	6850 1400 6850 1500
Text GLabel 3700 2400 2    50   Input ~ 0
IN+
Text GLabel 4500 2550 0    50   Input ~ 0
IN+
Text GLabel 4500 2400 0    50   Input ~ 0
IN-
Text GLabel 6500 3100 3    50   Input ~ 0
IN-
Text GLabel 7650 2550 2    50   Input ~ 0
ADC
Text GLabel 8900 2500 0    50   Input ~ 0
ADC
$Comp
L CC_&_Seby:Bluetooth B1
U 1 1 60450FE8
P 3250 4750
F 0 "B1" H 3528 4796 50  0000 L CNN
F 1 "Bluetooth" H 3528 4705 50  0000 L CNN
F 2 "CC_&_Seby:Bluetooth" H 3000 4450 50  0001 C CNN
F 3 "" H 3000 4450 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
$Comp
L CC_&_Seby:OLED O1
U 1 1 604518A2
P 5400 4550
F 0 "O1" H 5378 4401 50  0000 L CNN
F 1 "OLED" H 5378 4310 50  0000 L CNN
F 2 "CC_&_Seby:OLED" H 5000 4100 50  0001 C CNN
F 3 "" H 5000 4100 50  0001 C CNN
	1    5400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 6045221D
P 2600 4600
F 0 "#PWR0107" H 2600 4450 50  0001 C CNN
F 1 "+5V" H 2615 4773 50  0000 C CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "" H 2600 4600 50  0001 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 604526B9
P 4500 4450
F 0 "#PWR0108" H 4500 4300 50  0001 C CNN
F 1 "+5V" H 4515 4623 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 604532AC
P 2500 4700
F 0 "#PWR0109" H 2500 4450 50  0001 C CNN
F 1 "GND" H 2505 4527 50  0000 C CNN
F 2 "" H 2500 4700 50  0001 C CNN
F 3 "" H 2500 4700 50  0001 C CNN
	1    2500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60453AF6
P 4400 4600
F 0 "#PWR0110" H 4400 4350 50  0001 C CNN
F 1 "GND" H 4405 4427 50  0000 C CNN
F 2 "" H 4400 4600 50  0001 C CNN
F 3 "" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
Text GLabel 2850 4800 0    50   Input ~ 0
Rx
Text GLabel 2850 4900 0    50   Input ~ 0
Tx
Text GLabel 4850 4800 0    50   Input ~ 0
SCK
Text GLabel 4850 4900 0    50   Input ~ 0
SDA
Wire Wire Line
	2600 4600 2850 4600
Wire Wire Line
	2500 4700 2850 4700
Wire Wire Line
	4400 4600 4850 4600
Wire Wire Line
	4500 4450 4500 4700
Wire Wire Line
	4500 4700 4850 4700
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Wire Wire Line
	10200 1900 11050 1900
Text GLabel 11050 1900 2    50   Input ~ 0
Rx
Wire Wire Line
	10300 1500 10300 3150
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Wire Wire Line
	10200 1800 11150 1800
Text GLabel 11150 1800 2    50   Input ~ 0
Tx
Text GLabel 8900 2900 0    50   Input ~ 0
SDA
Text GLabel 8900 3000 0    50   Input ~ 0
SCK
$Comp
L power:+5V #PWR0111
U 1 1 6046F128
P 950 1450
F 0 "#PWR0111" H 950 1300 50  0001 C CNN
F 1 "+5V" H 965 1623 50  0000 C CNN
F 2 "" H 950 1450 50  0001 C CNN
F 3 "" H 950 1450 50  0001 C CNN
	1    950  1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6046F598
P 1350 1850
F 0 "#PWR0112" H 1350 1600 50  0001 C CNN
F 1 "GND" H 1355 1677 50  0000 C CNN
F 2 "" H 1350 1850 50  0001 C CNN
F 3 "" H 1350 1850 50  0001 C CNN
	1    1350 1850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6046FFBA
P 1350 1450
F 0 "#FLG0101" H 1350 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1623 50  0000 C CNN
F 2 "" H 1350 1450 50  0001 C CNN
F 3 "~" H 1350 1450 50  0001 C CNN
	1    1350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60470B81
P 950 1850
F 0 "#FLG0102" H 950 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 950 2023 50  0000 C CNN
F 2 "" H 950 1850 50  0001 C CNN
F 3 "~" H 950 1850 50  0001 C CNN
	1    950  1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  1850 950  1450
Wire Wire Line
	1350 1450 1350 1850
$Comp
L CC_&_Seby:Capteur C0
U 1 1 60476279
P 2100 1800
F 0 "C0" H 2578 1596 50  0000 L CNN
F 1 "Capteur" H 2578 1505 50  0000 L CNN
F 2 "CC_&_Seby:Capteur" V 2200 1550 50  0001 C CNN
F 3 "" V 2200 1550 50  0001 C CNN
	1    2100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1750 2400 1650
Wire Wire Line
	2400 2350 2400 2400
NoConn ~ 9150 1450
NoConn ~ 8950 1450
NoConn ~ 8650 1800
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 3000
NoConn ~ 10550 2900
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 1300
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 10550 2000
NoConn ~ 10550 2100
$Comp
L CC_&_Seby:Encodeur ROT1
U 1 1 6049E1D4
P 7100 4700
F 0 "ROT1" H 7278 4751 50  0000 L CNN
F 1 "Encodeur" H 7278 4660 50  0000 L CNN
F 2 "CC_&_Seby:Encodeur" H 7200 4400 50  0001 C CNN
F 3 "" H 7200 4400 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
Text GLabel 6800 4500 0    50   Input ~ 0
CLK
Text GLabel 6800 4600 0    50   Input ~ 0
DATA
Text GLabel 6800 4700 0    50   Input ~ 0
SWITCH
$Comp
L power:GND #PWR0113
U 1 1 6049F165
P 6700 4900
F 0 "#PWR0113" H 6700 4650 50  0001 C CNN
F 1 "GND" H 6705 4727 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 6049F584
P 6350 4800
F 0 "#PWR0114" H 6350 4650 50  0001 C CNN
F 1 "+5V" H 6365 4973 50  0000 C CNN
F 2 "" H 6350 4800 50  0001 C CNN
F 3 "" H 6350 4800 50  0001 C CNN
	1    6350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4800 6800 4800
Wire Wire Line
	6700 4900 6800 4900
Wire Wire Line
	10200 2600 10900 2600
Wire Wire Line
	10200 2700 10900 2700
Wire Wire Line
	10200 2800 10900 2800
Text GLabel 10900 2700 2    50   Input ~ 0
DATA
Text GLabel 10900 2800 2    50   Input ~ 0
CLK
Text GLabel 10900 2600 2    50   Input ~ 0
SWITCH
NoConn ~ 9350 1450
NoConn ~ 10550 1200
Wire Wire Line
	10200 1200 10550 1200
Wire Notes Line
	2000 1000 8000 1000
Wire Notes Line
	8000 1000 8000 3550
Wire Notes Line
	8000 3550 2000 3550
Wire Notes Line
	2000 1000 2000 3550
Text Notes 2200 1200 0    50   ~ 0
Amplification
Wire Notes Line
	2000 4000 8000 4000
Wire Notes Line
	8000 4000 8000 5500
Wire Notes Line
	8000 5500 2000 5500
Wire Notes Line
	2000 5500 2000 4000
Text Notes 2300 4200 0    50   ~ 0
Modules
$EndSCHEMATC
