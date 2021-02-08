#!/bin/bash

sudo apt-get update

wget https://dl.google.com/coral/edgetpu_api/edgetpu_api_latest.tar.gz -O edgetpu_api.tar.gz --trust-server-names

tar xzf edgetpu_api.tar.gz

sed -i 's/python3.5/python3/g' edgetpu_api/install.sh 

sed -i 's/^.*Your platform is not supported.*$/LIBEDGETPU_SUFFIX=arm32 \n HOST_GNU_TYPE=arm-linux-gnueabihf \n/g' edgetpu_api/install.sh
sed -i 's/exit 1//g' edgetpu_api/install.sh

#sudo edgetpu_api/install.sh
