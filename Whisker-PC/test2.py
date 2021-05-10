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
N_sensor=2
senser_data={}
t = time.time()
while True:
    cnt += 1
    # print(time.time()-t, cnt)
    buf = []
    packet = bytearray()
    packet.append(0xf0)
    ser.write(packet)
    ser.flush()
    for cc in range(N_sensor):
        # t = time.time()
        bytes = ser.read(16)
        # print(time.time()-t)
        values = np.zeros(5)
        for i, b in enumerate(bytes):
            idx = i//3
            sb = i%3
            b = int(b)
            if b>=0xf0:
                senser_data[b-0xf0]=values
                continue
            if sb == 0:
                values[idx] += b * 10000
            if sb == 1:
                values[idx] += b * 100
            if sb == 2:
                values[idx] += b
    print(senser_data)
    # time.sleep(0.01)
