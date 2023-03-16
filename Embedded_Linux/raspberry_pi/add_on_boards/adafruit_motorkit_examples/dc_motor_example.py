import time
from adafruit_motorkit import MotorKit as mk

# this example assumes the feather shield is connected to i2c
# the motor2 is the closest port to the 3V and GND connectors
# in this example we controll a DC motor

kit = mk()

print("forward")
kit.motor2.throttle = 1.0
time.sleep(2)

print("still")
kit.motor2.throttle = 0
time.sleep(2)

print("backward")
kit.motor2.throttle = -1.0
time.sleep(2)

print("still")
kit.motor2.throttle = 0
