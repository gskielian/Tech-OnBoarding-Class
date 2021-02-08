#!/bin/bash

sudo apt-get install -y python-dev python-setuptools

git clone https://github.com/pimoroni/inky-phat.git

cd inky-phat/library/
sudo python3 setup.py install
