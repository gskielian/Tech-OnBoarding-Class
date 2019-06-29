#!/bin/bash

if [ $# -ne 1 ]; then
	echo -e "usage: \n ./run_docker_with_usb_priveleges.sh <image_name>"
	echo -e "use 'sudo docker ps' to find image name"
fi


image_name="$1"

docker run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb "$image_name" bash

