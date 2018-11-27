#!/bin/bash

echo "download latest emacs from from http://ftp.gnu.org/gnu/emacs/ "
echo "extract the latest file (e.g. emacs-26.1.tar.xz)"
echo "cd into the extracted directory and run this script"

# install dependencies

sudo apt-get install build-essential libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev libgtk-3-dev libxaw3dxft6 librsvg2-dev imagemagick libgpm-dev libdbus-1-dev libgconf-2-4 libxml2-dev libgnutls28-dev libm17n-dev libotf-dev -y
sudo apt-get install gnutls-bin -y

# must be run from your emacs directory
# download at http://ftp.gnu.org/gnu/emacs/

./configure --with-mailutils || { echo './configure --with-mailutils failed' ; exit 1; }
make || { echo 'make failed' ; exit 1; }
sudo make install || { echo 'sudo make install failed' ; exit 1; }
