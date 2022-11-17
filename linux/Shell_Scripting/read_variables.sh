#!/usr/bin/env bash

echo "Name of the script you are running is: $PWD/$0"

echo "passing parameters to variables:"
read -p "Please enter your Firstname and Lastname" FIRSTNAME LASTNAME

FIRSTNAME=${FIRSTNAME^^}
LASTNAME=${LASTNAME^^}
echo "printing variables" 
echo -e "Fristname: $FIRSTNAME\nLastname: $LASTNAME"


