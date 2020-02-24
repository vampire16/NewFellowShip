#!/bin/bash -x

#VARIABLES
value1=10
value2=20

if [ $value1 -gt $value2 ]
then
	echo "$value1 is greater than $value2"
elif [ $value1 -eq $value2 ]
then
	echo "Variables are equal"
else
	echo "$value1 is less than $value2"
fi 
