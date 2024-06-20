#!/bin/bash

NAME="My name is Avyan Viraaj"

echo "Name Before : $NAME"
echo "PID Before : $$"

#./other-script.sh

source ./other-script.sh

echo "Name After : $NAME"