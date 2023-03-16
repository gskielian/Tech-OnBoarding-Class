#!/bin/bash

echo "place the following in: "

echo "/etc/udev/rules.d/53-icebreaker-ftdi.rules"

echo 'ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010", MODE="0660", GROUP="plugdev", TAG+="uaccess"'
sudo udevadm control --reload-rules && udevadm trigger

echo "see https://github.com/im-tomu/fomu-toolchain (download the release) for installation of dependencies"
