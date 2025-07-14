#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, current usage: $USAGE \n"  # + to append and \n -> new line if the o/p contains multiple lines
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" omprakashdba253@gmail.com

# echo "body of the mail" | mail -s "Subject" to address
