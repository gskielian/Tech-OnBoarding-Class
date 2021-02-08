# Binary Analysis with Binwalk #

This is a really useful tool for figuring out what mysterious binary might be, and lots more.

it's preinstalled in Kali Linux, put the steps of installation into the `install-binwalk.sh` script, but you may want to run the `deps.sh` script in the repo as well -- especially if install runs into dep issues.

## workflow ##

`binwalk <filename>` -- learn more about signatures in your binary
`binwalk -e <filename>` -- extract any files it finds in the image



