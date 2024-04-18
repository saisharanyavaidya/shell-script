#!/bin/bash

USERID=$(id -u)


VALIDATE (){
    if [ $1 -ne 0 ]
    then echo "installing $2 failed"
    exit 1
    else echo "installing $2 success"
    fi
}

if [ $USERID -ne 0 ]
then echo "not super user"
exit 1
else 
echo "you are super user"
fi

dnf install mysqll -y
VALIDATE $? "mysql"

dnf install git -y
VALIDATE $? "git"
