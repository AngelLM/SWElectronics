EESchema Schematic File Version 2
LIBS:bobachest-rescue
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
LIBS:arduino
LIBS:bobachest-cache
EELAYER 25 0
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
L 7SEGMENTS-RESCUE-bobachest AFF1
U 1 1 58405E92
P 2100 1550
F 0 "AFF1" H 2100 2100 50  0000 C CNN
F 1 "7SEGMENTS" H 2100 1100 50  0000 C CNN
F 2 "7Segment:7Segment9.9" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0000 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
Text GLabel 1500 1150 0    60   Input ~ 0
Sa
Text GLabel 1500 1250 0    60   Input ~ 0
Sb
Text GLabel 1500 1450 0    60   Input ~ 0
Sd
Text GLabel 1500 1350 0    60   Input ~ 0
Sc
Text GLabel 1500 1550 0    60   Input ~ 0
Se
Text GLabel 1500 1650 0    60   Input ~ 0
Sf
Text GLabel 1500 1750 0    60   Input ~ 0
Sg
Text GLabel 2700 1800 2    60   Input ~ 0
Sp
$Comp
L PN2222A Q1
U 1 1 5840716C
P 3000 1250
F 0 "Q1" H 3200 1325 50  0000 L CNN
F 1 "PN2222A" H 3200 1250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3200 1175 50  0001 L CIN
F 3 "" H 3000 1250 50  0000 L CNN
	1    3000 1250
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 584072D9
P 3000 1600
F 0 "R1" V 3080 1600 50  0000 C CNN
F 1 "R" V 3000 1600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 1600 50  0001 C CNN
F 3 "" H 3000 1600 50  0000 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
Text GLabel 3000 1750 3    60   Input ~ 0
S1
$Comp
L 7SEGMENTS-RESCUE-bobachest AFF2
U 1 1 58407AAB
P 2100 2800
F 0 "AFF2" H 2100 3350 50  0000 C CNN
F 1 "7SEGMENTS" H 2100 2350 50  0000 C CNN
F 2 "7Segment:7Segment9.9" H 2100 2800 50  0001 C CNN
F 3 "" H 2100 2800 50  0000 C CNN
	1    2100 2800
	1    0    0    -1  
$EndComp
Text GLabel 1500 2400 0    60   Input ~ 0
Sa
Text GLabel 1500 2500 0    60   Input ~ 0
Sb
Text GLabel 1500 2700 0    60   Input ~ 0
Sd
Text GLabel 1500 2600 0    60   Input ~ 0
Sc
Text GLabel 1500 2800 0    60   Input ~ 0
Se
Text GLabel 1500 2900 0    60   Input ~ 0
Sf
Text GLabel 1500 3000 0    60   Input ~ 0
Sg
Text GLabel 2700 3050 2    60   Input ~ 0
Sp
$Comp
L PN2222A Q2
U 1 1 58407ABA
P 3000 2500
F 0 "Q2" H 3200 2575 50  0000 L CNN
F 1 "PN2222A" H 3200 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3200 2425 50  0001 L CIN
F 3 "" H 3000 2500 50  0000 L CNN
	1    3000 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 58407AC2
P 3000 2850
F 0 "R2" V 3080 2850 50  0000 C CNN
F 1 "R" V 3000 2850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 2850 50  0001 C CNN
F 3 "" H 3000 2850 50  0000 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Text GLabel 3000 3000 3    60   Input ~ 0
S2
$Comp
L 7SEGMENTS-RESCUE-bobachest AFF3
U 1 1 58407CBB
P 2100 4050
F 0 "AFF3" H 2100 4600 50  0000 C CNN
F 1 "7SEGMENTS" H 2100 3600 50  0000 C CNN
F 2 "7Segment:7Segment9.9" H 2100 4050 50  0001 C CNN
F 3 "" H 2100 4050 50  0000 C CNN
	1    2100 4050
	1    0    0    -1  
$EndComp
Text GLabel 1500 3650 0    60   Input ~ 0
Sa
Text GLabel 1500 3750 0    60   Input ~ 0
Sb
Text GLabel 1500 3950 0    60   Input ~ 0
Sd
Text GLabel 1500 3850 0    60   Input ~ 0
Sc
Text GLabel 1500 4050 0    60   Input ~ 0
Se
Text GLabel 1500 4150 0    60   Input ~ 0
Sf
Text GLabel 1500 4250 0    60   Input ~ 0
Sg
Text GLabel 2700 4300 2    60   Input ~ 0
Sp
$Comp
L PN2222A Q3
U 1 1 58407CCA
P 3000 3750
F 0 "Q3" H 3200 3825 50  0000 L CNN
F 1 "PN2222A" H 3200 3750 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3200 3675 50  0001 L CIN
F 3 "" H 3000 3750 50  0000 L CNN
	1    3000 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 58407CD2
P 3000 4100
F 0 "R3" V 3080 4100 50  0000 C CNN
F 1 "R" V 3000 4100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 4100 50  0001 C CNN
F 3 "" H 3000 4100 50  0000 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Text GLabel 3000 4250 3    60   Input ~ 0
S3
$Comp
L 7SEGMENTS-RESCUE-bobachest AFF4
U 1 1 5840809F
P 2100 5300
F 0 "AFF4" H 2100 5850 50  0000 C CNN
F 1 "7SEGMENTS" H 2100 4850 50  0000 C CNN
F 2 "7Segment:7Segment9.9" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0000 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
Text GLabel 1500 4900 0    60   Input ~ 0
Sa
Text GLabel 1500 5000 0    60   Input ~ 0
Sb
Text GLabel 1500 5200 0    60   Input ~ 0
Sd
Text GLabel 1500 5100 0    60   Input ~ 0
Sc
Text GLabel 1500 5300 0    60   Input ~ 0
Se
Text GLabel 1500 5400 0    60   Input ~ 0
Sf
Text GLabel 1500 5500 0    60   Input ~ 0
Sg
Text GLabel 2700 5550 2    60   Input ~ 0
Sp
$Comp
L PN2222A Q4
U 1 1 584080AE
P 3000 5000
F 0 "Q4" H 3200 5075 50  0000 L CNN
F 1 "PN2222A" H 3200 5000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3200 4925 50  0001 L CIN
F 3 "" H 3000 5000 50  0000 L CNN
	1    3000 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 584080B6
P 3000 5350
F 0 "R4" V 3080 5350 50  0000 C CNN
F 1 "R" V 3000 5350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 5350 50  0001 C CNN
F 3 "" H 3000 5350 50  0000 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
Text GLabel 3000 5500 3    60   Input ~ 0
S4
$Comp
L 7SEGMENTS-RESCUE-bobachest AFF5
U 1 1 58408443
P 2100 6550
F 0 "AFF5" H 2100 7100 50  0000 C CNN
F 1 "7SEGMENTS" H 2100 6100 50  0000 C CNN
F 2 "7Segment:7Segment9.9" H 2100 6550 50  0001 C CNN
F 3 "" H 2100 6550 50  0000 C CNN
	1    2100 6550
	1    0    0    -1  
$EndComp
Text GLabel 1500 6150 0    60   Input ~ 0
Sa
Text GLabel 1500 6250 0    60   Input ~ 0
Sb
Text GLabel 1500 6450 0    60   Input ~ 0
Sd
Text GLabel 1500 6350 0    60   Input ~ 0
Sc
Text GLabel 1500 6550 0    60   Input ~ 0
Se
Text GLabel 1500 6650 0    60   Input ~ 0
Sf
Text GLabel 1500 6750 0    60   Input ~ 0
Sg
Text GLabel 2700 6800 2    60   Input ~ 0
Sp
$Comp
L PN2222A Q5
U 1 1 58408452
P 3000 6250
F 0 "Q5" H 3200 6325 50  0000 L CNN
F 1 "PN2222A" H 3200 6250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3200 6175 50  0001 L CIN
F 3 "" H 3000 6250 50  0000 L CNN
	1    3000 6250
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5840845A
P 3000 6600
F 0 "R5" V 3080 6600 50  0000 C CNN
F 1 "R" V 3000 6600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2930 6600 50  0001 C CNN
F 3 "" H 3000 6600 50  0000 C CNN
	1    3000 6600
	1    0    0    -1  
$EndComp
Text GLabel 3000 6750 3    60   Input ~ 0
S5
$Comp
L DOT-BAR2 BAR1
U 1 1 58409BA8
P 5500 2550
F 0 "BAR1" H 5400 4000 50  0000 C CNN
F 1 "DOT-BAR2" H 5500 3850 50  0000 C CNN
F 2 "Display:HDSP-48xx" H 5500 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0000 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L DOT-BAR2 BAR2
U 1 1 5840B58C
P 5500 5350
F 0 "BAR2" H 5400 6800 50  0000 C CNN
F 1 "DOT-BAR2" H 5500 6650 50  0000 C CNN
F 2 "Display:HDSP-48xx" H 5500 5350 50  0001 C CNN
F 3 "" H 5500 5350 50  0000 C CNN
	1    5500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1100 2700 1200
Wire Wire Line
	2800 1150 2700 1150
Connection ~ 2700 1150
Wire Wire Line
	2700 2350 2700 2450
Wire Wire Line
	2800 2400 2700 2400
Connection ~ 2700 2400
Wire Wire Line
	2700 3600 2700 3700
Wire Wire Line
	2800 3650 2700 3650
Connection ~ 2700 3650
Wire Wire Line
	2700 4850 2700 4950
Wire Wire Line
	2800 4900 2700 4900
Connection ~ 2700 4900
Wire Wire Line
	2700 6100 2700 6200
Wire Wire Line
	2800 6150 2700 6150
Connection ~ 2700 6150
Wire Wire Line
	5900 1450 5900 6500
Connection ~ 5900 1700
Connection ~ 5900 1950
Connection ~ 5900 2200
Connection ~ 5900 2450
Connection ~ 5900 2700
Connection ~ 5900 2950
Connection ~ 5900 3200
Connection ~ 5900 3450
Connection ~ 5900 4500
Connection ~ 5900 4750
Connection ~ 5900 5000
Connection ~ 5900 5250
Connection ~ 5900 5500
Connection ~ 5900 5750
Connection ~ 5900 6000
Connection ~ 5900 6250
Wire Wire Line
	5100 1450 5100 2200
Connection ~ 5100 1700
Connection ~ 5100 1950
Wire Wire Line
	5100 2450 5100 3200
Connection ~ 5100 2700
Connection ~ 5100 2950
Wire Wire Line
	5100 3450 5100 4500
Connection ~ 5100 3700
Connection ~ 5100 4250
Wire Wire Line
	5100 4750 5100 5500
Connection ~ 5100 5000
Connection ~ 5100 5250
Wire Wire Line
	5100 5750 5100 6500
Connection ~ 5100 6000
Connection ~ 5100 6250
Connection ~ 5900 4250
Connection ~ 5900 3700
$Comp
L GND #PWR01
U 1 1 5840CFCC
P 6350 4200
F 0 "#PWR01" H 6350 3950 50  0001 C CNN
F 1 "GND" H 6350 4050 50  0000 C CNN
F 2 "" H 6350 4200 50  0000 C CNN
F 3 "" H 6350 4200 50  0000 C CNN
	1    6350 4200
	0    -1   -1   0   
$EndComp
Connection ~ 5900 4000
Wire Wire Line
	5100 1450 4950 1450
Wire Wire Line
	5100 2450 4950 2450
Wire Wire Line
	5100 3450 4950 3450
Wire Wire Line
	5100 4750 4950 4750
Wire Wire Line
	5100 5750 4950 5750
Text GLabel 4650 1450 0    60   Input ~ 0
B1
Text GLabel 4650 2450 0    60   Input ~ 0
B2
Text GLabel 4650 3450 0    60   Input ~ 0
B3
Text GLabel 4650 4750 0    60   Input ~ 0
B4
$Comp
L arduino_mini U1
U 1 1 5840EEB7
P 8450 3550
F 0 "U1" H 8950 2600 70  0000 C CNN
F 1 "arduino_mini" H 9200 2500 70  0000 C CNN
F 2 "arduino:arduino_mini" H 8450 3500 60  0000 C CNN
F 3 "" H 8450 3550 60  0001 C CNN
	1    8450 3550
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5841078B
P 4800 1450
F 0 "R6" V 4880 1450 50  0000 C CNN
F 1 "R" V 4800 1450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 1450 50  0001 C CNN
F 3 "" H 4800 1450 50  0000 C CNN
	1    4800 1450
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 58410A7A
P 4800 2450
F 0 "R7" V 4880 2450 50  0000 C CNN
F 1 "R" V 4800 2450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 2450 50  0001 C CNN
F 3 "" H 4800 2450 50  0000 C CNN
	1    4800 2450
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 58410C8E
P 4800 3450
F 0 "R8" V 4880 3450 50  0000 C CNN
F 1 "R" V 4800 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 3450 50  0001 C CNN
F 3 "" H 4800 3450 50  0000 C CNN
	1    4800 3450
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 58410D03
P 4800 4750
F 0 "R9" V 4880 4750 50  0000 C CNN
F 1 "R" V 4800 4750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 4750 50  0001 C CNN
F 3 "" H 4800 4750 50  0000 C CNN
	1    4800 4750
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 58410F41
P 4800 5750
F 0 "R10" V 4880 5750 50  0000 C CNN
F 1 "R" V 4800 5750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4730 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0000 C CNN
	1    4800 5750
	0    1    1    0   
$EndComp
Text GLabel 4650 5750 0    60   Input ~ 0
B5
$Comp
L R R18
U 1 1 5840A238
P 9300 4150
F 0 "R18" V 9380 4150 50  0000 C CNN
F 1 "R" V 9300 4150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 4150 50  0001 C CNN
F 3 "" H 9300 4150 50  0000 C CNN
	1    9300 4150
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5840A3D8
P 9300 4050
F 0 "R17" V 9380 4050 50  0000 C CNN
F 1 "R" V 9300 4050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 4050 50  0001 C CNN
F 3 "" H 9300 4050 50  0000 C CNN
	1    9300 4050
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5840A437
P 9300 3950
F 0 "R16" V 9380 3950 50  0000 C CNN
F 1 "R" V 9300 3950 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3950 50  0001 C CNN
F 3 "" H 9300 3950 50  0000 C CNN
	1    9300 3950
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5840A495
P 9300 3850
F 0 "R15" V 9380 3850 50  0000 C CNN
F 1 "R" V 9300 3850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3850 50  0001 C CNN
F 3 "" H 9300 3850 50  0000 C CNN
	1    9300 3850
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5840AAC3
P 9300 3600
F 0 "R14" V 9380 3600 50  0000 C CNN
F 1 "R" V 9300 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3600 50  0001 C CNN
F 3 "" H 9300 3600 50  0000 C CNN
	1    9300 3600
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5840AB2D
P 9300 3500
F 0 "R13" V 9380 3500 50  0000 C CNN
F 1 "R" V 9300 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3500 50  0001 C CNN
F 3 "" H 9300 3500 50  0000 C CNN
	1    9300 3500
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5840AB94
P 9300 3300
F 0 "R11" V 9380 3300 50  0000 C CNN
F 1 "R" V 9300 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3300 50  0001 C CNN
F 3 "" H 9300 3300 50  0000 C CNN
	1    9300 3300
	0    1    1    0   
$EndComp
Text GLabel 9450 4150 2    60   Output ~ 0
Sa
Text GLabel 9450 4050 2    60   Output ~ 0
Sb
Text GLabel 9450 3950 2    60   Output ~ 0
Sc
Text GLabel 9450 3850 2    60   Output ~ 0
Sd
Text GLabel 9450 3600 2    60   Output ~ 0
Se
Text GLabel 9450 3500 2    60   Output ~ 0
Sf
Text GLabel 9450 3300 2    60   Output ~ 0
Sp
Text GLabel 9150 3200 2    60   Output ~ 0
S1
Text GLabel 9150 3100 2    60   Output ~ 0
S2
Text GLabel 9150 3000 2    60   Output ~ 0
S3
Text GLabel 7750 3350 0    60   Output ~ 0
S4
Text GLabel 7750 3450 0    60   Output ~ 0
S5
Text GLabel 7750 3550 0    60   Output ~ 0
B1
Text GLabel 7750 3650 0    60   Output ~ 0
B2
Text GLabel 7750 3750 0    60   Output ~ 0
B3
Text GLabel 7750 3850 0    60   Output ~ 0
B4
Text GLabel 7750 3950 0    60   Output ~ 0
B5
$Comp
L GND #PWR02
U 1 1 5841C895
P 8450 5100
F 0 "#PWR02" H 8450 4850 50  0001 C CNN
F 1 "GND" H 8450 4950 50  0000 C CNN
F 2 "" H 8450 5100 50  0000 C CNN
F 3 "" H 8450 5100 50  0000 C CNN
	1    8450 5100
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 58426843
P 9300 3400
F 0 "R12" V 9380 3400 50  0000 C CNN
F 1 "R" V 9300 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 9230 3400 50  0001 C CNN
F 3 "" H 9300 3400 50  0000 C CNN
	1    9300 3400
	0    1    1    0   
$EndComp
Text GLabel 9450 3400 2    60   Output ~ 0
Sg
NoConn ~ 9150 4350
NoConn ~ 9150 4250
NoConn ~ 7750 4850
NoConn ~ 7750 4050
NoConn ~ 9150 2900
NoConn ~ 7750 3150
NoConn ~ 8450 2400
NoConn ~ 8600 2400
$Comp
L POT RV2
U 1 1 5842F400
P 6200 4200
F 0 "RV2" H 6200 4120 50  0000 C CNN
F 1 "POT" H 6200 4200 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3339H_Angular_ScrewUp" H 6200 4200 50  0001 C CNN
F 3 "" H 6200 4200 50  0000 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4050 6200 4000
Wire Wire Line
	6200 4000 5900 4000
NoConn ~ 6050 4200
$Comp
L +9V #PWR03
U 1 1 58434D64
P 8300 2400
F 0 "#PWR03" H 8300 2250 50  0001 C CNN
F 1 "+9V" H 8300 2540 50  0000 C CNN
F 2 "" H 8300 2400 50  0000 C CNN
F 3 "" H 8300 2400 50  0000 C CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR04
U 1 1 5840C4FA
P 10250 2250
F 0 "#PWR04" H 10250 2100 50  0001 C CNN
F 1 "+9V" H 10250 2390 50  0000 C CNN
F 2 "" H 10250 2250 50  0000 C CNN
F 3 "" H 10250 2250 50  0000 C CNN
	1    10250 2250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5840CD42
P 10250 1750
F 0 "#PWR05" H 10250 1500 50  0001 C CNN
F 1 "GND" H 10250 1600 50  0000 C CNN
F 2 "" H 10250 1750 50  0000 C CNN
F 3 "" H 10250 1750 50  0000 C CNN
	1    10250 1750
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 5840DB36
P 10250 1750
F 0 "#FLG06" H 10250 1845 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 1930 50  0000 C CNN
F 2 "" H 10250 1750 50  0000 C CNN
F 3 "" H 10250 1750 50  0000 C CNN
	1    10250 1750
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 5840DBB7
P 10250 2250
F 0 "#FLG07" H 10250 2345 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 2430 50  0000 C CNN
F 2 "" H 10250 2250 50  0000 C CNN
F 3 "" H 10250 2250 50  0000 C CNN
	1    10250 2250
	0    1    1    0   
$EndComp
NoConn ~ 7750 4750
$Comp
L GND #PWR08
U 1 1 5847B2EB
P 4000 3850
F 0 "#PWR08" H 4000 3600 50  0001 C CNN
F 1 "GND" H 4000 3700 50  0000 C CNN
F 2 "" H 4000 3850 50  0000 C CNN
F 3 "" H 4000 3850 50  0000 C CNN
	1    4000 3850
	0    -1   -1   0   
$EndComp
$Comp
L POT RV1
U 1 1 5847B2F1
P 3850 3850
F 0 "RV1" H 3850 3770 50  0000 C CNN
F 1 "POT" H 3850 3850 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3339H_Angular_ScrewUp" H 3850 3850 50  0001 C CNN
F 3 "" H 3850 3850 50  0000 C CNN
	1    3850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3650 3850 3700
Wire Wire Line
	3200 3650 3850 3650
NoConn ~ 3700 3850
Wire Wire Line
	3200 1150 3300 1150
Wire Wire Line
	3300 1150 3300 6150
Connection ~ 3300 3650
Wire Wire Line
	3200 2400 3300 2400
Connection ~ 3300 2400
Wire Wire Line
	3300 4900 3200 4900
Wire Wire Line
	3300 6150 3200 6150
Connection ~ 3300 4900
$EndSCHEMATC
