#!/bin/bash

# Declare variables 
person1=$1
person2=$2

echo "$person1:: Hello $person2 how are you doing?"
echo "$person2:: Hello $person1, I'm doing good, how do you do?"
echo "$person1:: I'm good too, how is your work?"
echo "$person2:: Not bad, I'm thinkg to upgrade to Devops"

# sh 04-variable.sh om asha  -- here $1 taken as om & $2 taken as asha
# it will provide result as below 
#om:: Hello asha how are you doing?"
#asha:: Hello om, I'm doing good, how do you do?"
#om:: I'm good too, how is your work?"
#asha:: Not bad, I'm thinkg to upgrade to Devops"

