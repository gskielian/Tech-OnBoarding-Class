#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "usage 'get_info_on_file.sh <name_of_file>'"
	exit 0
fi

rabin2 -I $1
