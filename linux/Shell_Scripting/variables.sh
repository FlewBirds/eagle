#!/usr/bin/env bash

echo "Name of the script you are running is: $PWD/$0"

echo "passing parameters to variables:"


FIRSTNAME=$1
LASTNAME=$2

echo "printing variables" 
echo -e "Fristname: $FIRSTNAME\nLastname: $LASTNAME"