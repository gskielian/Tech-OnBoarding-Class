#!/bin/bash


sudo apt-get install -y cmake
sudo apt-get install -y automake libtool libtool-bin gettext

git clone https://github.com/neovim/neovim.git

cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
pip3 install neovim
