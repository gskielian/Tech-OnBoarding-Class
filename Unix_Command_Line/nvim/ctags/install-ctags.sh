#!/bin/bash

sudo apt-get install -y ctags

if grep -Fxq "set tags=tags" ~/.vimrc; then
	echo "vimrc checked and already has setup"
else
	echo "set tags=tags" >> ~/.vimrc
	echo "adding line to vimrc"
fi

if grep -Fxq "set tags=tags" ~/.config/nvim/init.vim; then
	echo "already setup for nvim"
else
	echo "set tags=tags" >> ~/.config/nvim/init.vim
fi


echo "go to project directory and run 'ctags -R', type 'cnt-]' to go to definition"
