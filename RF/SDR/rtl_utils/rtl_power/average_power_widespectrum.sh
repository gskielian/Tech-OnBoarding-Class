#!/bin/bash

rtl_power -f 950M:1450M:3.2M -g 30 -i 1 | awk 'BEGIN {t=0} {if (t==0) {t=; n=0; s=0}; if (t==) {s+=; n++} else {print s/n; t=0}}'
