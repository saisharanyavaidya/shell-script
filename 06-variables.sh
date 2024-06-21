#!/bin/bash

echo "please enter username"

read USERNAME

echo "please enter password"

read -s PASSWORD # if we include -s what we are typing on command line will not be visible.. 

echo "$USERNAME --- $PASSWORD"