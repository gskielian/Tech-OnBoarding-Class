#!/bin/bash


sudo apt-get install -y autoconf
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh 
./configure
make
sudo make install
