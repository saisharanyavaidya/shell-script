#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


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

dnf install mysqll -y &>>$LOGFILE
VALIDATE $? "mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "git"
