#!/bin/bash

number=$1

if [$number -gt 10]
then
    echo "Given $number is greater than 10"
else
    echo "Given $number is lesser than 10"
fi