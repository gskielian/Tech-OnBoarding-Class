#!/bin/bash

sudo apt install -y python3-venv
sudo apt install -y gtkwave
sudo apt install -y libcanberra-gtk-module

python3 -m venv env
source env/bin/activate

pip install -U apio

apio install --all

apio 
