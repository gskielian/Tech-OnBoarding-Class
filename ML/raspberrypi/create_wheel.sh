#!/bin/bash

git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r1.13

CI_DOCKER_EXTRA_PARAMS="-e CI_BUILD_PYTHON=python3 -e CROSSTOOL_PYTHON_INCLUDE_PATH=/usr/include/python3.4" \
    tensorflow/tools/ci_build/ci_build.sh PI-PYTHON3 \
    tensorflow/tools/ci_build/pi/build_raspberry_pi.sh


echo -e "to install on raspberry pi, copy 'whl' file to pi and use the following line: \n"

echo -e "pip install tensorflow-version-cp34-none-linux_armv7l.whl"
