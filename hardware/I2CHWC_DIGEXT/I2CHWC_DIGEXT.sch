EESchema Schematic File Version 4
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
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5DDB30D4
P 1950 1850
F 0 "J1" H 2000 2967 50  0000 C CNN
F 1 "Encoders 11-20" H 2000 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 1950 1850 50  0001 C CNN
F 3 "~" H 1950 1850 50  0001 C CNN
	1    1950 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 5DDB6DED
P 2550 950
F 0 "D21" H 2400 900 50  0000 C CNN
F 1 "1N4148" H 2550 825 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 950 50  0001 C CNN
	1    2550 950 
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5DDB77DA
P 1450 950
F 0 "D1" H 1300 1000 50  0000 C CNN
F 1 "1N4148" H 1450 1075 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 950 50  0001 C CNN
	1    1450 950 
	1    0    0    -1  
$EndComp
Text GLabel 950  950  0    50   Output ~ 0
SwitchIn2
Text GLabel 950  1050 0    50   Output ~ 0
EncIn2a
Text GLabel 2950 950  2    50   Output ~ 0
EncIn2b
$Comp
L Diode:1N4148 D2
U 1 1 5DDB8DF9
P 1450 1050
F 0 "D2" H 1300 1100 50  0000 C CNN
F 1 "1N4148" H 1450 1175 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1050 50  0001 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
Text GLabel 2950 1050 2    50   Input ~ 0
MatrixOut1
Wire Wire Line
	950  950  1150 950 
Wire Wire Line
	1300 1050 1050 1050
Wire Wire Line
	1750 950  1600 950 
Wire Wire Line
	2250 950  2400 950 
Wire Wire Line
	2950 1050 2250 1050
Wire Wire Line
	1600 1050 1750 1050
$Comp
L Diode:1N4148 D3
U 1 1 5DDC0B16
P 1450 1150
F 0 "D3" H 1300 1200 50  0000 C CNN
F 1 "1N4148" H 1450 1275 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1150 50  0001 C CNN
	1    1450 1150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5DDC0B1E
P 1450 1250
F 0 "D4" H 1300 1300 50  0000 C CNN
F 1 "1N4148" H 1450 1375 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1250 50  0001 C CNN
	1    1450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1150 1300 1150
Wire Wire Line
	1300 1250 1050 1250
Wire Wire Line
	1750 1150 1600 1150
Wire Wire Line
	1600 1250 1750 1250
$Comp
L Diode:1N4148 D5
U 1 1 5DDC3E8A
P 1450 1350
F 0 "D5" H 1300 1400 50  0000 C CNN
F 1 "1N4148" H 1450 1475 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 5DDC3E92
P 1450 1450
F 0 "D6" H 1300 1500 50  0000 C CNN
F 1 "1N4148" H 1450 1575 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1450 50  0001 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1350 1300 1350
Wire Wire Line
	1300 1450 1050 1450
Wire Wire Line
	1750 1350 1600 1350
Wire Wire Line
	1600 1450 1750 1450
$Comp
L Diode:1N4148 D7
U 1 1 5DDC3E9C
P 1450 1550
F 0 "D7" H 1300 1600 50  0000 C CNN
F 1 "1N4148" H 1450 1675 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 5DDC3EA4
P 1450 1650
F 0 "D8" H 1300 1700 50  0000 C CNN
F 1 "1N4148" H 1450 1775 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1650 50  0001 C CNN
	1    1450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1550 1300 1550
Wire Wire Line
	1300 1650 1050 1650
Wire Wire Line
	1750 1550 1600 1550
Wire Wire Line
	1600 1650 1750 1650
$Comp
L Diode:1N4148 D9
U 1 1 5DDC6F84
P 1450 1750
F 0 "D9" H 1300 1800 50  0000 C CNN
F 1 "1N4148" H 1450 1875 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1750 50  0001 C CNN
	1    1450 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 5DDC6F8C
P 1450 1850
F 0 "D10" H 1300 1900 50  0000 C CNN
F 1 "1N4148" H 1450 1975 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1850 50  0001 C CNN
	1    1450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1750 1300 1750
Wire Wire Line
	1300 1850 1050 1850
Wire Wire Line
	1750 1750 1600 1750
Wire Wire Line
	1600 1850 1750 1850
$Comp
L Diode:1N4148 D11
U 1 1 5DDC6F96
P 1450 1950
F 0 "D11" H 1300 2000 50  0000 C CNN
F 1 "1N4148" H 1450 2075 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1950 50  0001 C CNN
	1    1450 1950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D12
U 1 1 5DDC6F9E
P 1450 2050
F 0 "D12" H 1300 2100 50  0000 C CNN
F 1 "1N4148" H 1450 2175 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2050 50  0001 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1950 1300 1950
Wire Wire Line
	1300 2050 1050 2050
Wire Wire Line
	1750 1950 1600 1950
Wire Wire Line
	1600 2050 1750 2050
$Comp
L Diode:1N4148 D13
U 1 1 5DDC9578
P 1450 2150
F 0 "D13" H 1300 2200 50  0000 C CNN
F 1 "1N4148" H 1450 2275 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2150 50  0001 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 5DDC9580
P 1450 2250
F 0 "D14" H 1300 2300 50  0000 C CNN
F 1 "1N4148" H 1450 2375 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2250 50  0001 C CNN
	1    1450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2150 1300 2150
Wire Wire Line
	1300 2250 1050 2250
Wire Wire Line
	1750 2150 1600 2150
Wire Wire Line
	1600 2250 1750 2250
$Comp
L Diode:1N4148 D15
U 1 1 5DDC958A
P 1450 2350
F 0 "D15" H 1300 2400 50  0000 C CNN
F 1 "1N4148" H 1450 2475 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2350 50  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D16
U 1 1 5DDC9592
P 1450 2450
F 0 "D16" H 1300 2500 50  0000 C CNN
F 1 "1N4148" H 1450 2575 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2350 1300 2350
Wire Wire Line
	1300 2450 1050 2450
Wire Wire Line
	1750 2350 1600 2350
Wire Wire Line
	1600 2450 1750 2450
$Comp
L Diode:1N4148 D17
U 1 1 5DDCBE6C
P 1450 2550
F 0 "D17" H 1300 2600 50  0000 C CNN
F 1 "1N4148" H 1450 2675 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2550 50  0001 C CNN
	1    1450 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 5DDCBE74
P 1450 2650
F 0 "D18" H 1300 2700 50  0000 C CNN
F 1 "1N4148" H 1450 2775 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2650 50  0001 C CNN
	1    1450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2550 1300 2550
Wire Wire Line
	1300 2650 1050 2650
Wire Wire Line
	1750 2550 1600 2550
Wire Wire Line
	1600 2650 1750 2650
$Comp
L Diode:1N4148 D19
U 1 1 5DDCBE7E
P 1450 2750
F 0 "D19" H 1300 2800 50  0000 C CNN
F 1 "1N4148" H 1450 2875 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2750 50  0001 C CNN
	1    1450 2750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 5DDCBE86
P 1450 2850
F 0 "D20" H 1300 2900 50  0000 C CNN
F 1 "1N4148" H 1450 2975 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 2675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 2850 50  0001 C CNN
	1    1450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2750 1300 2750
Wire Wire Line
	1300 2850 1050 2850
Wire Wire Line
	1750 2750 1600 2750
Wire Wire Line
	1600 2850 1750 2850
$Comp
L Diode:1N4148 D22
U 1 1 5DDCE074
P 2550 1150
F 0 "D22" H 2400 1100 50  0000 C CNN
F 1 "1N4148" H 2550 1025 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 1150 50  0001 C CNN
	1    2550 1150
	-1   0    0    1   
$EndComp
Text GLabel 2950 1250 2    50   Input ~ 0
MatrixOut2
Wire Wire Line
	2250 1150 2400 1150
Wire Wire Line
	2700 1150 2800 1150
Wire Wire Line
	2950 1250 2250 1250
$Comp
L Diode:1N4148 D23
U 1 1 5DDD0B8B
P 2550 1350
F 0 "D23" H 2400 1300 50  0000 C CNN
F 1 "1N4148" H 2550 1225 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 1350 50  0001 C CNN
	1    2550 1350
	-1   0    0    1   
$EndComp
Text GLabel 2950 1450 2    50   Input ~ 0
MatrixOut3
Wire Wire Line
	2250 1350 2400 1350
Wire Wire Line
	2700 1350 2800 1350
Wire Wire Line
	2950 1450 2250 1450
$Comp
L Diode:1N4148 D24
U 1 1 5DDD0B96
P 2550 1550
F 0 "D24" H 2400 1500 50  0000 C CNN
F 1 "1N4148" H 2550 1425 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 1550 50  0001 C CNN
	1    2550 1550
	-1   0    0    1   
$EndComp
Text GLabel 2950 1650 2    50   Input ~ 0
MatrixOut4
Wire Wire Line
	2250 1550 2400 1550
Wire Wire Line
	2700 1550 2800 1550
Wire Wire Line
	2950 1650 2250 1650
$Comp
L Diode:1N4148 D25
U 1 1 5DDD4B36
P 2550 1750
F 0 "D25" H 2400 1700 50  0000 C CNN
F 1 "1N4148" H 2550 1625 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 1750 50  0001 C CNN
	1    2550 1750
	-1   0    0    1   
$EndComp
Text GLabel 2950 1850 2    50   Input ~ 0
MatrixOut5
Wire Wire Line
	2250 1750 2400 1750
Wire Wire Line
	2700 1750 2800 1750
Wire Wire Line
	2950 1850 2250 1850
$Comp
L Diode:1N4148 D26
U 1 1 5DDD4B41
P 2550 1950
F 0 "D26" H 2400 1900 50  0000 C CNN
F 1 "1N4148" H 2550 1825 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 1950 50  0001 C CNN
	1    2550 1950
	-1   0    0    1   
$EndComp
Text GLabel 2950 2050 2    50   Input ~ 0
MatrixOut6
Wire Wire Line
	2250 1950 2400 1950
Wire Wire Line
	2700 1950 2800 1950
Wire Wire Line
	2950 2050 2250 2050
$Comp
L Diode:1N4148 D27
U 1 1 5DDD4B4C
P 2550 2150
F 0 "D27" H 2400 2100 50  0000 C CNN
F 1 "1N4148" H 2550 2025 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 1975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 2150 50  0001 C CNN
	1    2550 2150
	-1   0    0    1   
$EndComp
Text GLabel 2950 2250 2    50   Input ~ 0
MatrixOut7
Wire Wire Line
	2250 2150 2400 2150
Wire Wire Line
	2700 2150 2800 2150
Wire Wire Line
	2950 2250 2250 2250
$Comp
L Diode:1N4148 D28
U 1 1 5DDD4B57
P 2550 2350
F 0 "D28" H 2400 2300 50  0000 C CNN
F 1 "1N4148" H 2550 2225 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 2350 50  0001 C CNN
	1    2550 2350
	-1   0    0    1   
$EndComp
Text GLabel 2950 2450 2    50   Input ~ 0
MatrixOut8
Wire Wire Line
	2250 2350 2400 2350
Wire Wire Line
	2700 2350 2800 2350
Wire Wire Line
	2950 2450 2250 2450
$Comp
L Diode:1N4148 D29
U 1 1 5DDD936B
P 2550 2550
F 0 "D29" H 2400 2500 50  0000 C CNN
F 1 "1N4148" H 2550 2425 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 2375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 2550 50  0001 C CNN
	1    2550 2550
	-1   0    0    1   
$EndComp
Text GLabel 2950 2650 2    50   Input ~ 0
MatrixOut9
Wire Wire Line
	2250 2550 2400 2550
Wire Wire Line
	2700 2550 2800 2550
Wire Wire Line
	2950 2650 2250 2650
$Comp
L Diode:1N4148 D30
U 1 1 5DDD9376
P 2550 2750
F 0 "D30" H 2400 2700 50  0000 C CNN
F 1 "1N4148" H 2550 2625 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2550 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2550 2750 50  0001 C CNN
	1    2550 2750
	-1   0    0    1   
$EndComp
Text GLabel 2950 2850 2    50   Input ~ 0
MatrixOut10
Wire Wire Line
	2250 2750 2400 2750
Wire Wire Line
	2700 2750 2800 2750
Wire Wire Line
	2950 2850 2250 2850
Text GLabel 7550 1050 0    50   Output ~ 0
MatrixOut1
Text GLabel 7550 1150 0    50   Output ~ 0
MatrixOut3
Text GLabel 7550 1250 0    50   Output ~ 0
MatrixOut5
Text GLabel 7550 1350 0    50   Output ~ 0
MatrixOut7
Text GLabel 7550 1450 0    50   Output ~ 0
MatrixOut9
Text GLabel 7550 1550 0    50   Input ~ 0
Switch2In
Text GLabel 7550 1650 0    50   Input ~ 0
EncIn2a
Text GLabel 8350 1450 2    50   Output ~ 0
MatrixOut10
Text GLabel 8350 1350 2    50   Output ~ 0
MatrixOut8
Text GLabel 8350 1250 2    50   Output ~ 0
MatrixOut6
Text GLabel 8350 1150 2    50   Output ~ 0
MatrixOut4
Text GLabel 8350 1050 2    50   Output ~ 0
MatrixOut2
Text GLabel 8350 1650 2    50   Input ~ 0
EncIn3a
Text GLabel 8350 1550 2    50   Input ~ 0
Switch3In
Text GLabel 7550 1750 0    50   Input ~ 0
EncIn2b
Text GLabel 8350 1750 2    50   Input ~ 0
EncIn3b
Wire Wire Line
	1050 2850 1050 2650
Connection ~ 1050 1050
Wire Wire Line
	1050 1050 950  1050
Connection ~ 1050 1250
Wire Wire Line
	1050 1250 1050 1050
Connection ~ 1050 1450
Wire Wire Line
	1050 1450 1050 1250
Connection ~ 1050 1650
Wire Wire Line
	1050 1650 1050 1450
Connection ~ 1050 1850
Wire Wire Line
	1050 1850 1050 1650
Connection ~ 1050 2050
Wire Wire Line
	1050 2050 1050 1850
Connection ~ 1050 2250
Wire Wire Line
	1050 2250 1050 2050
Connection ~ 1050 2450
Wire Wire Line
	1050 2450 1050 2250
Connection ~ 1050 2650
Wire Wire Line
	1050 2650 1050 2450
Wire Wire Line
	1150 950  1150 1150
Connection ~ 1150 950 
Wire Wire Line
	1150 950  1300 950 
Connection ~ 1150 1150
Wire Wire Line
	1150 1150 1150 1350
Connection ~ 1150 1350
Wire Wire Line
	1150 1350 1150 1550
Connection ~ 1150 1550
Wire Wire Line
	1150 1550 1150 1750
Connection ~ 1150 1750
Wire Wire Line
	1150 1750 1150 1950
Connection ~ 1150 1950
Wire Wire Line
	1150 1950 1150 2150
Connection ~ 1150 2150
Wire Wire Line
	1150 2150 1150 2350
Connection ~ 1150 2350
Wire Wire Line
	1150 2350 1150 2550
Connection ~ 1150 2550
Wire Wire Line
	1150 2550 1150 2750
Wire Wire Line
	2800 2750 2800 2550
Wire Wire Line
	2700 950  2800 950 
Connection ~ 2800 950 
Wire Wire Line
	2800 950  2950 950 
Connection ~ 2800 1150
Wire Wire Line
	2800 1150 2800 950 
Connection ~ 2800 1350
Wire Wire Line
	2800 1350 2800 1150
Connection ~ 2800 1550
Wire Wire Line
	2800 1550 2800 1350
Connection ~ 2800 1750
Wire Wire Line
	2800 1750 2800 1550
Connection ~ 2800 1950
Wire Wire Line
	2800 1950 2800 1750
Connection ~ 2800 2150
Wire Wire Line
	2800 2150 2800 1950
Connection ~ 2800 2350
Wire Wire Line
	2800 2350 2800 2150
Connection ~ 2800 2550
Wire Wire Line
	2800 2550 2800 2350
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5DF73677
P 5050 1850
F 0 "J2" H 5100 2967 50  0000 C CNN
F 1 "Encoders 21-30" H 5100 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 5050 1850 50  0001 C CNN
F 3 "~" H 5050 1850 50  0001 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D51
U 1 1 5DF7367D
P 5650 950
F 0 "D51" H 5500 900 50  0000 C CNN
F 1 "1N4148" H 5650 825 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 950 50  0001 C CNN
	1    5650 950 
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D31
U 1 1 5DF73683
P 4550 950
F 0 "D31" H 4400 1000 50  0000 C CNN
F 1 "1N4148" H 4550 1075 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 950 50  0001 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
Text GLabel 4050 950  0    50   Output ~ 0
SwitchIn3
Text GLabel 4050 1050 0    50   Output ~ 0
EncIn3a
Text GLabel 6050 950  2    50   Output ~ 0
EncIn3b
$Comp
L Diode:1N4148 D32
U 1 1 5DF7368C
P 4550 1050
F 0 "D32" H 4400 1100 50  0000 C CNN
F 1 "1N4148" H 4550 1175 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
Text GLabel 6050 1050 2    50   Input ~ 0
MatrixOut1
Wire Wire Line
	4050 950  4250 950 
Wire Wire Line
	4400 1050 4150 1050
Wire Wire Line
	4850 950  4700 950 
Wire Wire Line
	5350 950  5500 950 
Wire Wire Line
	6050 1050 5350 1050
Wire Wire Line
	4700 1050 4850 1050
$Comp
L Diode:1N4148 D33
U 1 1 5DF73699
P 4550 1150
F 0 "D33" H 4400 1200 50  0000 C CNN
F 1 "1N4148" H 4550 1275 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1150 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D34
U 1 1 5DF7369F
P 4550 1250
F 0 "D34" H 4400 1300 50  0000 C CNN
F 1 "1N4148" H 4550 1375 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1250 50  0001 C CNN
	1    4550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1150 4400 1150
Wire Wire Line
	4400 1250 4150 1250
Wire Wire Line
	4850 1150 4700 1150
Wire Wire Line
	4700 1250 4850 1250
$Comp
L Diode:1N4148 D35
U 1 1 5DF736A9
P 4550 1350
F 0 "D35" H 4400 1400 50  0000 C CNN
F 1 "1N4148" H 4550 1475 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1350 50  0001 C CNN
	1    4550 1350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D36
U 1 1 5DF736AF
P 4550 1450
F 0 "D36" H 4400 1500 50  0000 C CNN
F 1 "1N4148" H 4550 1575 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1350 4400 1350
Wire Wire Line
	4400 1450 4150 1450
Wire Wire Line
	4850 1350 4700 1350
Wire Wire Line
	4700 1450 4850 1450
$Comp
L Diode:1N4148 D37
U 1 1 5DF736B9
P 4550 1550
F 0 "D37" H 4400 1600 50  0000 C CNN
F 1 "1N4148" H 4550 1675 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D38
U 1 1 5DF736BF
P 4550 1650
F 0 "D38" H 4400 1700 50  0000 C CNN
F 1 "1N4148" H 4550 1775 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1550 4400 1550
Wire Wire Line
	4400 1650 4150 1650
Wire Wire Line
	4850 1550 4700 1550
Wire Wire Line
	4700 1650 4850 1650
$Comp
L Diode:1N4148 D39
U 1 1 5DF736C9
P 4550 1750
F 0 "D39" H 4400 1800 50  0000 C CNN
F 1 "1N4148" H 4550 1875 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D40
U 1 1 5DF736CF
P 4550 1850
F 0 "D40" H 4400 1900 50  0000 C CNN
F 1 "1N4148" H 4550 1975 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1850 50  0001 C CNN
	1    4550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1750 4400 1750
Wire Wire Line
	4400 1850 4150 1850
Wire Wire Line
	4850 1750 4700 1750
Wire Wire Line
	4700 1850 4850 1850
$Comp
L Diode:1N4148 D41
U 1 1 5DF736D9
P 4550 1950
F 0 "D41" H 4400 2000 50  0000 C CNN
F 1 "1N4148" H 4550 2075 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D42
U 1 1 5DF736DF
P 4550 2050
F 0 "D42" H 4400 2100 50  0000 C CNN
F 1 "1N4148" H 4550 2175 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2050 50  0001 C CNN
	1    4550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1950 4400 1950
Wire Wire Line
	4400 2050 4150 2050
Wire Wire Line
	4850 1950 4700 1950
Wire Wire Line
	4700 2050 4850 2050
$Comp
L Diode:1N4148 D43
U 1 1 5DF736E9
P 4550 2150
F 0 "D43" H 4400 2200 50  0000 C CNN
F 1 "1N4148" H 4550 2275 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 1975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2150 50  0001 C CNN
	1    4550 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D44
U 1 1 5DF736EF
P 4550 2250
F 0 "D44" H 4400 2300 50  0000 C CNN
F 1 "1N4148" H 4550 2375 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2250 50  0001 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2150 4400 2150
Wire Wire Line
	4400 2250 4150 2250
Wire Wire Line
	4850 2150 4700 2150
Wire Wire Line
	4700 2250 4850 2250
$Comp
L Diode:1N4148 D45
U 1 1 5DF736F9
P 4550 2350
F 0 "D45" H 4400 2400 50  0000 C CNN
F 1 "1N4148" H 4550 2475 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2350 50  0001 C CNN
	1    4550 2350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D46
U 1 1 5DF736FF
P 4550 2450
F 0 "D46" H 4400 2500 50  0000 C CNN
F 1 "1N4148" H 4550 2575 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2450 50  0001 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2350 4400 2350
Wire Wire Line
	4400 2450 4150 2450
Wire Wire Line
	4850 2350 4700 2350
Wire Wire Line
	4700 2450 4850 2450
$Comp
L Diode:1N4148 D47
U 1 1 5DF73709
P 4550 2550
F 0 "D47" H 4400 2600 50  0000 C CNN
F 1 "1N4148" H 4550 2675 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2550 50  0001 C CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D48
U 1 1 5DF7370F
P 4550 2650
F 0 "D48" H 4400 2700 50  0000 C CNN
F 1 "1N4148" H 4550 2775 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2550 4400 2550
Wire Wire Line
	4400 2650 4150 2650
Wire Wire Line
	4850 2550 4700 2550
Wire Wire Line
	4700 2650 4850 2650
$Comp
L Diode:1N4148 D49
U 1 1 5DF73719
P 4550 2750
F 0 "D49" H 4400 2800 50  0000 C CNN
F 1 "1N4148" H 4550 2875 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2750 50  0001 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D50
U 1 1 5DF7371F
P 4550 2850
F 0 "D50" H 4400 2900 50  0000 C CNN
F 1 "1N4148" H 4550 2975 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 2675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2750 4400 2750
Wire Wire Line
	4400 2850 4150 2850
Wire Wire Line
	4850 2750 4700 2750
Wire Wire Line
	4700 2850 4850 2850
$Comp
L Diode:1N4148 D52
U 1 1 5DF73729
P 5650 1150
F 0 "D52" H 5500 1100 50  0000 C CNN
F 1 "1N4148" H 5650 1025 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 1150 50  0001 C CNN
	1    5650 1150
	-1   0    0    1   
$EndComp
Text GLabel 6050 1250 2    50   Input ~ 0
MatrixOut2
Wire Wire Line
	5350 1150 5500 1150
Wire Wire Line
	5800 1150 5900 1150
Wire Wire Line
	6050 1250 5350 1250
$Comp
L Diode:1N4148 D53
U 1 1 5DF73733
P 5650 1350
F 0 "D53" H 5500 1300 50  0000 C CNN
F 1 "1N4148" H 5650 1225 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 1350 50  0001 C CNN
	1    5650 1350
	-1   0    0    1   
$EndComp
Text GLabel 6050 1450 2    50   Input ~ 0
MatrixOut3
Wire Wire Line
	5350 1350 5500 1350
Wire Wire Line
	5800 1350 5900 1350
Wire Wire Line
	6050 1450 5350 1450
$Comp
L Diode:1N4148 D54
U 1 1 5DF7373D
P 5650 1550
F 0 "D54" H 5500 1500 50  0000 C CNN
F 1 "1N4148" H 5650 1425 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 1550 50  0001 C CNN
	1    5650 1550
	-1   0    0    1   
$EndComp
Text GLabel 6050 1650 2    50   Input ~ 0
MatrixOut4
Wire Wire Line
	5350 1550 5500 1550
Wire Wire Line
	5800 1550 5900 1550
Wire Wire Line
	6050 1650 5350 1650
$Comp
L Diode:1N4148 D55
U 1 1 5DF73747
P 5650 1750
F 0 "D55" H 5500 1700 50  0000 C CNN
F 1 "1N4148" H 5650 1625 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 1750 50  0001 C CNN
	1    5650 1750
	-1   0    0    1   
$EndComp
Text GLabel 6050 1850 2    50   Input ~ 0
MatrixOut5
Wire Wire Line
	5350 1750 5500 1750
Wire Wire Line
	5800 1750 5900 1750
Wire Wire Line
	6050 1850 5350 1850
$Comp
L Diode:1N4148 D56
U 1 1 5DF73751
P 5650 1950
F 0 "D56" H 5500 1900 50  0000 C CNN
F 1 "1N4148" H 5650 1825 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 1950 50  0001 C CNN
	1    5650 1950
	-1   0    0    1   
$EndComp
Text GLabel 6050 2050 2    50   Input ~ 0
MatrixOut6
Wire Wire Line
	5350 1950 5500 1950
Wire Wire Line
	5800 1950 5900 1950
Wire Wire Line
	6050 2050 5350 2050
$Comp
L Diode:1N4148 D57
U 1 1 5DF7375B
P 5650 2150
F 0 "D57" H 5500 2100 50  0000 C CNN
F 1 "1N4148" H 5650 2025 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 2150 50  0001 C CNN
	1    5650 2150
	-1   0    0    1   
$EndComp
Text GLabel 6050 2250 2    50   Input ~ 0
MatrixOut7
Wire Wire Line
	5350 2150 5500 2150
Wire Wire Line
	5800 2150 5900 2150
Wire Wire Line
	6050 2250 5350 2250
$Comp
L Diode:1N4148 D58
U 1 1 5DF73765
P 5650 2350
F 0 "D58" H 5500 2300 50  0000 C CNN
F 1 "1N4148" H 5650 2225 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 2175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 2350 50  0001 C CNN
	1    5650 2350
	-1   0    0    1   
$EndComp
Text GLabel 6050 2450 2    50   Input ~ 0
MatrixOut8
Wire Wire Line
	5350 2350 5500 2350
Wire Wire Line
	5800 2350 5900 2350
Wire Wire Line
	6050 2450 5350 2450
$Comp
L Diode:1N4148 D59
U 1 1 5DF7376F
P 5650 2550
F 0 "D59" H 5500 2500 50  0000 C CNN
F 1 "1N4148" H 5650 2425 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 2375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 2550 50  0001 C CNN
	1    5650 2550
	-1   0    0    1   
$EndComp
Text GLabel 6050 2650 2    50   Input ~ 0
MatrixOut9
Wire Wire Line
	5350 2550 5500 2550
Wire Wire Line
	5800 2550 5900 2550
Wire Wire Line
	6050 2650 5350 2650
$Comp
L Diode:1N4148 D60
U 1 1 5DF73779
P 5650 2750
F 0 "D60" H 5500 2700 50  0000 C CNN
F 1 "1N4148" H 5650 2625 50  0001 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 2575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5650 2750 50  0001 C CNN
	1    5650 2750
	-1   0    0    1   
$EndComp
Text GLabel 6050 2850 2    50   Input ~ 0
MatrixOut10
Wire Wire Line
	5350 2750 5500 2750
Wire Wire Line
	5800 2750 5900 2750
Wire Wire Line
	6050 2850 5350 2850
Wire Wire Line
	4150 2850 4150 2650
Connection ~ 4150 1050
Wire Wire Line
	4150 1050 4050 1050
Connection ~ 4150 1250
Wire Wire Line
	4150 1250 4150 1050
Connection ~ 4150 1450
Wire Wire Line
	4150 1450 4150 1250
Connection ~ 4150 1650
Wire Wire Line
	4150 1650 4150 1450
Connection ~ 4150 1850
Wire Wire Line
	4150 1850 4150 1650
Connection ~ 4150 2050
Wire Wire Line
	4150 2050 4150 1850
Connection ~ 4150 2250
Wire Wire Line
	4150 2250 4150 2050
Connection ~ 4150 2450
Wire Wire Line
	4150 2450 4150 2250
Connection ~ 4150 2650
Wire Wire Line
	4150 2650 4150 2450
Wire Wire Line
	4250 950  4250 1150
Connection ~ 4250 950 
Wire Wire Line
	4250 950  4400 950 
Connection ~ 4250 1150
Wire Wire Line
	4250 1150 4250 1350
Connection ~ 4250 1350
Wire Wire Line
	4250 1350 4250 1550
Connection ~ 4250 1550
Wire Wire Line
	4250 1550 4250 1750
Connection ~ 4250 1750
Wire Wire Line
	4250 1750 4250 1950
Connection ~ 4250 1950
Wire Wire Line
	4250 1950 4250 2150
Connection ~ 4250 2150
Wire Wire Line
	4250 2150 4250 2350
Connection ~ 4250 2350
Wire Wire Line
	4250 2350 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	4250 2550 4250 2750
Wire Wire Line
	5900 2750 5900 2550
Wire Wire Line
	5800 950  5900 950 
Connection ~ 5900 950 
Wire Wire Line
	5900 950  6050 950 
Connection ~ 5900 1150
Wire Wire Line
	5900 1150 5900 950 
Connection ~ 5900 1350
Wire Wire Line
	5900 1350 5900 1150
Connection ~ 5900 1550
Wire Wire Line
	5900 1550 5900 1350
Connection ~ 5900 1750
Wire Wire Line
	5900 1750 5900 1550
Connection ~ 5900 1950
Wire Wire Line
	5900 1950 5900 1750
Connection ~ 5900 2150
Wire Wire Line
	5900 2150 5900 1950
Connection ~ 5900 2350
Wire Wire Line
	5900 2350 5900 2150
Connection ~ 5900 2550
Wire Wire Line
	5900 2550 5900 2350
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J3
U 1 1 5DF86AF9
P 7900 1450
F 0 "J3" H 7950 2067 50  0000 C CNN
F 1 "EXT" H 7950 1976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 7900 1450 50  0001 C CNN
F 3 "~" H 7900 1450 50  0001 C CNN
	1    7900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1050 7700 1050
Wire Wire Line
	7700 1150 7550 1150
Wire Wire Line
	7550 1250 7700 1250
Wire Wire Line
	7700 1350 7550 1350
Wire Wire Line
	7550 1450 7700 1450
Wire Wire Line
	7700 1550 7550 1550
Wire Wire Line
	7550 1650 7700 1650
Wire Wire Line
	7700 1750 7550 1750
Wire Wire Line
	8200 1750 8350 1750
Wire Wire Line
	8350 1650 8200 1650
Wire Wire Line
	8200 1550 8350 1550
Wire Wire Line
	8350 1450 8200 1450
Wire Wire Line
	8200 1350 8350 1350
Wire Wire Line
	8350 1250 8200 1250
Wire Wire Line
	8200 1150 8350 1150
Wire Wire Line
	8350 1050 8200 1050
NoConn ~ 8200 1850
NoConn ~ 8200 1950
NoConn ~ 7700 1950
NoConn ~ 7700 1850
$EndSCHEMATC
