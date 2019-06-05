
#!/usr/bin/python3

import RPi.GPIO as GPIO
import time


# use bcm numbering as opposed to position number
GPIO.setmode(GPIO.BCM)

# set mode to output
GPIO.setup(4, GPIO.OUT)

# toggle GPIO_4 (on B+ this is Pin Position #7)

GPIO.output(4, True)
time.sleep(1)
GPIO.output(4, False)
time.sleep(1)

