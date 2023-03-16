# Raspberry Pi ML #


## Tensorflow on Raspberry Pi ##

use the following link to install on raspberry pi using Ubuntu to cross-compile:

- [installation instructions](https://www.tensorflow.org/install/source_rpi)

an installation script was created in this directory:


`bash ./create_wheel.sh`

afterwards copy the file to Raspberry Pi

### Rename file to match Raspberry Pi Version of Pytho".n


Script will produce `tensorflow-version-cp34-none-linux_armv7l.whl`

Make the file match your version of python.

E.g. If you're using Python 3.5 rename the file to "35" instead of "34" and 

#### 1) rename file to match "35":

`mv tensorflow-version-cp{34,35}-none-linux_armv7l.whl`


#### 2) then pip3 the wheel: 

`pip3 install tensorflow-version-cp35-none-linux_armv7l.whl`
