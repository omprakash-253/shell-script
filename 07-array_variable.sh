#!/bin/bash

movies=("RRR" "DJTillu" "Murari")

echo "First movie is: ${movies[0]}"
echo "2nd movie is : ${movies[1]}"
echo "list of all movies are : ${[@]}"

#list always starts with 0(Zero)
#Size of the above array is 3
# index of aboce array are 0,1,2