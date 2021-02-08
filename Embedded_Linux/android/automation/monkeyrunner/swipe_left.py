#!/usr/bin/env monkeyrunner                                                         
                                                                                    
import time

from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice

device = MonkeyRunner.waitForConnection()

max_x = int(device.getProperty("display.width"))
max_y = int(device.getProperty("display.height"))

x_buffer = 10
x_pos = max_x - x_buffer # start at extreme right + buffer

y_pos = int(max_y/2)

num_steps = 8
swipe_duration = 0.15 # in seconds

device.drag((x_pos, y_pos), (x_buffer,y_pos), swipe_duration, num_steps)
