installation is simple, should actually just work when plugged in and appear as a serial port.

For me this is /dev/ttyACM0, you can find which easily with a `sudo dmesg` after you plug it in (or `ls /dev/ | grep ACM` and `ls /dev | grep USB` before and after plugging in)


# Installation

I use minicom, but utilize your choice of method (screen etc) for opening the dev port:

`sudo apt-get install minicom`

# opening with minicom

since for me it shows up as `/dev/ttyACM0` I'd use the following to connect:

`sudo minicom -D /dev/ttyACM0 -b 115200`

# utilizing

if all went well you should now see a prompt :fireworks:

Type `?` in the prompt to see possibilities.
