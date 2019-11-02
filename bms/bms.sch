EESchema Schematic File Version 4
LIBS:bms-cache
EELAYER 26 0
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
L formula:ATMEGA16M1 U?
U 1 1 5D97ADEC
P 9450 2850
F 0 "U?" H 9450 4817 50  0000 C CNN
F 1 "ATMEGA16M1" H 9450 4726 50  0000 C CNN
F 2 "footprints:TQFP-32_7x7mm_Pitch0.8mm" H 9450 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8209-8-bit%20AVR%20ATmega16M1-32M1-64M1_Datasheet.pdf" H 8500 4680 50  0001 C CNN
F 4 "DK" H 9450 2850 60  0001 C CNN "MFN"
F 5 "ATMEGA16M1-AU-ND" H 9450 2850 60  0001 C CNN "MPN"
F 6 "https://www.digikey.com/product-detail/en/atmel/ATMEGA16M1-AU/ATMEGA16M1-AU-ND/2271208" H 8900 5080 60  0001 C CNN "PurchasingLink"
	1    9450 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Shockley D?
U 1 1 5D97B0D3
P 2750 1000
F 0 "D?" H 2750 784 50  0000 C CNN
F 1 "D_Shockley" H 2750 875 50  0000 C CNN
F 2 "" H 2750 1000 50  0001 C CNN
F 3 "~" H 2750 1000 50  0001 C CNN
	1    2750 1000
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Shockley D?
U 1 1 5D97B251
P 4450 1000
F 0 "D?" H 4450 784 50  0000 C CNN
F 1 "D_Shockley" H 4450 875 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "~" H 4450 1000 50  0001 C CNN
	1    4450 1000
	-1   0    0    1   
$EndComp
$Comp
L Power_Management:LM5060 U?
U 1 1 5D97B396
P 4800 4850
F 0 "U?" H 4800 4264 50  0000 C CNN
F 1 "LM5060" H 4800 4173 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5000 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm5060.pdf" H 4800 5300 50  0001 C CNN
	1    4800 4850
	1    0    0    -1  
$EndComp
Text Notes 4000 4200 0    50   ~ 0
REVERSE PROTECTION
Wire Notes Line
	3900 4050 3900 5650
Wire Notes Line
	3900 5650 5550 5650
Wire Notes Line
	5550 5650 5550 4050
Wire Notes Line
	3900 4050 5550 4050
Wire Wire Line
	2100 1000 2600 1000
Wire Wire Line
	4600 1000 5000 1000
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5DA0DF98
P 1300 1450
F 0 "J?" H 1327 1426 50  0000 L CNN
F 1 "Conn_01x02_Female" H 1327 1335 50  0000 L CNN
F 2 "" H 1300 1450 50  0001 C CNN
F 3 "~" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
Text Label 1100 1450 2    50   ~ 0
12V
Text Label 1100 1550 2    50   ~ 0
GND
Text Label 2100 900  0    50   ~ 0
12V
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5DA0E46E
P 8950 4950
F 0 "J?" H 8977 4976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8977 4885 50  0000 L CNN
F 2 "" H 8950 4950 50  0001 C CNN
F 3 "~" H 8950 4950 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5DA0E572
P 10000 4950
F 0 "J?" H 10027 4976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 10027 4885 50  0000 L CNN
F 2 "" H 10000 4950 50  0001 C CNN
F 3 "~" H 10000 4950 50  0001 C CNN
	1    10000 4950
	1    0    0    -1  
$EndComp
Text Label 8750 4850 2    50   ~ 0
BT1
Text Label 8750 4950 2    50   ~ 0
BT2
Text Label 8750 5050 2    50   ~ 0
BT3
Text Label 9800 4850 2    50   ~ 0
BT4
Text Label 9800 4950 2    50   ~ 0
BT5
Text Label 9800 5050 2    50   ~ 0
BT6
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 5DA0EE3E
P 1800 900
F 0 "J?" H 1855 1217 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1855 1126 50  0000 C CNN
F 2 "" H 1850 860 50  0001 C CNN
F 3 "~" H 1850 860 50  0001 C CNN
	1    1800 900 
	1    0    0    -1  
$EndComp
Text Label 2100 800  0    50   ~ 0
Switch
Text Label 10550 2050 0    50   ~ 0
Switch
Wire Wire Line
	2900 1000 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	3500 1000 4300 1000
Text Label 3500 1350 2    50   ~ 0
BT1
Text Label 3500 1550 2    50   ~ 0
BT2
Text Label 3500 1750 2    50   ~ 0
BT3
Wire Wire Line
	3500 1000 3500 1400
Wire Wire Line
	5000 1000 5000 1550
Text Label 5000 1350 2    50   ~ 0
BT4
Text Label 5000 1450 2    50   ~ 0
BT5
Text Label 5000 1550 2    50   ~ 0
BT6
Text Label 2000 3150 2    50   ~ 0
GND
$Comp
L Device:Thermistor_NTC_US TH?
U 1 1 5DAE42F9
P 3000 1850
F 0 "TH?" H 2700 1800 50  0000 L CNN
F 1 "Thermistor_NTC_US" H 2100 1900 50  0000 L CNN
F 2 "" H 3000 1900 50  0001 C CNN
F 3 "~" H 3000 1900 50  0001 C CNN
	1    3000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DAE50A0
P 3000 3000
F 0 "R?" H 3070 3046 50  0000 L CNN
F 1 "R" H 3070 2955 50  0000 L CNN
F 2 "" V 2930 3000 50  0001 C CNN
F 3 "~" H 3000 3000 50  0001 C CNN
	1    3000 3000
	1    0    0    -1  
$EndComp
Text Label 3000 2550 0    50   ~ 0
TH1
Wire Wire Line
	3000 1400 3500 1400
Connection ~ 3500 1400
Wire Wire Line
	3500 1400 3500 1550
$Comp
L Device:Thermistor_NTC_US TH?
U 1 1 5DAE5AEA
P 3200 2100
F 0 "TH?" H 2900 2050 50  0000 L CNN
F 1 "Thermistor_NTC_US" H 2300 2150 50  0000 L CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "~" H 3200 2150 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
Text Label 3200 2650 0    50   ~ 0
TH2
$Comp
L Device:Thermistor_NTC_US TH?
U 1 1 5DAE5C5A
P 3400 2350
F 0 "TH?" H 3100 2300 50  0000 L CNN
F 1 "Thermistor_NTC_US" H 2500 2400 50  0000 L CNN
F 2 "" H 3400 2400 50  0001 C CNN
F 3 "~" H 3400 2400 50  0001 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
Text Label 3400 2750 0    50   ~ 0
TH3
Wire Wire Line
	3200 1550 3500 1550
Connection ~ 3500 1550
Wire Wire Line
	3500 1550 3500 1800
Connection ~ 3500 3150
Wire Wire Line
	3500 3150 5050 3150
Wire Wire Line
	3400 1800 3500 1800
Connection ~ 3500 1800
Wire Wire Line
	3500 1800 3500 3150
Text Label 10550 2250 0    50   ~ 0
SD
Connection ~ 5000 1000
Wire Wire Line
	5000 1000 5650 1000
Wire Wire Line
	5650 1000 5650 1250
Connection ~ 5650 1000
Wire Wire Line
	5650 1000 7250 1000
Text Label 5650 1250 2    50   ~ 0
Ibat
Wire Wire Line
	2000 3150 3000 3150
Connection ~ 3000 3150
$Comp
L Device:R R?
U 1 1 5DAE5C61
P 3400 3000
F 0 "R?" H 3470 3046 50  0000 L CNN
F 1 "R" H 3470 2955 50  0000 L CNN
F 2 "" V 3330 3000 50  0001 C CNN
F 3 "~" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DAE5AF1
P 3200 3000
F 0 "R?" H 3270 3046 50  0000 L CNN
F 1 "R" H 3270 2955 50  0000 L CNN
F 2 "" V 3130 3000 50  0001 C CNN
F 3 "~" H 3200 3000 50  0001 C CNN
	1    3200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3150 3200 3150
Connection ~ 3400 3150
Wire Wire Line
	3400 3150 3500 3150
Connection ~ 3200 3150
Wire Wire Line
	3200 3150 3400 3150
Wire Wire Line
	3000 1400 3000 1700
Wire Wire Line
	3200 1550 3200 1950
Wire Wire Line
	3400 1800 3400 2200
Wire Wire Line
	3200 2250 3200 2850
Wire Wire Line
	3400 2500 3400 2850
Wire Wire Line
	3000 2000 3000 2850
$Comp
L Device:R R?
U 1 1 5DB7AE6F
P 7400 1000
F 0 "R?" V 7193 1000 50  0000 C CNN
F 1 "R" V 7284 1000 50  0000 C CNN
F 2 "" V 7330 1000 50  0001 C CNN
F 3 "~" H 7400 1000 50  0001 C CNN
	1    7400 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5650 3700 5650
Wire Wire Line
	3700 5650 3700 5900
Wire Wire Line
	3200 5650 3050 5650
Wire Wire Line
	3050 5650 3050 5900
Wire Wire Line
	2750 5900 3050 5900
Connection ~ 3050 5900
Wire Wire Line
	3050 5900 3700 5900
Connection ~ 3700 5900
Wire Wire Line
	3700 5900 4000 5900
$Comp
L Device:CP C?
U 1 1 5DBDC541
P 3350 5650
F 0 "C?" V 3605 5650 50  0000 C CNN
F 1 "CP" V 3514 5650 50  0000 C CNN
F 2 "" H 3388 5500 50  0001 C CNN
F 3 "~" H 3350 5650 50  0001 C CNN
	1    3350 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 5550 2250 5600
Wire Wire Line
	2250 5600 2000 5600
Wire Wire Line
	2250 5250 2250 5100
Wire Wire Line
	2250 5100 2000 5100
$Comp
L Device:CP C?
U 1 1 5DBDCD8D
P 2250 5400
F 0 "C?" H 2132 5354 50  0000 R CNN
F 1 "CP" H 2132 5445 50  0000 R CNN
F 2 "" H 2288 5250 50  0001 C CNN
F 3 "~" H 2250 5400 50  0001 C CNN
	1    2250 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 5350 2000 5350
Text Label 1450 5100 2    50   ~ 0
BT1
Wire Wire Line
	2000 5250 2000 5350
Connection ~ 2000 5350
Wire Wire Line
	2000 5350 2000 5450
Text Label 1450 5650 2    50   ~ 0
BT2
Wire Wire Line
	1450 5900 2000 5900
Connection ~ 1450 5350
Wire Wire Line
	2000 5700 2000 5900
Text Label 1450 6200 2    50   ~ 0
BT3
Connection ~ 1450 5900
Wire Wire Line
	1450 4850 1450 5350
Wire Wire Line
	1450 5900 950  5900
Wire Wire Line
	1450 5350 950  5350
Wire Wire Line
	1450 6450 950  6450
Wire Wire Line
	950  6450 950  6350
Wire Wire Line
	950  6100 950  5900
Connection ~ 950  5900
Wire Wire Line
	950  5900 950  5750
Connection ~ 950  5350
Wire Wire Line
	950  4850 1450 4850
Wire Wire Line
	1450 5900 1450 6450
Wire Wire Line
	950  5350 950  4850
Wire Wire Line
	1450 5350 1450 5900
Wire Wire Line
	950  5350 950  5600
Connection ~ 1450 4850
Wire Wire Line
	1450 4850 2000 4850
Wire Wire Line
	2000 4850 2000 4950
$EndSCHEMATC