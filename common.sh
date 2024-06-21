#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
W="\e[32m"
N="\e[0m"

# set -e

# handle_error(){
#     echo -e "Error occured at line number: $R $1 $N, error command: $R $2 $N"
# }

# trap 'handle_error ${LINENO} "$BASH_COMMAND"' ERR


VALIDATE (){
    if [ $1 -ne 0 ]
    then echo -e "installing $2 $R failed $N ..."
    exit 1
    else echo -e "installing $2 $G success $N ..."
    fi
}

check_root (){
    if [ $USERID -ne 0 ]
    then echo "not super user"
    exit 1
    else 
    echo "you are super user"
    fi
}
