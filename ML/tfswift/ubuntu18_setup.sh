#!/bin/bash

if [ ! -d "swift-5.0.1-RELEASE-ubuntu18.04/" ]; then

  if [ ! -f "swift-5.0.1-RELEASE-ubuntu18.04.tar.gz" ]; then
    echo "downloading 5.0.1 release and unzipping"
    wget https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz
  else 
    tar xvfz swift-5.0.1-RELEASE-ubuntu18.04.tar.gz
  fi

fi


sudo apt-get install clang libicu-dev

# assuming downloaded swift into this directory

# run this script as `. ./ubuntu18_setup.sh`
# note the "." before the "./ubuntu18_setup.sh"
export PATH="${PWD}/swift-5.0.1-RELEASE-ubuntu18.04/usr/bin/:${PATH}"

