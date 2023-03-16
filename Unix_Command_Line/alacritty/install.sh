#!/bin/bash

sudo apt update -y
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

curl https://sh.rustup.rs -sSf | sh
cargo install alacritty
