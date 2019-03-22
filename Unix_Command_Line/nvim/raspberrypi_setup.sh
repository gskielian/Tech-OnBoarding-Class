#!/bin/bash


sudo apt-get install -y cmake
sudo apt-get install -y automake libtool libtool-bin gettext

git clone https://github.com/neovim/neovim.git

cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
pip3 install neovim

wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

chmod +x nvim 
sudo chown root:root: nvim
sudo mv nvim /usr/bin

mkdir -p ~/.config/nvim
cp ./my-rpi-init.vim ~/.config/nvim/init.vim

# vimplug setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "next open nvim and type :PlugInstall to install plugins"
