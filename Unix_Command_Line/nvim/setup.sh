# Ubuntu

# neovim setup

sudo apt-get install -y curl libtool autoconf automake cmake libncurses5-dev g++

sudo apt-get install python-dev python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install -y python3-neovim

wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

chmod +x nvim
sudo chown root:root: nvim
sudo mv nvim /usr/bin

mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/UltiSnips
mkdir -p ~/.config/nvim/custom_plugins

cp ./modern-init.vim ~/.config/nvim/init.vim
cp ./nvim_scripting/vimapm.vim ~/.config/nvim/custom_plugins/vimapm.vim

# vimplug setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# get vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "now open up nvim and type: PlugInstall"
nvim +PlugInstall +qall
