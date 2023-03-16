#!/usr/bin/env bash

# ubuntu setup

sudo add-apt-repository --yes ppa:js-reynaud/kicad-5.1
sudo apt-get update -y
sudo apt-get upgrade -y 
sudo apt-get install -y --install-suggests kicad

sudo apt install libcanberra-gtk-module libcanberra-gtk3-module

