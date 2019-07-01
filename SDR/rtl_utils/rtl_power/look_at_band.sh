#!/bin/bash

rtl_power -f 118M:137M:8k -g 50 -i 10 -e 1h airband.csv &

sleep 10
killall rtl_power

sleep 1
python heatmap.py airband.csv output.jpg

open output.jpg
