#!/bin/bash
 
 echo "All variables:$@" # $@ to list all supplied variables
 echo "number of variables passed:$#" # $# to list total number of variables passed
 echo "Script name is:$0" # to display the current script name
 echo "current working directory is: $PWD"  #$PWD to display the current working directory
 echo "Home directory of current user: $HOME" # to display the current user home directory
 echo "Which user is running the script: $USER" # to diplay which user is running the script
 echo "Hostname:$HOSTNAME" # to display the host name