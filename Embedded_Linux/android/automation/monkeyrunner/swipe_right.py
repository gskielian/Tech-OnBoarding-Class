#!/usr/bin/env monkeyrunner                                                         
                                                                                    
import time

from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice

device = MonkeyRunner.waitForConnection()

max_x = int(device.getProperty("display.width"))
max_y = int(device.getProperty("display.height"))

x_buffer = 200
x_pos = x_buffer # start at extreme left + buffer

y_pos = int(max_y/2)

num_steps = 10
swipe_duration = 0.2 # in seconds

device.drag((x_pos, y_pos), (max_x - x_buffer,y_pos), swipe_duration, num_steps)
