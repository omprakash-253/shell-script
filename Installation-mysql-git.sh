#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 
then
    echo "Please Run the script with root user"
    exit 1 # manully exit other than 0 ,here 0 means success if previous command
fi

dnf install mysql -y

if [ $? -ne 0 ]  # $? checks the previous command output, it its 0 means success.
then
    echo " Installation of mysql.. FAILURE, check log for errors to troubleshoot"
    exit 1
fi

dnf install git -y

if [ $? -eq 0 ]
then 
    echo "Installation of git .. Failure, check logs for erros to troubleshoot"
    exit 1
fi