#!/bin/bash

number=$1

if [ $number -gt 10 ]  # space is mandoatory in the square brakets
then
    echo "Given $number is greater than 10"
else
    echo "Given $number is lesser than 10"
fi