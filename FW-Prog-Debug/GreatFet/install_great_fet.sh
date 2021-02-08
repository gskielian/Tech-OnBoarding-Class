#!/bin/bash

sudo pip3 install --upgrade greatfet

git clone https://github.com/greatscottgadgets/greatfet.git
sudo cp greatfet/host/misc/54-greatfet.rules /etc/udev/rules.d
sudo udevadm control --reload-rules

