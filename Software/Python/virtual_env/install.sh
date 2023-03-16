#!/bin/bash


sudo apt update -y
sudo apt install -y python3-pip

python3 -m pip install --user --upgrade pip

python3 -m pip install --user virtualenv

echo "create a venv with 'python3 -m venv env'"
echo "activate a venv with 'source env/bin/activate'"
