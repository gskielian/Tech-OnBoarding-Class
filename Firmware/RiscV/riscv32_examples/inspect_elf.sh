#!/bin/bash

echo "read elf file"
riscv32-unknown-linux-gnu-readelf -a 00_printf | less 

echo "obj dump"
riscv32-unknown-linux-gnu-objdump -d 00_printf | less 
