#!/bin/bash

module_name="$1"
count=`ls | wc -l`

prefix=$(printf "%02d" "$count")
dir_name=$(echo "${prefix}_${module_name}")

cp -r ./.template/ "$dir_name"

sed -i "s/prog_name/$module_name/g" "$dir_name"/*
mv "$dir_name"/{prog_name,"${module_name}"}.v
