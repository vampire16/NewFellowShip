#!/bin/bash -x

#USER INPUT
read -p "Enter number : " number

#CONSTANT VARIABLES
SUM=1

for (( index=1; index<=$number; index++ ))
do
	SUM=$(($SUM*$index))
done

echo "Factorial of number $number = $SUM"
