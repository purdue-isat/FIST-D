# Serial port:
Please ensure the latency timer of serial port to be 1 according to this page:
https://www.loadstarsensors.com/assets/manuals/html/how-to-set-latency-timer/latency-timer.html

# Supported commands: 
Mode 1: Continuous transmittion (test4.py, future work: synchronization)
1. Send 0xe0 + number of sensors to set it
2. send 0xf0 to start continuous data collection

Mode 2: query mode (test2.py, future work: test it with more sensors)
1. Send 0xf0
2. keep receiving.