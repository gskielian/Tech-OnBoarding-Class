#!/bin/bash

sudo apt-get install -y ipython3

pip3 install --upgrade ipykernel --user
pip3 install alpha_vantage
pip3 install ipython[all]
pip3 install 'prompt-toolkit==1.0.15' --user

echo -e "to start type: \r\n ipython3 notebook"

