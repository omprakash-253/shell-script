#!/bin/bash

set -e

failure() {
    echo "failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root user"
    exit 1
else
    echo " you are a root user"
fi

dnf install mysqlllf -y  # wantedly giving mysql command wrong to check the error
dnf install git -y

echo "is script proceeding"
