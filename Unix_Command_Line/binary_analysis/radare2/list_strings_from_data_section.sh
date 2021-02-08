#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "usage 'list_strings_from_data_section.sh <name_of_file>'"
	exit 0
fi

rabin2 -z $1
