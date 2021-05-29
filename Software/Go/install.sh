#!/bin/bash

echo "vim into this install file and uncomment the correct install for your version"

# for ubuntu 20
sudo apt install golang-1.14-go

# for ubuntu 18.04 or 19.10
#sudo add-apt-repository ppa:longsleep/golang-backports
#sudo apt update
#sudo apt install golang-go
