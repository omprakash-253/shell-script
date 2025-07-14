#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#to Check SOURCE_DIRECTORY exist or not

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G $SOURCE_DIRECTORY exists $N"
else
    echo -e "$R Please make sure you have passed correct Source_Directory $N"
    exit 1
fi

# check for .log files which are 14 days old in SOURCE_DIRECTORY

FILES_TO_DELETE=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

# Deleted multiple .log files  one by one which are 14days old from previous out put (FILES_TO_DELETE)

while IFS= read -r line      ## IFS internale field seperater, this command will read line by line from FILES_TO_DELETE
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE

## Schedule the above script to run for every 2 min on the server, Below are the scteps
# crontab -e -> this will edit the crontab (opens new file, where you can place below script)
# */2 * * * * sh /home/ec2-user/shell-script/18-delete-old-logs.sh -> this will remove 14 days older logs from
#location  $Source_Directory
# 1st * -> min, 2nd * -> hour, 3rd * -> day of the month, 4th * -> month, 5th * -> day of the week.



