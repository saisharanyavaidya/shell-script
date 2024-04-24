#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo -e "$G source directory $SOURCE_DIRECTORY exists $N"
else 
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "deleting files $line"
    rm -rf $line
done <<< $FILES