#!/bin/bash

USERID=$(id -u)

if [ $USERID ne 0 ]
then echo "not super user"
exit 1
else 
echo "you are super user"
fi

dnf install mysql -y

if [ $? ne 0 ]
then echo "failure"
else echo "success"
fi
