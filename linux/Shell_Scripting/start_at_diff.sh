#!/bin/bash

#read -p "enter values for \$* :  "
echo "entered values for \$* "
for each in "$*"
do echo $each
done

#read -p "enter values for \$@ :  "
echo "entered values for \$@ :  "
for each in "$@"
do echo $each
done