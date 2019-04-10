EESchema Schematic File Version 4
LIBS:Encoder-cache
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
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C9E48B9
P 2200 1500
F 0 "SW1" H 2200 1867 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2200 1776 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2050 1660 50  0001 C CNN
F 3 "~" H 2200 1760 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1600 1800 1600
Wire Wire Line
	1800 1600 1800 1750
Wire Wire Line
	1800 1750 2300 1750
Wire Wire Line
	2300 1750 2300 1950
Wire Wire Line
	1900 1500 1750 1500
Wire Wire Line
	1750 1500 1750 1800
Wire Wire Line
	2200 1800 2200 1950
Wire Wire Line
	1750 1800 2200 1800
Wire Wire Line
	1900 1400 1700 1400
Wire Wire Line
	1700 1400 1700 1850
Wire Wire Line
	1700 1850 2100 1850
Wire Wire Line
	2100 1850 2100 1950
Wire Wire Line
	2400 1950 2400 1900
Wire Wire Line
	2400 1900 2650 1900
Wire Wire Line
	2650 1900 2650 1400
Wire Wire Line
	2650 1400 2500 1400
Wire Wire Line
	2500 1600 2550 1600
Wire Wire Line
	2550 1600 2550 1800
Wire Wire Line
	2550 1800 2200 1800
Connection ~ 2200 1800
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5C9F3541
P 2200 2150
F 0 "J1" V 2354 1862 50  0000 R CNN
F 1 "Conn_01x05_Male" V 2263 1862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 2200 2150 50  0001 C CNN
F 3 "~" H 2200 2150 50  0001 C CNN
	1    2200 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C9F4B4D
P 1750 2000
F 0 "#PWR0101" H 1750 1750 50  0001 C CNN
F 1 "GND" H 1755 1827 50  0000 C CNN
F 2 "" H 1750 2000 50  0001 C CNN
F 3 "" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2000 1750 1900
Wire Wire Line
	1750 1900 2000 1900
Wire Wire Line
	2000 1900 2000 1950
$EndSCHEMATC
