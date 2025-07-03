#!/bin/bash

read -s -p "Please enter username:" USERNAME

read -s -p "Please enter password:" PASSWORD  

echo "username is $USERNAME & password is $PASSWORD"

# in above script, next to read "-p" denotes prompt for username & password. 
# -s to hide unsername & password while entering.
# we have achived what we did in 05-Confidential.sh in this script with less lines of code.
# remove line 7 (echo) in real time, we included here just for testing to see username & password.

