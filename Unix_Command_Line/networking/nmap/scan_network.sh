#!/bin/bash


address=$(ifconfig wlan0 | grep "inet " | awk '{print $2}')

echo $address
echo "$address" | awk -F"." '{print $1"."$2"."$3".0/24"}'
scan_range=$(echo "$address" | awk -F"." '{print $1"."$2"."$3".0/24"}')

nmap -sP "$scan_range"
