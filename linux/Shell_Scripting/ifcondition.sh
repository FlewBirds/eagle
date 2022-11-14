#!/bin/bash

read -p "Enter your name" NAME

#NAME="KRISHNA"

EXPECTEDVALUE="KRISHNA"

if [ $NAME = $EXPECTEDVALUE ]
then
        echo "name matches with string $EXPECTEDVALUE"
else
        echo "name doesnot matche with string $EXPECTEDVALUE"
fi