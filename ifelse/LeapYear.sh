#!/bin/bash -x
#WRITE PROGRAM TO CHECK LEAP YEAR

#TAKING INPUT FROM USER
read -p "Enter year" year

if [ $(($year%4)) -eq 0 ]
then
	if [ $(($year%100)) -eq 0 ]
	then
		if [ $(($year%400)) -eq 0 ]
		then echo "True"
		else echo "False"
		fi
	else echo "True"
	fi
else echo "False"
fi
