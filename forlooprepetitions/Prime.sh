#!/bin/bash -x

#USER INPUT
read -p "Enter number : " number

#CONSATNAT VARIABLES
flag=0

if [ $number -eq 0 -o $number -eq 1 ]
then
   flag=1
fi
for (( index=2; index<=$(($number/2)); index++ ))
do
	flag=0
	mod=$(($number%$index))
	if [ $mod -eq 0 ]
	then
		flag=1
		break
	fi
done

if [ $flag -eq 0 ]
then echo "Its prime"
else echo "Its not prime"
fi
