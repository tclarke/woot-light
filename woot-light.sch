EESchema Schematic File Version 2
LIBS:ab2_7segment
LIBS:ab2_audio
LIBS:ab2_buffer
LIBS:ab2_capacitor
LIBS:ab2_connectivity
LIBS:ab2_dac
LIBS:ab2_diode
LIBS:ab2_gpio_expansion
LIBS:ab2_header
LIBS:ab2_idc
LIBS:ab2_inductor
LIBS:ab2_input_devices
LIBS:ab2_jumper
LIBS:ab2_lcd
LIBS:ab2_led
LIBS:ab2_memory
LIBS:ab2_opamp
LIBS:ab2_pot
LIBS:ab2_power
LIBS:ab2_regulator
LIBS:ab2_relay
LIBS:ab2_resistor
LIBS:ab2_sensor
LIBS:ab2_stepper
LIBS:ab2_supply
LIBS:ab2_terminal_block
LIBS:ab2_test
LIBS:ab2_transistor
LIBS:ab2_uC
LIBS:ab2_usb
LIBS:ab2_xtal
LIBS:74xx
LIBS:adc-dac
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:memory
LIBS:microchip
LIBS:microcontrollers
LIBS:motorola
LIBS:opto
LIBS:philips
LIBS:power
LIBS:regul
LIBS:siliconi
LIBS:texas
LIBS:transistors
LIBS:valves
LIBS:xilinx
LIBS:bluepill_breakouts
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
L BluePill_STM32F103C U?
U 1 1 5A6F76D2
P 2800 3550
F 0 "U?" H 2350 2200 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 2850 4400 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 2850 1950 50  0001 C CNN
F 3 "www.rogerclark.net" H 2800 2050 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A6F7721
P 4050 3100
F 0 "R?" V 4130 3100 50  0000 C CNN
F 1 "1K5" V 4050 3100 50  0000 C CNN
F 2 "" V 3980 3100 50  0000 C CNN
F 3 "" H 4050 3100 50  0000 C CNN
	1    4050 3100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A6F777F
P 4050 3300
F 0 "R?" V 4130 3300 50  0000 C CNN
F 1 "1K5" V 4050 3300 50  0000 C CNN
F 2 "" V 3980 3300 50  0000 C CNN
F 3 "" H 4050 3300 50  0000 C CNN
	1    4050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3150 3800 3150
Wire Wire Line
	3800 3150 3800 3100
Wire Wire Line
	3800 3100 3900 3100
Wire Wire Line
	3700 3250 3800 3250
Wire Wire Line
	3800 3250 3800 3300
Wire Wire Line
	3800 3300 3900 3300
$Comp
L Q_NPN_EBC Q?
U 1 1 5A6F7893
P 4500 2850
F 0 "Q?" H 4800 2900 50  0000 R CNN
F 1 "Q_NPN_EBC" H 5100 2800 50  0000 R CNN
F 2 "" H 4700 2950 50  0000 C CNN
F 3 "" H 4500 2850 50  0000 C CNN
	1    4500 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_EBC Q?
U 1 1 5A6F78D0
P 4500 3550
F 0 "Q?" H 4800 3600 50  0000 R CNN
F 1 "Q_NPN_EBC" H 5100 3500 50  0000 R CNN
F 2 "" H 4700 3650 50  0000 C CNN
F 3 "" H 4500 3550 50  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2850 4200 2850
Wire Wire Line
	4200 2850 4200 3100
Wire Wire Line
	4300 3550 4200 3550
Wire Wire Line
	4200 3550 4200 3300
$Comp
L GND #PWR?
U 1 1 5A6F79E8
P 4700 3900
F 0 "#PWR?" H 4700 3650 50  0001 C CNN
F 1 "GND" H 4700 3750 50  0000 C CNN
F 2 "" H 4700 3900 50  0000 C CNN
F 3 "" H 4700 3900 50  0000 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A6F7A06
P 4700 3150
F 0 "#PWR?" H 4700 2900 50  0001 C CNN
F 1 "GND" H 4700 3000 50  0000 C CNN
F 2 "" H 4700 3150 50  0000 C CNN
F 3 "" H 4700 3150 50  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3050 4700 3050
Wire Wire Line
	4700 3050 4700 3150
Wire Wire Line
	4600 3750 4700 3750
Wire Wire Line
	4700 3750 4700 3900
$Comp
L GND #PWR?
U 1 1 5A6F7A72
P 4050 2800
F 0 "#PWR?" H 4050 2550 50  0001 C CNN
F 1 "GND" H 4050 2650 50  0000 C CNN
F 2 "" H 4050 2800 50  0000 C CNN
F 3 "" H 4050 2800 50  0000 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2950 3850 2950
Wire Wire Line
	3850 2950 3850 2750
Wire Wire Line
	3850 2750 4050 2750
Wire Wire Line
	4050 2750 4050 2800
$Comp
L CONN_01X04 P?
U 1 1 5A6F7AA7
P 5600 3400
F 0 "P?" H 5600 3650 50  0000 C CNN
F 1 "CONN_01X04" V 5700 3400 50  0001 C CNN
F 2 "" H 5600 3400 50  0000 C CNN
F 3 "" H 5600 3400 50  0000 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3050 3750 3050
Wire Wire Line
	3750 3050 3750 3200
Wire Wire Line
	3750 3200 4500 3200
Wire Wire Line
	4500 3200 4500 3100
Wire Wire Line
	4500 3100 5300 3100
Wire Wire Line
	5300 3100 5300 3250
Wire Wire Line
	5300 3250 5300 3550
Wire Wire Line
	5300 3550 5400 3550
Wire Wire Line
	5300 3250 5400 3250
Connection ~ 5300 3250
Wire Wire Line
	4600 2650 5150 2650
Wire Wire Line
	5150 2650 5150 3350
Wire Wire Line
	5150 3350 5400 3350
Wire Wire Line
	4600 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3450
Wire Wire Line
	5050 3450 5400 3450
Text Label 5700 3250 0    60   ~ 0
Light1_Pos
Text Label 5700 3350 0    60   ~ 0
Light1_Neg
Text Label 5700 3450 0    60   ~ 0
Light2_Neg
Text Label 5700 3550 0    60   ~ 0
Light2_Pos
$EndSCHEMATC
