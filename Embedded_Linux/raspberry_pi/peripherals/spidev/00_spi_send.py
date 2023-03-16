#!/usr/bin/python3

import spidev

# `ls` your /dev/ directory to get spi bus and device numbers
# e.g. `ls /dev/spi*` gets on my pi these two devices on bus 0:
#
#/dev/spidev0.0
#/dev/spidev0.1

SPI_BUS = 0
SPI_DEVICE = 0

spi = spidev.SpiDev()
spi.open(SPI_BUS, SPI_DEVICE)
spi.max_speed_hz = 1000000

# spi.mode, see docs

# send 3 bytes, receive 3 bytes (number sent/received always equal in spi)
# store response in `resp` variable

spi_response = spi.xfer2([0x00, 0x00, 0x00])

print(spi_response)
