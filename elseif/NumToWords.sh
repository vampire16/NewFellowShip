#!/bin/bash -x

#USER INPUT
read -p "Enter any number between 1,10,100,1000 : " number

if [ $number -eq 0 ]
then echo "Unit"
elif [ $number -eq 10 ]
then echo "Ten"
elif [ $number -eq 100 ]
then echo "Hundred"
elif [ $number -eq 1000 ]
then echo "Thousand"
fi
