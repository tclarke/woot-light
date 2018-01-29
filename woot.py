import serial
import sys
with serial.Serial('COM5', 9600, timeout=1) as ser:
	ser.write('?')
	if ser.read(100).find('Initialize') == -1:
		print('Unable to initialize the lights')
		sys.exit(-1)
	ser.write('o 3 10000\r\n')
	if ser.read(100).find('Activate light1 light2') == -1:
		print('Invalid response')
		sys.exit(-1)
