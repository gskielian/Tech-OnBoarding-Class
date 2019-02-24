#!/bin/bash

pip install --upgrade pip --user
pip install -q pyyaml --user


# ubuntu install
sudo apt update -y
sudo apt install -y python3-dev python3-pip virtualenv
sudo pip3 install -U virtualenv --user


virtualenv --system-site-packages -p python3 ./venv
source ./venv/bin/activate  # sh, bash, ksh, or zsh`

pip install --upgrade tensorflow --user
python -c "import tensorflow as tf; tf.enable_eager_execution(); print(tf.reduce_sum(tf.random_normal([1000, 1000])))"
