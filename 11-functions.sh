#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name_$timestamp.log

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "$2 .. FAILURE"
        exit 1 
    fi
}

if [ $userid -ne 0 ] 
then
    echo "Please Run the script with root user"
    exit 1 # manully exit other than 0 ,here 0 means success, if previous command success then it returns 0
fi

dnf install mysql -y &>>$logfile
VALIDATE $? "Installation of MySQL"  # $? --> 1st variable($1), "Installation of Mysql" is 2nd variable ($2)

dnf install git -y &>>$logfile
VALIDATE $? "Installation of git"  # $? --> 1st variable($1), "Installation of git" is 2nd variable ($2)