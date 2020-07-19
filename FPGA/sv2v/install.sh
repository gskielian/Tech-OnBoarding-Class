#!/bin/bash

# install dependencies
curl -sSL https://get.haskellstack.org/ | sh


git clone https://github.com/zachjs/sv2v.git

git clone https://github.com/kward/shunit2.git

echo "remember to add shunit2 and sv2v to a folder in your PATH"

git clone git://github.com/steveicarus/iverilog.git

#iverilog
cd iverilog

sh autoconf.sh
./configure 
make
make install

