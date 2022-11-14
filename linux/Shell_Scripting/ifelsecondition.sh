#!/bin/bash

echo "workshop on elseif condition"

read -p "enter integer value to compare age of krishna: " GUESS_AGE

AGE=32

if [ $GUESS_AGE -eq $AGE ]
then
        echo "Congrats your guess $GUESS_AGE is right"
elif [ $GUESS_AGE -lt $AGE ]
then
        echo "Your guess is lesser than correct age $AGE"
else
        echo "Your guess is greater/higher than correct age $AGE"
fi