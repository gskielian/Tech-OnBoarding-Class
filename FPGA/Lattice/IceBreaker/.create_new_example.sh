#!/bin/bash

module_name="$1"
count=`ls | wc -l`
let count=$(( $count - 1 ))

prefix=$(printf "%02d" "$count")
dir_name=$(echo "${prefix}_${module_name}")

cp -r ./.template/ "$dir_name"

sed -i "s/template_program/$module_name/g" "$dir_name"/*
mv "$dir_name"/{template_program,"${module_name}"}.v


