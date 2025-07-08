#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%s)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate() {
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ..$R FAILURE $N"
    else
        echo -e "$2.. $G SUCCESS $N"
    fi
}

if [$userid -ne 0]
then
    echo "Please execute this script with root user"
    exit 1
else
    echo "you are a root user"
fi

for i in $@
do
    echo "package to install: $i"
    dnf list installed $i &>>$logfile
    if [ $? -eq 0 ]
    then
        echo -e "$i already installed .. $Y SKIPPING $N"
    else
        dnf install $i -y &>>$logfile
        validate $? "Installation of $i"
    fi
done

# execute the above script => sudo sh 14-install-packages.sh mysql gcc git fail2ban

