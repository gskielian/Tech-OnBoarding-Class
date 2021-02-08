#!/bin/bash

echo "create example project"

apio init --board iCEBreaker

apio examples --list

apio examples -d iCEBreaker/blink
