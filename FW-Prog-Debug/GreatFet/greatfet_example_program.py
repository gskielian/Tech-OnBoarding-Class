#!/usr/bin/python

import time
from greatfet import GreatFET

gf = GreatFET()

for i in range(1,3):
    gf.leds[i].toggle();
    time.sleep(1)

for i in range(1,3):
    gf.leds[i].toggle();
    time.sleep(1)
