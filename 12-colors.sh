#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name_$timestamp.log
R="\e[31m"  # \e[31m is for red color
G="\e[32m"  # \e[32m is for red color
N="\e[0m"   # \e[0m is for red color

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo -e "$2 .. $R FAILURE $N"  # -e is mandatory, here -e means enable, we are pringting FAILURE in RED color
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N" # -e is mandatory, here -e means enable, we are pringting SUCCESS in GREEN color
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