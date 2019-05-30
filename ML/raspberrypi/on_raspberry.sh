#!/bin/bash

#pip3 install tensorflow-version-cp35-none-linux_armv71.whl

sudo apt-get update -y 
sudo apt-get install libhdf5-dev -y
sudo apt-get update -y
sudo apt-get install libhdf5-serial-dev -y

pip3 install h5py --no-cache-dir
