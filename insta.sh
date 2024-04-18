#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE (){
    if [ $1 -ne 0 ]
    then echo -e "installing $2 $R failed $N ..."
    exit 1
    else echo -e "installing $2 $G success $N ..."
    fi
}

if [ $USERID -ne 0 ]
then echo "not super user"
exit 1
else 
echo "you are super user"
fi

for i in $@ 
do
    dnf install $i -y &>>$LOGFILE
    if [ $? -ne 0 ]
    then echo -e "installing.. $i $R failed $N ..."
    exit 1
    else echo -e "installing... $i $G success $N ..."
    fi
done
