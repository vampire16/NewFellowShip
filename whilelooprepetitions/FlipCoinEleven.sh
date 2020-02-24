#!/bin/bash -x

#CONSTANT VARIABLES
HEADS=1
TAILS=1

while [ $HEADS -lt 11 -a $TAILS -lt 11 ]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		echo $((HEADS++))
	else
		 echo $((TAILS++))
	fi
done

if [ $HEADS -eq 11 ]
then
	echo "Heads win"
elif [ $TAILS -eq 11 ]
then
	echo "Tails win"
fi
