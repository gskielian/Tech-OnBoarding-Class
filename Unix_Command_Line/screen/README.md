## Screen ##

Screen is a popular tool for connecting via uart to external devices.

It's likely you don't need to install it either, it's usually preinstalled on your machine.


### Connect to External Device ###

generally to connect to an external device just type the `dev` entry name first, followed by the baud rate.

for example, if your device appears as `/dev/ttyACM0` and has a `9600` baud rate, use the following to connect:

`screen /dev/ttyACM0 9600`

### Send File back to Host via Zmodem ###

`C-a :` to enter the screen prompt, then type
`zmodem catch` to ensure catch mode is on (necessary for sending or receiving files)

next type:

`sz <name-of-file>` for example if the file you want to send from your external device to your desktop is called `hello_world.txt`

Then you would enter into the command prompt (the one `screened` in on your external device):

`sz hello_world.txt` and when the prompt below appears just press enter again

### Receive File ###

To move files from your host device to your external device, open screen on your external device (e.g. `screen /dev/ttyACM0`), then
do the following:

`C-a :` to enter the screen prompt, then type
`zmodem catch` to ensure catch mode is on (necessary for sending or receiving files)

Go to the directory on your external device where you will want the file and type:

`rz` and press enter.

In the prompt below, you'll now have to type the full path __on your host__ and then press enter

For example, if the file on your host machine is at `/tmp/my_file.txt`, you would type

`/tmp/my_file.txt` then press enter.

There's no auto-complete or room for typos, so it helps to copy the file to say the `/tmp` directory before 
using this method to reduce the file path length (easier to type).


### Exit ###

`C-a k` will open a prompt asking if you would like to exit, type `y` and press enter to confirm.
