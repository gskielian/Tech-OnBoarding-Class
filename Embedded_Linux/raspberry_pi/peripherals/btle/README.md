# Bluetooth LE  with Raspi


## installation 

run the install.sh script contained to install dependencies.

## Basic commands


### hcitool

`sudo hcitool lescan` - gets mac addresses of btle devices

### gatttool


`gatttool -I -b <mac-address>` -- open prompt with device

#### gatttool prompt commands

`connect` - connect to device

### bluepy

`sudo blescan` - get much more info

can get the 16 bit services as well with this


## Scripts

`list_services.py` - lists uuid of services
`list_characteristics.py` - lists uuid of services
`connect_to_uart.py` - simple example of sending data to uart
`read_string.py` - simple example for reading notifications asynchronously
