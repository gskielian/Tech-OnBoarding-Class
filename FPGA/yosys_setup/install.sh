sudo add-apt-repository ppa:saltmakrell/ppa
sudo apt-get update -y
sudo apt-get install -y yosys

sudo apt-get install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev


# Installing the IceStorm Tools (icepack, icebox, iceprog, icetime, chip databases):

FPGA_HOME="$PWD"

git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd icestorm
make -j$(nproc)
sudo make install

cd $FPGA_HOME

# Installing Arachne-PNR (place&route tool, predecessor to NextPNR):

git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd arachne-pnr
make -j$(nproc)
sudo make install

cd $FPGA_HOME

# Installing NextPNR (place&route tool, Arachne-PNR replacement):

git clone https://github.com/YosysHQ/nextpnr nextpnr
cd nextpnr
cmake -DARCH=ice40 -DCMAKE_INSTALL_PREFIX=/usr/local .
make -j$(nproc)
sudo make install

cd $FPGA_HOME

# Installing Yosys (Verilog synthesis):

git clone https://github.com/cliffordwolf/yosys.git yosys
cd yosys
make -j$(nproc)
sudo make install
