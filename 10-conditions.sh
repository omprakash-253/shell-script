#!/bin/bash

number=$1

if [ $number -ge 10 ]  # space is mandoatory in the square brakets
then
    echo "Given $number is greater than 10"
else
    echo "Given $number is lesser than 10"
fi

# -gt for greater than, -ge -> greater than and equals, -eq -> equals to, lt -> lessthan, -le -> lessthan equals to 