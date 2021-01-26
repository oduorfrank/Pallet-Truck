EESchema Schematic File Version 4
EELAYER 30 0
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
L Motor:Motor_DC MOTOR_B1
U 1 1 5FB1B1EA
P 7700 1700
F 0 "MOTOR_B1" H 7858 1696 50  0000 L CNN
F 1 "Motor_DC" H 7858 1605 50  0000 L CNN
F 2 "" H 7700 1610 50  0001 C CNN
F 3 "~" H 7700 1610 50  0001 C CNN
	1    7700 1700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC MOTOR_A1
U 1 1 5FB1B3BC
P 8600 1650
F 0 "MOTOR_A1" H 8758 1646 50  0000 L CNN
F 1 "Motor_DC" H 8758 1555 50  0000 L CNN
F 2 "" H 8600 1560 50  0001 C CNN
F 3 "~" H 8600 1560 50  0001 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
Text GLabel 9600 5300 0    50   Output ~ 0
GPIO1
Text GLabel 8600 1250 1    50   Input ~ 0
OUT1
Text GLabel 8600 2200 3    50   Input ~ 0
OUT2
Text GLabel 7700 2250 3    50   Input ~ 0
OUT3
Text GLabel 7700 1250 1    50   Input ~ 0
OUT4
Text GLabel 6850 1900 2    50   Output ~ 0
OUT1
Text GLabel 6850 2000 2    50   Output ~ 0
OUT2
Text GLabel 6850 2200 2    50   Output ~ 0
OUT3
Text GLabel 6850 2300 2    50   Output ~ 0
OUT4
Wire Wire Line
	8600 1250 8600 1450
Wire Wire Line
	8600 1950 8600 2200
Wire Wire Line
	7700 1250 7700 1500
Wire Wire Line
	7700 2000 7700 2250
Wire Wire Line
	6850 2000 6700 2000
Wire Wire Line
	6850 2300 6700 2300
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0101
U 1 1 5FB6AB1B
P 6100 3000
F 0 "#GND0101" H 6150 2950 45  0001 L BNN
F 1 "GND" H 6100 2830 45  0000 C CNN
F 2 "" H 6100 2900 60  0001 C CNN
F 3 "" H 6100 2900 60  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
Text GLabel 6200 1150 1    50   Output ~ 0
+5V
Text GLabel 6100 1150 1    50   Input ~ 0
+11.1V
Text GLabel 5250 1800 0    50   Input ~ 0
ENA
Text GLabel 5250 2200 0    50   Input ~ 0
ENB
Text GLabel 5250 1600 0    50   Input ~ 0
IN1
Text GLabel 5250 1700 0    50   Input ~ 0
IN2
Text GLabel 5250 2000 0    50   Input ~ 0
IN3
Text GLabel 5250 2100 0    50   Input ~ 0
IN4
Wire Wire Line
	5500 1600 5250 1600
Wire Wire Line
	5500 1700 5250 1700
Wire Wire Line
	5500 1800 5250 1800
Wire Wire Line
	5500 2000 5250 2000
Wire Wire Line
	5500 2100 5250 2100
Wire Wire Line
	5500 2200 5250 2200
Wire Wire Line
	6100 2800 6100 3000
Wire Wire Line
	6850 2200 6700 2200
Wire Wire Line
	6850 1900 6700 1900
Wire Wire Line
	6200 1400 6200 1150
Wire Wire Line
	6100 1400 6100 1150
$Comp
L Driver_Motor:L298HN U2
U 1 1 5FB27C34
P 6100 2100
F 0 "U2" H 5800 2950 50  0000 C CNN
F 1 "L298HN" H 5900 2850 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 6150 1450 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 6250 2350 50  0001 C CNN
	1    6100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4550 10150 4750
Wire Wire Line
	10150 4750 10600 4750
Connection ~ 10150 4750
$Comp
L Wireless-Pallet-rescue:TCRT5000-TCRT5000 U4
U 1 1 5FB433C3
P 10200 5200
F 0 "U4" H 10200 5565 50  0000 C CNN
F 1 "TCRT5000" H 10200 5474 50  0000 C CNN
F 2 "" H 10200 5200 50  0001 L BNN
F 3 "" H 10200 5200 50  0001 L BNN
F 4 "7.2mm" H 10200 5200 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "1.7" H 10200 5200 50  0001 L BNN "PARTREV"
F 6 "Manufacturer recommendations" H 10200 5200 50  0001 L BNN "STANDARD"
F 7 "Vishay" H 10200 5200 50  0001 L BNN "MANUFACTURER"
	1    10200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5100 9800 5100
Wire Wire Line
	9800 5100 9800 4750
Wire Wire Line
	9800 4750 10150 4750
Wire Wire Line
	10600 4750 10600 5100
Wire Wire Line
	10600 5100 10500 5100
Wire Wire Line
	9900 5300 9800 5300
Wire Wire Line
	9800 5300 9800 5400
Wire Wire Line
	10500 5300 10600 5300
$Comp
L Wireless-Pallet-rescue:220OHM-0603-1_10W-1%-SparkFun-Resistors R4
U 1 1 5FB433D2
P 10600 5600
F 0 "R4" V 10505 5668 45  0000 L CNN
F 1 "220OHM" V 10589 5668 45  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 10600 5750 20  0001 C CNN
F 3 "" H 10600 5600 60  0001 C CNN
F 4 "RES-07861" V 10684 5668 60  0000 L CNN "Field4"
	1    10600 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	10600 5300 10600 5400
$Comp
L Wireless-Pallet-rescue:10KOHM-0603-1_10W-1%-SparkFun-Resistors R3
U 1 1 5FB433DA
P 9800 5600
F 0 "R3" V 9705 5668 45  0000 L CNN
F 1 "10KOHM" V 9789 5668 45  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 9800 5750 20  0001 C CNN
F 3 "" H 9800 5600 60  0001 C CNN
F 4 "RES-00824" V 9884 5668 60  0000 L CNN "Field4"
	1    9800 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5800 9800 5950
Wire Wire Line
	9800 5950 10200 5950
Wire Wire Line
	10600 5950 10600 5800
Connection ~ 10200 5950
Wire Wire Line
	10200 5950 10600 5950
Wire Wire Line
	9600 5300 9800 5300
Connection ~ 9800 5300
Wire Wire Line
	10200 5950 10200 6100
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0102
U 1 1 5FB433E3
P 10200 6100
F 0 "#GND0102" H 10250 6050 45  0001 L BNN
F 1 "GND" H 10200 5930 45  0000 C CNN
F 2 "" H 10200 6000 60  0001 C CNN
F 3 "" H 10200 6000 60  0001 C CNN
	1    10200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4700 8400 4700
Connection ~ 7950 4700
Wire Wire Line
	7950 4550 7950 4700
Text GLabel 10150 4550 1    50   Input ~ 0
+5V
Text GLabel 7950 4550 1    50   Input ~ 0
+5V
Wire Wire Line
	8000 5900 8000 6100
Connection ~ 7600 5250
Wire Wire Line
	7400 5250 7600 5250
Text GLabel 7400 5250 0    50   Output ~ 0
GPIO3
Wire Wire Line
	8000 5900 8400 5900
Connection ~ 8000 5900
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0103
U 1 1 5FB30987
P 8000 6100
F 0 "#GND0103" H 8050 6050 45  0001 L BNN
F 1 "GND" H 8000 5930 45  0000 C CNN
F 2 "" H 8000 6000 60  0001 C CNN
F 3 "" H 8000 6000 60  0001 C CNN
	1    8000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5900 8400 5750
Wire Wire Line
	7600 5900 8000 5900
Wire Wire Line
	7600 5750 7600 5900
$Comp
L Wireless-Pallet-rescue:10KOHM-0603-1_10W-1%-SparkFun-Resistors R1
U 1 1 5FB2D15C
P 7600 5550
F 0 "R1" V 7505 5618 45  0000 L CNN
F 1 "10KOHM" V 7589 5618 45  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 7600 5700 20  0001 C CNN
F 3 "" H 7600 5550 60  0001 C CNN
F 4 "RES-00824" V 7684 5618 60  0000 L CNN "Field4"
	1    7600 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 5250 8400 5350
$Comp
L Wireless-Pallet-rescue:220OHM-0603-1_10W-1%-SparkFun-Resistors R2
U 1 1 5FB2ADE9
P 8400 5550
F 0 "R2" V 8305 5618 45  0000 L CNN
F 1 "220OHM" V 8389 5618 45  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 8400 5700 20  0001 C CNN
F 3 "" H 8400 5550 60  0001 C CNN
F 4 "RES-07861" V 8484 5618 60  0000 L CNN "Field4"
	1    8400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 5250 8400 5250
Wire Wire Line
	7600 5250 7600 5350
Wire Wire Line
	7700 5250 7600 5250
Wire Wire Line
	8400 5050 8300 5050
Wire Wire Line
	8400 4700 8400 5050
Wire Wire Line
	7600 4700 7950 4700
Wire Wire Line
	7600 5050 7600 4700
Wire Wire Line
	7700 5050 7600 5050
$Comp
L Wireless-Pallet-rescue:TCRT5000-TCRT5000 U3
U 1 1 5FB1CB51
P 8000 5150
F 0 "U3" H 8000 5515 50  0000 C CNN
F 1 "TCRT5000" H 8000 5424 50  0000 C CNN
F 2 "" H 8000 5150 50  0001 L BNN
F 3 "" H 8000 5150 50  0001 L BNN
F 4 "7.2mm" H 8000 5150 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "1.7" H 8000 5150 50  0001 L BNN "PARTREV"
F 6 "Manufacturer recommendations" H 8000 5150 50  0001 L BNN "STANDARD"
F 7 "Vishay" H 8000 5150 50  0001 L BNN "MANUFACTURER"
	1    8000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5350 5250 5450
Wire Wire Line
	5350 5350 5250 5350
Wire Wire Line
	5250 5050 5350 5050
Wire Wire Line
	5250 4850 5250 5050
Text GLabel 5250 4850 1    50   Input ~ 0
+5V
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0104
U 1 1 5FB92747
P 5250 5450
F 0 "#GND0104" H 5300 5400 45  0001 L BNN
F 1 "GND" H 5250 5280 45  0000 C CNN
F 2 "" H 5250 5350 60  0001 C CNN
F 3 "" H 5250 5350 60  0001 C CNN
	1    5250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5250 5350 5250
Wire Wire Line
	5200 5150 5350 5150
Text GLabel 5200 5250 0    50   Output ~ 0
ECHO
Text GLabel 5200 5150 0    50   Input ~ 0
TRIG
$Comp
L Wireless-Pallet-rescue:HC-SR04-HC-SR04 U5
U 1 1 5FB1C2BB
P 5550 5150
F 0 "U5" H 5980 5146 50  0000 L CNN
F 1 "HC-SR04" H 5980 5055 50  0000 L CNN
F 2 "" H 5550 5150 50  0001 L BNN
F 3 "" H 5550 5150 50  0001 L BNN
F 4 "Osepp" H 5550 5150 50  0001 L BNN "MANUFACTURER"
	1    5550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5550 1550 5750
Wire Wire Line
	1700 5550 1700 5750
Wire Wire Line
	1850 5550 1850 5750
Wire Wire Line
	2000 5550 2000 5750
Wire Wire Line
	2300 5550 2300 5850
Wire Wire Line
	2450 5550 2450 5750
Wire Wire Line
	2600 5550 2600 5750
Text GLabel 1550 5750 3    50   Output ~ 0
SDA
Text GLabel 1700 5750 3    50   Output ~ 0
SCK
Text GLabel 1850 5750 3    50   Output ~ 0
MOSI
Text GLabel 2000 5750 3    50   Output ~ 0
MISO
Text GLabel 2450 5750 3    50   Input ~ 0
RST
Text GLabel 2600 5750 3    50   Input ~ 0
3.3V
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0105
U 1 1 5FB58D7F
P 2300 5850
F 0 "#GND0105" H 2350 5800 45  0001 L BNN
F 1 "GND" H 2300 5680 45  0000 C CNN
F 2 "" H 2300 5750 60  0001 C CNN
F 3 "" H 2300 5750 60  0001 C CNN
	1    2300 5850
	1    0    0    -1  
$EndComp
$Comp
L Wireless-Pallet-rescue:RFID-RC522-MODULE-rfid-rc522-module P1
U 1 1 5FB57DD2
P 2100 5000
F 0 "P1" H 2728 4920 60  0000 L CNN
F 1 "RFID-RC522-MODULE" H 2728 4814 60  0000 L CNN
F 2 "" H 2100 5000 60  0001 C CNN
F 3 "" H 2100 5000 60  0000 C CNN
	1    2100 5000
	1    0    0    -1  
$EndComp
$Comp
L Wireless-Pallet-rescue:LIPO-OUTLINE2000-SparkFun-Batteries BT1
U 1 1 5FB28CD3
P 9600 1650
F 0 "BT1" H 9600 1800 45  0001 C CNN
F 1 "+11.1V" H 9600 1600 45  0001 C CNN
F 2 "" H 9600 1850 20  0001 C CNN
F 3 "" H 9600 1650 50  0001 C CNN
F 4 "BATT-08764" H 9728 1700 60  0000 L CNN "Field4"
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP-12E U1
U 1 1 5FB14709
P 2700 2100
F 0 "U1" H 2300 3000 50  0000 C CNN
F 1 "ESP-12E" H 2400 2900 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 2700 2100 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 2350 2200 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
Text GLabel 2700 1150 1    50   Input ~ 0
+5V
$Comp
L Wireless-Pallet-rescue:GND-SparkFun-PowerSymbols #GND0106
U 1 1 5FB86AF8
P 2700 2950
F 0 "#GND0106" H 2750 2900 45  0001 L BNN
F 1 "GND" H 2700 2780 45  0000 C CNN
F 2 "" H 2700 2850 60  0001 C CNN
F 3 "" H 2700 2850 60  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1150 2700 1300
Wire Wire Line
	2700 2950 2700 2800
Text GLabel 1900 1900 0    50   Input ~ 0
ECHO
Text GLabel 3450 2500 2    50   Output ~ 0
IN1
Text GLabel 3450 1700 2    50   Output ~ 0
IN2
Text GLabel 3450 2300 2    50   Input ~ 0
SCK
Text GLabel 3450 2100 2    50   Input ~ 0
MISO
Wire Wire Line
	3300 2100 3450 2100
Wire Wire Line
	3300 2300 3450 2300
Wire Wire Line
	3300 2500 3450 2500
Wire Wire Line
	3300 1700 3450 1700
Wire Wire Line
	1900 1900 2100 1900
Text GLabel 3450 1900 2    50   Output ~ 0
IN3
Text GLabel 3450 2000 2    50   Output ~ 0
IN4
Wire Wire Line
	3300 1900 3450 1900
Wire Wire Line
	3300 2000 3450 2000
Text GLabel 3450 2200 2    50   Input ~ 0
MOSI
Text GLabel 3450 2400 2    50   Input ~ 0
ENA
Wire Wire Line
	3300 2200 3450 2200
Wire Wire Line
	3300 2400 3450 2400
Text GLabel 3450 1800 2    50   Input ~ 0
GPIO3
Text GLabel 3450 1600 2    50   Input ~ 0
GPIO1
Text GLabel 1900 2300 0    50   Output ~ 0
RST
Wire Wire Line
	1900 2300 2100 2300
Wire Wire Line
	3450 1600 3300 1600
Wire Wire Line
	3450 1800 3300 1800
Wire Notes Line width 12 rgb(72, 0, 0)
	4050 4000 4050 7750
Wire Notes Line width 12 rgb(72, 0, 0)
	6550 4000 6550 7750
Wire Notes Line width 12 rgb(72, 0, 0)
	4600 450  4600 4000
Wire Notes Line width 12 rgb(72, 0, 0)
	450  4000 11250 4000
Wire Notes Line width 12 rgb(132, 0, 0)
	4050 7750 4050 7800
Wire Notes Line width 12 rgb(132, 0, 0)
	6550 7750 6550 7800
Text GLabel 1900 2400 0    50   Input ~ 0
SS
Wire Wire Line
	1900 2400 2100 2400
Wire Wire Line
	3300 1500 3450 1500
Text GLabel 3450 1500 2    50   Output ~ 0
ENB
$EndSCHEMATC
