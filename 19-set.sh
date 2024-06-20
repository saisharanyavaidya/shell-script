#!/bin/bash

source ./common.sh

check_root


dnf install mysqll -y &>>$LOGFILE
#VALIDATE $? "mysql"

dnf install git -y &>>$LOGFILE
#VALIDATE $? "git"
