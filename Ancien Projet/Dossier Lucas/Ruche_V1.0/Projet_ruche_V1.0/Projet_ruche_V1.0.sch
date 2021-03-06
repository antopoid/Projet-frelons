EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Ruche"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 12BHC186P-GR:12BHC186P-GR U?
U 1 1 6041FD2E
P 11050 900
F 0 "U?" H 11500 1165 50  0000 C CNN
F 1 "12BHC186P-GR" H 11500 1074 50  0000 C CNN
F 2 "12BHC186PGR" H 11800 1000 50  0001 L CNN
F 3 "" H 11800 900 50  0001 L CNN
F 4 "Cylindrical Battery Contacts, Clips, Holders & Springs 2X18650 PARALLEL CONNECTION" H 11800 800 50  0001 L CNN "Description"
F 5 "19.8" H 11800 700 50  0001 L CNN "Height"
F 6 "12BHC186P-GR" H 11800 600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Eagle-Plastic-Devices/12BHC186P-GR/?qs=AQlKX63v8Rv70Ee1H7gwgg%3D%3D" H 11800 500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Eagle Plastic Devices" H 11800 400 50  0001 L CNN "Manufacturer_Name"
F 9 "12BHC186P-GR" H 11800 300 50  0001 L CNN "Manufacturer_Part_Number"
	1    11050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 1000 10950 1000
Wire Wire Line
	10950 1000 10950 1100
Wire Wire Line
	10950 1100 11050 1100
Wire Wire Line
	11950 900  12050 900 
Wire Wire Line
	12050 900  12050 1200
$Comp
L power:+BATT #PWR?
U 1 1 604210B5
P 9850 800
F 0 "#PWR?" H 9850 650 50  0001 C CNN
F 1 "+BATT" H 9865 973 50  0000 C CNN
F 2 "" H 9850 800 50  0001 C CNN
F 3 "" H 9850 800 50  0001 C CNN
	1    9850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60421585
P 12050 1200
F 0 "#PWR?" H 12050 950 50  0001 C CNN
F 1 "GND" H 12055 1027 50  0000 C CNN
F 2 "" H 12050 1200 50  0001 C CNN
F 3 "" H 12050 1200 50  0001 C CNN
	1    12050 1200
	1    0    0    -1  
$EndComp
Wire Notes Line
	12150 1450 12150 550 
Text Notes 10900 1400 0    50   ~ 0
Batteries holder
$Comp
L FML340A-W:FML340A-W D?
U 1 1 60422909
P 10250 900
F 0 "D?" H 10650 1167 50  0000 C CNN
F 1 "FML340A-W" H 10650 1076 50  0000 C CNN
F 2 "DIOM5025X231N" H 10750 1050 50  0001 L CNN
F 3 "" H 10750 950 50  0001 L CNN
F 4 "Schottky Diodes & Rectifiers 20-40V 3A SCHOTTKY Barrier Rectifier" H 10750 850 50  0001 L CNN "Description"
F 5 "2.31" H 10750 750 50  0001 L CNN "Height"
F 6 "583-FML340A-W" H 10750 650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Rectron/FML340A-W/?qs=5aG0NVq1C4znVqzNSkqGkQ%3D%3D" H 10750 550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Rectron" H 10750 450 50  0001 L CNN "Manufacturer_Name"
F 9 "FML340A-W" H 10750 350 50  0001 L CNN "Manufacturer_Part_Number"
	1    10250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 900  10950 900 
$Comp
L Device:Fuse F?
U 1 1 60423BB0
P 10100 900
F 0 "F?" V 9903 900 50  0000 C CNN
F 1 "Fuse" V 9994 900 50  0000 C CNN
F 2 "" V 10030 900 50  0001 C CNN
F 3 "~" H 10100 900 50  0001 C CNN
	1    10100 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 900  10250 900 
Wire Wire Line
	9950 900  9850 900 
Wire Wire Line
	9850 900  9850 800 
Wire Notes Line
	9700 550  9700 1450
Wire Notes Line
	9700 550  12150 550 
Wire Notes Line
	9700 1450 12150 1450
$Comp
L Device:LED D?
U 1 1 60424CBB
P 10500 1100
F 0 "D?" H 10500 1200 50  0000 C CNN
F 1 "LED" H 10650 1050 50  0000 C CNN
F 2 "" H 10500 1100 50  0001 C CNN
F 3 "~" H 10500 1100 50  0001 C CNN
	1    10500 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60425C2C
P 10100 1100
F 0 "R?" V 10000 1100 50  0000 C CNN
F 1 "100" V 10200 1100 50  0000 C CNN
F 2 "" V 10030 1100 50  0001 C CNN
F 3 "~" H 10100 1100 50  0001 C CNN
	1    10100 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	10750 1100 10750 1200
$Comp
L power:GND #PWR?
U 1 1 60426134
P 10750 1200
F 0 "#PWR?" H 10750 950 50  0001 C CNN
F 1 "GND" H 10755 1027 50  0000 C CNN
F 2 "" H 10750 1200 50  0001 C CNN
F 3 "" H 10750 1200 50  0001 C CNN
	1    10750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1100 10350 1100
Wire Wire Line
	10650 1100 10750 1100
Wire Wire Line
	9950 1100 9850 1100
Wire Wire Line
	9850 1100 9850 900 
Connection ~ 9850 900 
$Comp
L AP63300WU-7:AP63300WU-7 IC?
U 1 1 604284EE
P 12700 900
F 0 "IC?" H 13200 1165 50  0000 C CNN
F 1 "AP63300WU-7" H 13200 1074 50  0000 C CNN
F 2 "SOT95P280X90-6N" H 13550 1000 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP63300-AP63301.pdf" H 13550 900 50  0001 L CNN
F 4 "DCDC CONV HV BUCK TSOT26" H 13550 800 50  0001 L CNN "Description"
F 5 "0.9" H 13550 700 50  0001 L CNN "Height"
F 6 "621-AP63300WU-7" H 13550 600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/AP63300WU-7/?qs=bZr6mbWTK5nNNXnHDcrFZg%3D%3D" H 13550 500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 13550 400 50  0001 L CNN "Manufacturer_Name"
F 9 "AP63300WU-7" H 13550 300 50  0001 L CNN "Manufacturer_Part_Number"
	1    12700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 1100 13800 1100
Wire Wire Line
	13800 1100 13800 1200
$Comp
L power:GND #PWR?
U 1 1 6042908D
P 13800 1200
F 0 "#PWR?" H 13800 950 50  0001 C CNN
F 1 "GND" H 13800 1050 50  0000 C CNN
F 2 "" H 13800 1200 50  0001 C CNN
F 3 "" H 13800 1200 50  0001 C CNN
	1    13800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 900  12600 900 
Wire Wire Line
	12600 900  12600 1000
Wire Wire Line
	12600 1000 12700 1000
$Comp
L Device:C C?
U 1 1 60429F7F
P 12400 1150
F 0 "C?" H 12400 1250 50  0000 L CNN
F 1 "10??F" H 12400 1050 50  0000 L CNN
F 2 "" H 12438 1000 50  0001 C CNN
F 3 "~" H 12400 1150 50  0001 C CNN
	1    12400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 1000 12400 900 
Wire Wire Line
	12400 900  12600 900 
Connection ~ 12600 900 
Wire Wire Line
	12400 900  12400 800 
Connection ~ 12400 900 
$Comp
L power:+BATT #PWR?
U 1 1 6042B296
P 12400 800
F 0 "#PWR?" H 12400 650 50  0001 C CNN
F 1 "+BATT" H 12415 973 50  0000 C CNN
F 2 "" H 12400 800 50  0001 C CNN
F 3 "" H 12400 800 50  0001 C CNN
	1    12400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 1300 12400 1400
$Comp
L power:GND #PWR?
U 1 1 6042B7C7
P 12400 1400
F 0 "#PWR?" H 12400 1150 50  0001 C CNN
F 1 "GND" H 12405 1227 50  0000 C CNN
F 2 "" H 12400 1400 50  0001 C CNN
F 3 "" H 12400 1400 50  0001 C CNN
	1    12400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6042BF0D
P 13950 900
F 0 "C?" V 13698 900 50  0000 C CNN
F 1 "100nF" V 13789 900 50  0000 C CNN
F 2 "" H 13988 750 50  0001 C CNN
F 3 "~" H 13950 900 50  0001 C CNN
	1    13950 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 900  13700 900 
Wire Wire Line
	13700 1000 14200 1000
Wire Wire Line
	14200 1000 14200 900 
Wire Wire Line
	14200 900  14100 900 
$Comp
L Device:L L?
U 1 1 6042CD9D
P 14450 900
F 0 "L?" V 14640 900 50  0000 C CNN
F 1 "6.8??H" V 14549 900 50  0000 C CNN
F 2 "" H 14450 900 50  0001 C CNN
F 3 "~" H 14450 900 50  0001 C CNN
	1    14450 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14200 900  14300 900 
Connection ~ 14200 900 
$Comp
L Device:C C?
U 1 1 6042DC40
P 14700 1150
F 0 "C?" H 14815 1196 50  0000 L CNN
F 1 "47pF" H 14815 1105 50  0000 L CNN
F 2 "" H 14738 1000 50  0001 C CNN
F 3 "~" H 14700 1150 50  0001 C CNN
	1    14700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 1000 14700 900 
Wire Wire Line
	14700 900  14600 900 
$Comp
L Device:R R?
U 1 1 6042E7C0
P 15050 1150
F 0 "R?" H 15120 1196 50  0000 L CNN
F 1 "158k" H 15120 1105 50  0000 L CNN
F 2 "" V 14980 1150 50  0001 C CNN
F 3 "~" H 15050 1150 50  0001 C CNN
	1    15050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6042EBB3
P 15050 1650
F 0 "R?" H 15120 1696 50  0000 L CNN
F 1 "30.1k" H 15120 1605 50  0000 L CNN
F 2 "" V 14980 1650 50  0001 C CNN
F 3 "~" H 15050 1650 50  0001 C CNN
	1    15050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 900  15050 900 
Wire Wire Line
	15050 900  15050 1000
Connection ~ 14700 900 
Wire Wire Line
	15050 1300 15050 1400
Wire Wire Line
	15050 1400 14700 1400
Wire Wire Line
	14700 1400 14700 1300
Wire Wire Line
	15050 1500 15050 1400
Connection ~ 15050 1400
$Comp
L Device:C C?
U 1 1 60430515
P 15450 1150
F 0 "C?" H 15500 1250 50  0000 L CNN
F 1 "22??F" H 15500 1050 50  0000 L CNN
F 2 "" H 15488 1000 50  0001 C CNN
F 3 "~" H 15450 1150 50  0001 C CNN
	1    15450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604314B5
P 15750 1150
F 0 "C?" H 15800 1250 50  0000 L CNN
F 1 "22??F" H 15800 1050 50  0000 L CNN
F 2 "" H 15788 1000 50  0001 C CNN
F 3 "~" H 15750 1150 50  0001 C CNN
	1    15750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 1000 15450 900 
Wire Wire Line
	15450 900  15050 900 
Connection ~ 15050 900 
Wire Wire Line
	15450 900  15750 900 
Wire Wire Line
	15750 900  15750 1000
Connection ~ 15450 900 
Wire Wire Line
	15050 1800 15050 1900
Wire Wire Line
	15750 1900 15750 1300
Wire Wire Line
	15050 1900 15400 1900
Wire Wire Line
	15400 1900 15400 1950
Connection ~ 15400 1900
Wire Wire Line
	15400 1900 15450 1900
$Comp
L power:GND #PWR?
U 1 1 604342D0
P 15400 1950
F 0 "#PWR?" H 15400 1700 50  0001 C CNN
F 1 "GND" H 15405 1777 50  0000 C CNN
F 2 "" H 15400 1950 50  0001 C CNN
F 3 "" H 15400 1950 50  0001 C CNN
	1    15400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 1900 15450 1300
Connection ~ 15450 1900
Wire Wire Line
	15450 1900 15750 1900
Wire Wire Line
	15750 900  15750 850 
Connection ~ 15750 900 
$Comp
L power:+5V #PWR?
U 1 1 60435B9E
P 15750 850
F 0 "#PWR?" H 15750 700 50  0001 C CNN
F 1 "+5V" H 15765 1023 50  0000 C CNN
F 2 "" H 15750 850 50  0001 C CNN
F 3 "" H 15750 850 50  0001 C CNN
	1    15750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 1400 12600 1400
Wire Wire Line
	12600 1400 12600 1100
Wire Wire Line
	12600 1100 12700 1100
Connection ~ 14700 1400
Wire Notes Line
	16000 550  16000 2200
Wire Notes Line
	16000 2200 12250 2200
Wire Notes Line
	12250 2200 12250 550 
Wire Notes Line
	12250 550  16000 550 
$Comp
L MCU_Module:Arduino_Nano_Every A?
U 1 1 60420FD8
P 5500 5200
F 0 "A?" H 5800 4250 50  0000 C CNN
F 1 "Arduino_Nano_Every" H 6300 6050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5500 5200 50  0001 C CIN
F 3 "https://content.arduino.cc/assets/NANOEveryV3.0_sch.pdf" H 5500 5200 50  0001 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4200 5400 4100
$Comp
L power:+5V #PWR?
U 1 1 60422989
P 5400 4100
F 0 "#PWR?" H 5400 3950 50  0001 C CNN
F 1 "+5V" H 5415 4273 50  0000 C CNN
F 2 "" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 5500 6300
$Comp
L power:GND #PWR?
U 1 1 60423BEE
P 5500 6300
F 0 "#PWR?" H 5500 6050 50  0001 C CNN
F 1 "GND" H 5505 6127 50  0000 C CNN
F 2 "" H 5500 6300 50  0001 C CNN
F 3 "" H 5500 6300 50  0001 C CNN
	1    5500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4500 4900 4500
Wire Wire Line
	5000 4400 4900 4400
Text Label 4900 4400 2    50   ~ 0
UART_TX
Text Label 4900 4500 2    50   ~ 0
UART_RX
Text Label 3800 4050 2    50   ~ 0
UART_TX
Text Label 3800 4150 2    50   ~ 0
UART_RX
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 60427129
P 800 10600
F 0 "J?" H 900 10450 50  0000 C CNN
F 1 "Con_03_M" H 908 10790 50  0000 C CNN
F 2 "" H 800 10600 50  0001 C CNN
F 3 "~" H 800 10600 50  0001 C CNN
	1    800  10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 10600 1100 10600
Wire Wire Line
	1100 10600 1100 10400
Wire Wire Line
	1000 10500 1200 10500
Wire Wire Line
	1000 10700 1100 10700
Wire Wire Line
	1100 10700 1100 10800
$Comp
L power:GND #PWR?
U 1 1 6042BEBD
P 1100 10800
F 0 "#PWR?" H 1100 10550 50  0001 C CNN
F 1 "GND" H 1105 10627 50  0000 C CNN
F 2 "" H 1100 10800 50  0001 C CNN
F 3 "" H 1100 10800 50  0001 C CNN
	1    1100 10800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6042C27A
P 1100 10400
F 0 "#PWR?" H 1100 10250 50  0001 C CNN
F 1 "+5V" H 1115 10573 50  0000 C CNN
F 2 "" H 1100 10400 50  0001 C CNN
F 3 "" H 1100 10400 50  0001 C CNN
	1    1100 10400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 6042E945
P 1750 10600
F 0 "J?" H 1850 10450 50  0000 C CNN
F 1 "Con_03_M" H 1850 10800 50  0000 C CNN
F 2 "" H 1750 10600 50  0001 C CNN
F 3 "~" H 1750 10600 50  0001 C CNN
	1    1750 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 10600 2050 10600
Wire Wire Line
	2050 10600 2050 10400
Wire Wire Line
	1950 10500 2150 10500
Wire Wire Line
	1950 10700 2050 10700
Wire Wire Line
	2050 10700 2050 10800
$Comp
L power:GND #PWR?
U 1 1 6042E950
P 2050 10800
F 0 "#PWR?" H 2050 10550 50  0001 C CNN
F 1 "GND" H 2055 10627 50  0000 C CNN
F 2 "" H 2050 10800 50  0001 C CNN
F 3 "" H 2050 10800 50  0001 C CNN
	1    2050 10800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6042E956
P 2050 10400
F 0 "#PWR?" H 2050 10250 50  0001 C CNN
F 1 "+5V" H 2065 10573 50  0000 C CNN
F 2 "" H 2050 10400 50  0001 C CNN
F 3 "" H 2050 10400 50  0001 C CNN
	1    2050 10400
	1    0    0    -1  
$EndComp
Text Label 1200 10500 0    50   ~ 0
Servo1PWM
Text Label 2150 10500 0    50   ~ 0
Servo2PWM
Wire Notes Line
	2600 11050 2600 10150
Wire Notes Line
	2600 10150 700  10150
Wire Notes Line
	700  10150 700  11050
Wire Notes Line
	700  11050 2600 11050
Text Notes 1300 11000 0    50   ~ 0
Servomoteurs
Wire Wire Line
	5000 5000 4900 5000
Wire Wire Line
	5000 5100 4900 5100
Text Label 4900 5000 2    50   ~ 0
Servo1PWM
Text Label 4900 5100 2    50   ~ 0
Servo2PWM
$Comp
L Device:R R?
U 1 1 60459C5D
P 6500 5100
F 0 "R?" V 6293 5100 50  0000 C CNN
F 1 "10k" V 6384 5100 50  0000 C CNN
F 2 "" V 6430 5100 50  0001 C CNN
F 3 "~" H 6500 5100 50  0001 C CNN
	1    6500 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6045A6BC
P 6900 5100
F 0 "R?" V 6693 5100 50  0000 C CNN
F 1 "10k" V 6784 5100 50  0000 C CNN
F 2 "" V 6830 5100 50  0001 C CNN
F 3 "~" H 6900 5100 50  0001 C CNN
	1    6900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 5100 6700 5100
Wire Wire Line
	6700 5200 6700 5100
Connection ~ 6700 5100
Wire Wire Line
	6700 5100 6750 5100
Wire Wire Line
	6350 5100 6250 5100
Wire Wire Line
	6250 5100 6250 5000
Wire Wire Line
	7050 5100 7150 5100
Wire Wire Line
	7150 5100 7150 5200
$Comp
L power:GND #PWR?
U 1 1 60462606
P 7150 5200
F 0 "#PWR?" H 7150 4950 50  0001 C CNN
F 1 "GND" H 7155 5027 50  0000 C CNN
F 2 "" H 7150 5200 50  0001 C CNN
F 3 "" H 7150 5200 50  0001 C CNN
	1    7150 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 60462FE8
P 6250 5000
F 0 "#PWR?" H 6250 4850 50  0001 C CNN
F 1 "+BATT" H 6265 5173 50  0000 C CNN
F 2 "" H 6250 5000 50  0001 C CNN
F 3 "" H 6250 5000 50  0001 C CNN
	1    6250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5200 6700 5200
Wire Wire Line
	5000 4800 4900 4800
Text Label 4900 4800 2    50   ~ 0
LED_Nano
$Comp
L Device:LED D?
U 1 1 604698A1
P 3250 5150
F 0 "D?" V 3289 5032 50  0000 R CNN
F 1 "LED" V 3198 5032 50  0000 R CNN
F 2 "" H 3250 5150 50  0001 C CNN
F 3 "~" H 3250 5150 50  0001 C CNN
	1    3250 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60469E70
P 3250 5550
F 0 "R?" H 3320 5596 50  0000 L CNN
F 1 "100" H 3320 5505 50  0000 L CNN
F 2 "" V 3180 5550 50  0001 C CNN
F 3 "~" H 3250 5550 50  0001 C CNN
	1    3250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5400 3250 5300
Wire Wire Line
	3250 5700 3250 5800
$Comp
L power:GND #PWR?
U 1 1 6046E626
P 3250 5800
F 0 "#PWR?" H 3250 5550 50  0001 C CNN
F 1 "GND" H 3255 5627 50  0000 C CNN
F 2 "" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Text Label 3250 4900 1    50   ~ 0
LED_Nano
Wire Wire Line
	3250 5000 3250 4900
$Comp
L Device:C C?
U 1 1 60478E53
P 3600 5550
F 0 "C?" H 3715 5596 50  0000 L CNN
F 1 "C" H 3715 5505 50  0000 L CNN
F 2 "" H 3638 5400 50  0001 C CNN
F 3 "~" H 3600 5550 50  0001 C CNN
	1    3600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5400 3600 5300
$Comp
L power:+5V #PWR?
U 1 1 6047B68D
P 3600 5300
F 0 "#PWR?" H 3600 5150 50  0001 C CNN
F 1 "+5V" H 3615 5473 50  0000 C CNN
F 2 "" H 3600 5300 50  0001 C CNN
F 3 "" H 3600 5300 50  0001 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5700 3600 5800
$Comp
L power:GND #PWR?
U 1 1 6047DFC5
P 3600 5800
F 0 "#PWR?" H 3600 5550 50  0001 C CNN
F 1 "GND" H 3605 5627 50  0000 C CNN
F 2 "" H 3600 5800 50  0001 C CNN
F 3 "" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 604821B9
P 1000 8550
F 0 "J?" H 1100 8300 50  0000 C CNN
F 1 "Con_05_M" H 1050 8850 50  0000 C CNN
F 2 "" H 1000 8550 50  0001 C CNN
F 3 "~" H 1000 8550 50  0001 C CNN
	1    1000 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 8750 1300 8750
Wire Wire Line
	1300 8750 1300 8850
Wire Wire Line
	1200 8650 1300 8650
Wire Wire Line
	1300 8650 1300 8250
Wire Wire Line
	1200 8550 1350 8550
Wire Wire Line
	1200 8350 1350 8350
$Comp
L power:GND #PWR?
U 1 1 6048F1E5
P 1300 8850
F 0 "#PWR?" H 1300 8600 50  0001 C CNN
F 1 "GND" H 1305 8677 50  0000 C CNN
F 2 "" H 1300 8850 50  0001 C CNN
F 3 "" H 1300 8850 50  0001 C CNN
	1    1300 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6048FBCB
P 700 8550
F 0 "C?" H 815 8596 50  0000 L CNN
F 1 "C" H 815 8505 50  0000 L CNN
F 2 "" H 738 8400 50  0001 C CNN
F 3 "~" H 700 8550 50  0001 C CNN
	1    700  8550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 604904A8
P 1300 8250
F 0 "#PWR?" H 1300 8100 50  0001 C CNN
F 1 "+3.3V" H 1315 8423 50  0000 C CNN
F 2 "" H 1300 8250 50  0001 C CNN
F 3 "" H 1300 8250 50  0001 C CNN
	1    1300 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  8400 700  8300
Wire Wire Line
	700  8700 700  8800
$Comp
L power:GND #PWR?
U 1 1 60496345
P 700 8800
F 0 "#PWR?" H 700 8550 50  0001 C CNN
F 1 "GND" H 705 8627 50  0000 C CNN
F 2 "" H 700 8800 50  0001 C CNN
F 3 "" H 700 8800 50  0001 C CNN
	1    700  8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60496505
P 700 8300
F 0 "#PWR?" H 700 8150 50  0001 C CNN
F 1 "+3.3V" H 715 8473 50  0000 C CNN
F 2 "" H 700 8300 50  0001 C CNN
F 3 "" H 700 8300 50  0001 C CNN
	1    700  8300
	1    0    0    -1  
$EndComp
Text Label 2200 8400 1    50   ~ 0
Micro_OUT
Text Label 1750 8550 0    50   ~ 0
Micro_GAIN
Text Label 1750 8350 0    50   ~ 0
Micro_AR
Text Label 6100 5300 0    50   ~ 0
Micro_OUT
Text Label 6900 5700 0    50   ~ 0
Micro_GAIN
Text Label 6900 5500 0    50   ~ 0
Micro_AR
Wire Notes Line
	550  9100 550  8000
Text Notes 1650 8950 0    50   ~ 0
Micro
Wire Wire Line
	6000 5300 6100 5300
$Comp
L Device:C C?
U 1 1 604A9B99
P 2200 8700
F 0 "C?" H 2250 8800 50  0000 L CNN
F 1 "100??F" H 2200 8600 50  0000 L CNN
F 2 "" H 2238 8550 50  0001 C CNN
F 3 "~" H 2200 8700 50  0001 C CNN
	1    2200 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8550 2200 8450
Wire Wire Line
	2200 8450 2200 8400
Connection ~ 2200 8450
Wire Wire Line
	2200 8850 2200 8950
$Comp
L power:GND #PWR?
U 1 1 604B4704
P 2200 8950
F 0 "#PWR?" H 2200 8700 50  0001 C CNN
F 1 "GND" H 2300 8850 50  0000 C CNN
F 2 "" H 2200 8950 50  0001 C CNN
F 3 "" H 2200 8950 50  0001 C CNN
	1    2200 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5300 4900 5300
$Comp
L Device:R R?
U 1 1 604C2D95
P 1500 8350
F 0 "R?" V 1293 8350 50  0000 C CNN
F 1 "0" V 1384 8350 50  0000 C CNN
F 2 "" V 1430 8350 50  0001 C CNN
F 3 "~" H 1500 8350 50  0001 C CNN
	1    1500 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 8350 1750 8350
Wire Wire Line
	1200 8450 2200 8450
Wire Notes Line
	550  8000 2450 8000
Wire Notes Line
	2450 8000 2450 9100
Wire Notes Line
	2450 9100 550  9100
Text Label 4900 5300 2    50   ~ 0
Micro_AR
Text Label 4900 5200 2    50   ~ 0
Micro_GAIN
$Comp
L Device:R R?
U 1 1 604E0209
P 1500 8550
F 0 "R?" V 1293 8550 50  0000 C CNN
F 1 "0" V 1384 8550 50  0000 C CNN
F 2 "" V 1430 8550 50  0001 C CNN
F 3 "~" H 1500 8550 50  0001 C CNN
	1    1500 8550
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 8550 1750 8550
Wire Wire Line
	4900 5200 5000 5200
Text Notes 13150 1950 0    50   ~ 0
Alimentation Batt --> +5V
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A?
U 1 1 604FECA1
P 11800 6450
F 0 "A?" H 12150 7150 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 11300 7200 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 12075 5700 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 11900 6150 50  0001 C CNN
	1    11800 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 60500E26
P 12600 6450
F 0 "J?" H 12650 6600 50  0000 C CNN
F 1 "Con_04_M" V 12500 6400 50  0000 C CNN
F 2 "" H 12600 6450 50  0001 C CNN
F 3 "~" H 12600 6450 50  0001 C CNN
	1    12600 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12300 6350 12400 6350
Wire Wire Line
	12300 6450 12400 6450
Wire Wire Line
	12300 6550 12400 6550
Wire Wire Line
	12300 6650 12400 6650
Wire Wire Line
	11300 6950 11400 6950
Wire Wire Line
	11300 6850 11400 6850
Wire Wire Line
	11300 6750 11400 6750
Wire Wire Line
	11300 6550 11400 6550
Wire Wire Line
	11300 6450 11400 6450
Wire Wire Line
	11300 6150 11400 6150
Wire Wire Line
	11300 6050 11400 6050
Wire Wire Line
	11800 5750 11800 5650
Wire Wire Line
	12000 5750 12000 5650
Wire Wire Line
	11800 7250 11800 7300
Wire Wire Line
	11800 7300 11900 7300
Wire Wire Line
	12000 7300 12000 7250
Wire Wire Line
	11900 7300 11900 7350
Connection ~ 11900 7300
Wire Wire Line
	11900 7300 12000 7300
$Comp
L power:GND #PWR?
U 1 1 6053EB94
P 11900 7350
F 0 "#PWR?" H 11900 7100 50  0001 C CNN
F 1 "GND" H 11905 7177 50  0000 C CNN
F 2 "" H 11900 7350 50  0001 C CNN
F 3 "" H 11900 7350 50  0001 C CNN
	1    11900 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6053F7BD
P 12000 5650
F 0 "#PWR?" H 12000 5500 50  0001 C CNN
F 1 "+12V" H 12000 5800 50  0000 C CNN
F 2 "" H 12000 5650 50  0001 C CNN
F 3 "" H 12000 5650 50  0001 C CNN
	1    12000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60558E9F
P 15050 6500
F 0 "C?" H 15100 6600 50  0000 L CNN
F 1 "100??F" H 15100 6400 50  0000 L CNN
F 2 "" H 15088 6350 50  0001 C CNN
F 3 "~" H 15050 6500 50  0001 C CNN
	1    15050 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 6350 15050 6250
Wire Wire Line
	15050 6650 15050 6750
$Comp
L power:GND #PWR?
U 1 1 60562857
P 15050 6750
F 0 "#PWR?" H 15050 6500 50  0001 C CNN
F 1 "GND" H 15055 6577 50  0000 C CNN
F 2 "" H 15050 6750 50  0001 C CNN
F 3 "" H 15050 6750 50  0001 C CNN
	1    15050 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60563A88
P 11150 6750
F 0 "R?" V 11150 6750 50  0000 C CNN
F 1 "0" V 11100 6900 50  0000 C CNN
F 2 "" V 11080 6750 50  0001 C CNN
F 3 "~" H 11150 6750 50  0001 C CNN
	1    11150 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60564095
P 11150 6850
F 0 "R?" V 11150 6850 50  0000 C CNN
F 1 "0" V 11100 7000 50  0000 C CNN
F 2 "" V 11080 6850 50  0001 C CNN
F 3 "~" H 11150 6850 50  0001 C CNN
	1    11150 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60568715
P 11150 6950
F 0 "R?" V 11150 6950 50  0000 C CNN
F 1 "0" V 11100 7100 50  0000 C CNN
F 2 "" V 11080 6950 50  0001 C CNN
F 3 "~" H 11150 6950 50  0001 C CNN
	1    11150 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	11000 6950 10900 6950
Wire Wire Line
	10900 6650 10900 6750
Wire Wire Line
	11000 6750 10900 6750
Connection ~ 10900 6750
Wire Wire Line
	10900 6750 10900 6850
Wire Wire Line
	11000 6850 10900 6850
Connection ~ 10900 6850
Wire Wire Line
	10900 6850 10900 6950
Text Label 11300 6550 2    50   ~ 0
Mot1_DIR
Text Label 11300 6450 2    50   ~ 0
Mot1_STEP
Text Label 4900 5500 2    50   ~ 0
Mot1_DIR
Text Label 4900 5400 2    50   ~ 0
Mot1_STEP
Wire Wire Line
	11300 6150 11300 6050
$Comp
L power:+3.3V #PWR?
U 1 1 605B4DFB
P 15050 6250
F 0 "#PWR?" H 15050 6100 50  0001 C CNN
F 1 "+3.3V" H 15065 6423 50  0000 C CNN
F 2 "" H 15050 6250 50  0001 C CNN
F 3 "" H 15050 6250 50  0001 C CNN
	1    15050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605B5C43
P 10900 6650
F 0 "#PWR?" H 10900 6500 50  0001 C CNN
F 1 "+3.3V" H 10750 6700 50  0000 C CNN
F 2 "" H 10900 6650 50  0001 C CNN
F 3 "" H 10900 6650 50  0001 C CNN
	1    10900 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605B65D0
P 11800 5650
F 0 "#PWR?" H 11800 5500 50  0001 C CNN
F 1 "+3.3V" H 11750 5800 50  0000 C CNN
F 2 "" H 11800 5650 50  0001 C CNN
F 3 "" H 11800 5650 50  0001 C CNN
	1    11800 5650
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A?
U 1 1 605C1986
P 13950 6450
F 0 "A?" H 14300 7150 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 13450 7200 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 14225 5700 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 14050 6150 50  0001 C CNN
	1    13950 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 605C198C
P 14750 6450
F 0 "J?" H 14800 6600 50  0000 C CNN
F 1 "Con_04_M" V 14650 6400 50  0000 C CNN
F 2 "" H 14750 6450 50  0001 C CNN
F 3 "~" H 14750 6450 50  0001 C CNN
	1    14750 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14450 6350 14550 6350
Wire Wire Line
	14450 6450 14550 6450
Wire Wire Line
	14450 6550 14550 6550
Wire Wire Line
	14450 6650 14550 6650
Wire Wire Line
	13450 6950 13550 6950
Wire Wire Line
	13450 6850 13550 6850
Wire Wire Line
	13450 6750 13550 6750
Wire Wire Line
	13450 6550 13550 6550
Wire Wire Line
	13450 6450 13550 6450
Wire Wire Line
	13450 6150 13550 6150
Wire Wire Line
	13450 6050 13550 6050
Wire Wire Line
	13950 5750 13950 5650
Wire Wire Line
	14150 5750 14150 5650
Wire Wire Line
	13950 7250 13950 7300
Wire Wire Line
	13950 7300 14050 7300
Wire Wire Line
	14150 7300 14150 7250
Wire Wire Line
	14050 7300 14050 7350
Connection ~ 14050 7300
Wire Wire Line
	14050 7300 14150 7300
$Comp
L power:GND #PWR?
U 1 1 605C19A6
P 14050 7350
F 0 "#PWR?" H 14050 7100 50  0001 C CNN
F 1 "GND" H 14055 7177 50  0000 C CNN
F 2 "" H 14050 7350 50  0001 C CNN
F 3 "" H 14050 7350 50  0001 C CNN
	1    14050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 605C19AC
P 14150 5650
F 0 "#PWR?" H 14150 5500 50  0001 C CNN
F 1 "+12V" H 14150 5800 50  0000 C CNN
F 2 "" H 14150 5650 50  0001 C CNN
F 3 "" H 14150 5650 50  0001 C CNN
	1    14150 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 605C19B2
P 13300 6750
F 0 "R?" V 13300 6750 50  0000 C CNN
F 1 "0" V 13250 6900 50  0000 C CNN
F 2 "" V 13230 6750 50  0001 C CNN
F 3 "~" H 13300 6750 50  0001 C CNN
	1    13300 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 605C19B8
P 13300 6850
F 0 "R?" V 13300 6850 50  0000 C CNN
F 1 "0" V 13250 7000 50  0000 C CNN
F 2 "" V 13230 6850 50  0001 C CNN
F 3 "~" H 13300 6850 50  0001 C CNN
	1    13300 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 605C19BE
P 13300 6950
F 0 "R?" V 13300 6950 50  0000 C CNN
F 1 "0" V 13250 7100 50  0000 C CNN
F 2 "" V 13230 6950 50  0001 C CNN
F 3 "~" H 13300 6950 50  0001 C CNN
	1    13300 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	13150 6950 13050 6950
Wire Wire Line
	13050 6650 13050 6750
Wire Wire Line
	13150 6750 13050 6750
Connection ~ 13050 6750
Wire Wire Line
	13050 6750 13050 6850
Wire Wire Line
	13150 6850 13050 6850
Connection ~ 13050 6850
Wire Wire Line
	13050 6850 13050 6950
Text Label 13450 6550 2    50   ~ 0
Mot2_DIR
Text Label 13450 6450 2    50   ~ 0
Mot2_STEP
Wire Wire Line
	13450 6150 13450 6050
$Comp
L power:+3.3V #PWR?
U 1 1 605C19CF
P 13050 6650
F 0 "#PWR?" H 13050 6500 50  0001 C CNN
F 1 "+3.3V" H 12900 6700 50  0000 C CNN
F 2 "" H 13050 6650 50  0001 C CNN
F 3 "" H 13050 6650 50  0001 C CNN
	1    13050 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605C19D5
P 13950 5650
F 0 "#PWR?" H 13950 5500 50  0001 C CNN
F 1 "+3.3V" H 13900 5800 50  0000 C CNN
F 2 "" H 13950 5650 50  0001 C CNN
F 3 "" H 13950 5650 50  0001 C CNN
	1    13950 5650
	1    0    0    -1  
$EndComp
Wire Notes Line
	10600 7600 10600 5450
Wire Notes Line
	12750 5450 12750 7600
Wire Notes Line
	14900 5450 14900 7600
Text Label 6100 5900 0    50   ~ 0
Mot2_DIR
Text Label 6100 5800 0    50   ~ 0
Mot2_STEP
$Comp
L Device:C C?
U 1 1 605F3B0B
P 15400 6500
F 0 "C?" H 15450 6600 50  0000 L CNN
F 1 "100??F" H 15450 6400 50  0000 L CNN
F 2 "" H 15438 6350 50  0001 C CNN
F 3 "~" H 15400 6500 50  0001 C CNN
	1    15400 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15400 6350 15400 6250
Wire Wire Line
	15400 6650 15400 6750
$Comp
L power:GND #PWR?
U 1 1 605F3B13
P 15400 6750
F 0 "#PWR?" H 15400 6500 50  0001 C CNN
F 1 "GND" H 15405 6577 50  0000 C CNN
F 2 "" H 15400 6750 50  0001 C CNN
F 3 "" H 15400 6750 50  0001 C CNN
	1    15400 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605F3B19
P 15400 6250
F 0 "#PWR?" H 15400 6100 50  0001 C CNN
F 1 "+3.3V" H 15415 6423 50  0000 C CNN
F 2 "" H 15400 6250 50  0001 C CNN
F 3 "" H 15400 6250 50  0001 C CNN
	1    15400 6250
	1    0    0    -1  
$EndComp
Wire Notes Line
	15700 5450 15700 7600
Wire Notes Line
	10600 7600 15700 7600
Wire Notes Line
	10600 5450 15700 5450
Text Notes 10700 7550 0    50   ~ 0
Moteur 1
Text Notes 12850 7550 0    50   ~ 0
Moteur 2
Wire Wire Line
	6000 5900 6100 5900
Wire Wire Line
	6000 5800 6100 5800
Wire Wire Line
	5000 5500 4900 5500
Wire Wire Line
	5000 5400 4900 5400
$Comp
L AP63300WU-7:AP63300WU-7 IC?
U 1 1 6068C18F
P 12700 2600
F 0 "IC?" H 13200 2865 50  0000 C CNN
F 1 "AP63300WU-7" H 13200 2774 50  0000 C CNN
F 2 "SOT95P280X90-6N" H 13550 2700 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP63300-AP63301.pdf" H 13550 2600 50  0001 L CNN
F 4 "DCDC CONV HV BUCK TSOT26" H 13550 2500 50  0001 L CNN "Description"
F 5 "0.9" H 13550 2400 50  0001 L CNN "Height"
F 6 "621-AP63300WU-7" H 13550 2300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/AP63300WU-7/?qs=bZr6mbWTK5nNNXnHDcrFZg%3D%3D" H 13550 2200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Diodes Inc." H 13550 2100 50  0001 L CNN "Manufacturer_Name"
F 9 "AP63300WU-7" H 13550 2000 50  0001 L CNN "Manufacturer_Part_Number"
	1    12700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 2800 13800 2800
Wire Wire Line
	13800 2800 13800 2900
$Comp
L power:GND #PWR?
U 1 1 6068C197
P 13800 2900
F 0 "#PWR?" H 13800 2650 50  0001 C CNN
F 1 "GND" H 13800 2750 50  0000 C CNN
F 2 "" H 13800 2900 50  0001 C CNN
F 3 "" H 13800 2900 50  0001 C CNN
	1    13800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 2600 12600 2600
Wire Wire Line
	12600 2600 12600 2700
Wire Wire Line
	12600 2700 12700 2700
$Comp
L Device:C C?
U 1 1 6068C1A0
P 12400 2850
F 0 "C?" H 12400 2950 50  0000 L CNN
F 1 "10??F" H 12400 2750 50  0000 L CNN
F 2 "" H 12438 2700 50  0001 C CNN
F 3 "~" H 12400 2850 50  0001 C CNN
	1    12400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 2700 12400 2600
Wire Wire Line
	12400 2600 12600 2600
Connection ~ 12600 2600
Wire Wire Line
	12400 2600 12400 2500
Connection ~ 12400 2600
$Comp
L power:+BATT #PWR?
U 1 1 6068C1AB
P 12400 2500
F 0 "#PWR?" H 12400 2350 50  0001 C CNN
F 1 "+BATT" H 12415 2673 50  0000 C CNN
F 2 "" H 12400 2500 50  0001 C CNN
F 3 "" H 12400 2500 50  0001 C CNN
	1    12400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 3000 12400 3100
$Comp
L power:GND #PWR?
U 1 1 6068C1B2
P 12400 3100
F 0 "#PWR?" H 12400 2850 50  0001 C CNN
F 1 "GND" H 12405 2927 50  0000 C CNN
F 2 "" H 12400 3100 50  0001 C CNN
F 3 "" H 12400 3100 50  0001 C CNN
	1    12400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6068C1B8
P 13950 2600
F 0 "C?" V 13698 2600 50  0000 C CNN
F 1 "100nF" V 13789 2600 50  0000 C CNN
F 2 "" H 13988 2450 50  0001 C CNN
F 3 "~" H 13950 2600 50  0001 C CNN
	1    13950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 2600 13700 2600
Wire Wire Line
	13700 2700 14200 2700
Wire Wire Line
	14200 2700 14200 2600
Wire Wire Line
	14200 2600 14100 2600
$Comp
L Device:L L?
U 1 1 6068C1C2
P 14450 2600
F 0 "L?" V 14640 2600 50  0000 C CNN
F 1 "4.7??H" V 14549 2600 50  0000 C CNN
F 2 "" H 14450 2600 50  0001 C CNN
F 3 "~" H 14450 2600 50  0001 C CNN
	1    14450 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14200 2600 14300 2600
Connection ~ 14200 2600
$Comp
L Device:C C?
U 1 1 6068C1CA
P 14700 2850
F 0 "C?" H 14815 2896 50  0000 L CNN
F 1 "56pF" H 14815 2805 50  0000 L CNN
F 2 "" H 14738 2700 50  0001 C CNN
F 3 "~" H 14700 2850 50  0001 C CNN
	1    14700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 2700 14700 2600
Wire Wire Line
	14700 2600 14600 2600
$Comp
L Device:R R?
U 1 1 6068C1D2
P 15050 2850
F 0 "R?" H 15120 2896 50  0000 L CNN
F 1 "93.1k" H 15120 2805 50  0000 L CNN
F 2 "" V 14980 2850 50  0001 C CNN
F 3 "~" H 15050 2850 50  0001 C CNN
	1    15050 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6068C1D8
P 15050 3350
F 0 "R?" H 15120 3396 50  0000 L CNN
F 1 "30.1k" H 15120 3305 50  0000 L CNN
F 2 "" V 14980 3350 50  0001 C CNN
F 3 "~" H 15050 3350 50  0001 C CNN
	1    15050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 2600 15050 2600
Wire Wire Line
	15050 2600 15050 2700
Connection ~ 14700 2600
Wire Wire Line
	15050 3000 15050 3100
Wire Wire Line
	15050 3100 14700 3100
Wire Wire Line
	14700 3100 14700 3000
Wire Wire Line
	15050 3200 15050 3100
Connection ~ 15050 3100
$Comp
L Device:C C?
U 1 1 6068C1E6
P 15450 2850
F 0 "C?" H 15500 2950 50  0000 L CNN
F 1 "22??F" H 15500 2750 50  0000 L CNN
F 2 "" H 15488 2700 50  0001 C CNN
F 3 "~" H 15450 2850 50  0001 C CNN
	1    15450 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6068C1EC
P 15750 2850
F 0 "C?" H 15800 2950 50  0000 L CNN
F 1 "22??F" H 15800 2750 50  0000 L CNN
F 2 "" H 15788 2700 50  0001 C CNN
F 3 "~" H 15750 2850 50  0001 C CNN
	1    15750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 2700 15450 2600
Wire Wire Line
	15450 2600 15050 2600
Connection ~ 15050 2600
Wire Wire Line
	15450 2600 15750 2600
Wire Wire Line
	15750 2600 15750 2700
Connection ~ 15450 2600
Wire Wire Line
	15050 3500 15050 3600
Wire Wire Line
	15750 3600 15750 3000
Wire Wire Line
	15050 3600 15400 3600
Wire Wire Line
	15400 3600 15400 3650
Connection ~ 15400 3600
Wire Wire Line
	15400 3600 15450 3600
$Comp
L power:GND #PWR?
U 1 1 6068C1FE
P 15400 3650
F 0 "#PWR?" H 15400 3400 50  0001 C CNN
F 1 "GND" H 15405 3477 50  0000 C CNN
F 2 "" H 15400 3650 50  0001 C CNN
F 3 "" H 15400 3650 50  0001 C CNN
	1    15400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 3600 15450 3000
Connection ~ 15450 3600
Wire Wire Line
	15450 3600 15750 3600
Wire Wire Line
	15750 2600 15750 2550
Connection ~ 15750 2600
Wire Wire Line
	14700 3100 12600 3100
Wire Wire Line
	12600 3100 12600 2800
Wire Wire Line
	12600 2800 12700 2800
Connection ~ 14700 3100
Wire Notes Line
	16000 2250 16000 3900
Wire Notes Line
	16000 3900 12250 3900
Wire Notes Line
	12250 3900 12250 2250
Wire Notes Line
	12250 2250 16000 2250
Text Notes 13150 3650 0    50   ~ 0
Alimentation Batt --> +3.3V
$Comp
L power:+3.3V #PWR?
U 1 1 60696B99
P 15750 2550
F 0 "#PWR?" H 15750 2400 50  0001 C CNN
F 1 "+3.3V" H 15765 2723 50  0000 C CNN
F 2 "" H 15750 2550 50  0001 C CNN
F 3 "" H 15750 2550 50  0001 C CNN
	1    15750 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
