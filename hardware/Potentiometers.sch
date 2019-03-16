EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:switches
LIBS:I2CHWC-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L POT RV1
U 1 1 5C88CFE5
P 800 1600
F 0 "RV1" V 625 1600 50  0000 C CNN
F 1 "POT" V 700 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 800 1600 50  0001 C CNN
F 3 "" H 800 1600 50  0001 C CNN
	1    800  1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 J21
U 1 1 5C88D032
P 2900 900
F 0 "J21" H 2900 1200 50  0000 C CNN
F 1 "CONN_02X05" H 2900 600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2900 -300 50  0001 C CNN
F 3 "" H 2900 -300 50  0001 C CNN
	1    2900 900 
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 5C88D0B9
P 1300 1600
F 0 "RV2" V 1125 1600 50  0000 C CNN
F 1 "POT" V 1200 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 1300 1600 50  0001 C CNN
F 3 "" H 1300 1600 50  0001 C CNN
	1    1300 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV3
U 1 1 5C88D0EB
P 1800 1600
F 0 "RV3" V 1625 1600 50  0000 C CNN
F 1 "POT" V 1700 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 1800 1600 50  0001 C CNN
F 3 "" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV4
U 1 1 5C88D119
P 2300 1600
F 0 "RV4" V 2125 1600 50  0000 C CNN
F 1 "POT" V 2200 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 2300 1600 50  0001 C CNN
F 3 "" H 2300 1600 50  0001 C CNN
	1    2300 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV5
U 1 1 5C88D401
P 2800 1600
F 0 "RV5" V 2625 1600 50  0000 C CNN
F 1 "POT" V 2700 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV6
U 1 1 5C88D42F
P 3300 1600
F 0 "RV6" V 3125 1600 50  0000 C CNN
F 1 "POT" V 3200 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 3300 1600 50  0001 C CNN
F 3 "" H 3300 1600 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV7
U 1 1 5C88D473
P 3800 1600
F 0 "RV7" V 3625 1600 50  0000 C CNN
F 1 "POT" V 3700 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 3800 1600 50  0001 C CNN
F 3 "" H 3800 1600 50  0001 C CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
$Comp
L POT RV8
U 1 1 5C88D4AF
P 4300 1600
F 0 "RV8" V 4125 1600 50  0000 C CNN
F 1 "POT" V 4200 1600 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Omeg_PC16PU_Vertical" H 4300 1600 50  0001 C CNN
F 3 "" H 4300 1600 50  0001 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1350 4300 1450
Wire Wire Line
	800  1350 4300 1350
Connection ~ 800  1350
Connection ~ 1300 1350
Wire Wire Line
	1800 1350 1800 1450
Connection ~ 1800 1350
Wire Wire Line
	2300 1350 2300 1450
Connection ~ 2300 1350
Wire Wire Line
	2800 1350 2800 1450
Connection ~ 2800 1350
Wire Wire Line
	3300 1350 3300 1450
Connection ~ 3300 1350
Wire Wire Line
	3800 1350 3800 1450
Connection ~ 3800 1350
Wire Wire Line
	4300 1900 4300 1750
Wire Wire Line
	800  1900 4650 1900
Wire Wire Line
	1300 1750 1300 1900
Connection ~ 1300 1900
Wire Wire Line
	1800 1750 1800 1900
Connection ~ 1800 1900
Wire Wire Line
	2300 1750 2300 1900
Connection ~ 2300 1900
Wire Wire Line
	2800 1750 2800 1900
Connection ~ 2800 1900
Wire Wire Line
	3300 1750 3300 1900
Connection ~ 3300 1900
Wire Wire Line
	3800 1750 3800 1900
Connection ~ 3800 1900
Wire Wire Line
	1300 1350 1300 1350
Wire Wire Line
	1300 1350 1300 1450
Wire Wire Line
	1000 1600 950  1600
Wire Wire Line
	1500 1600 1450 1600
Wire Wire Line
	2000 1600 1950 1600
Wire Wire Line
	2500 1600 2450 1600
Wire Wire Line
	3000 1600 2950 1600
Wire Wire Line
	3500 1600 3450 1600
Wire Wire Line
	4000 1600 3950 1600
Wire Wire Line
	4500 1600 4450 1600
Wire Wire Line
	800  1100 800  1450
Wire Wire Line
	800  1900 800  1750
Wire Wire Line
	3150 1100 4650 1100
Wire Wire Line
	4650 1100 4650 1900
Connection ~ 4300 1900
Wire Wire Line
	2650 1100 800  1100
Wire Wire Line
	1000 1600 1000 700 
Wire Wire Line
	1000 700  2650 700 
Wire Wire Line
	1500 1600 1500 800 
Wire Wire Line
	1500 800  2650 800 
Wire Wire Line
	2000 1600 2000 900 
Wire Wire Line
	2000 900  2650 900 
Wire Wire Line
	2500 1600 2500 1000
Wire Wire Line
	2500 1000 2650 1000
Wire Wire Line
	4500 1600 4500 700 
Wire Wire Line
	4500 700  3150 700 
Wire Wire Line
	4000 1600 4000 800 
Wire Wire Line
	4000 800  3150 800 
Wire Wire Line
	3500 1600 3500 900 
Wire Wire Line
	3500 900  3150 900 
Wire Wire Line
	3000 1600 3000 1250
Wire Wire Line
	3000 1250 3300 1250
Wire Wire Line
	3300 1250 3300 1000
Wire Wire Line
	3300 1000 3150 1000
$EndSCHEMATC
