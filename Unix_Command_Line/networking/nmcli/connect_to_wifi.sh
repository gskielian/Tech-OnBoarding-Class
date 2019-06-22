#!/bin/bash

SSID=$1
PASSWORD=$1

nmcli wifi connect "$SSID" password "$PASSWORD"
