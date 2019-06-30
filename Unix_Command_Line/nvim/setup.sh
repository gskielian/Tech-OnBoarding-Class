# Ubuntu


# neovim setup

sudo apt-get install -y libtool autoconf automake cmake libncurses5-dev g++

sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install -y python3-neovim

wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

chmod +x nvim 
sudo chown root:root: nvim
sudo mv nvim /usr/bin

mkdir -p ~/.config/nvim
cp ./my-init.vim ~/.config/nvim/init.vim

# vimplug setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
