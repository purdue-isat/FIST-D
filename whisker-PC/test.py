import serial
import time
import numpy as np

def configuration():
    ser = serial.Serial()
    ser.baudrate = 115200
    ser.port = 'COM4'
    ser.open()
    return ser

ser = configuration()
cnt = 0
N_sensor=1
senser_data={}
n_chars=0
while True:
    buf = []
    packet = bytearray()
    packet.append(0xf0)
    ser.write(packet)
    ser.flush()
    i=0
    cnt+=1
    
    if True:
        # t = time.time()
        bytes = ser.read(16*N_sensor) # this function constantly takes 0.015 second. Let us see.
        # print(time.time()-t)
        values = np.zeros(5)
        for b in bytes:
            idx = i//3
            sb = i%3
            b = int(b)
            if b>=0xf0:
                i=0
                senser_data[b-0xf0]=values
                continue
            if sb == 0:
                values[idx] += b * 10000
            if sb == 1:
                values[idx] += b * 100
            if sb == 2:
                values[idx] += b
        
        n_chars+= len(bytes)
    print(n_chars)
    # print(senser_data)
    # time.sleep(0.01)
