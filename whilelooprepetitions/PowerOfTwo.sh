#!/bin/bash -x

#USER INPUT
read -p "Enter a number : " number

#CONSTANT VARIABLES
power=1

while [ $power -le $number ]
do
	num=$((2**$power))
	if [ $num -le 256 ]
	then
		echo "$num"
		power=$(( $power+1 ))
	else
		break
	fi
done
