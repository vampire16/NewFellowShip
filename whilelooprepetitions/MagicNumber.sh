#!/bin/bash -x

#RANDOM NUMBER
number=$(( (RANDOM%100)+1 ))

#CONSTANT VARIABLES
FIRST=0
LAST=100
MID=$(( $(($FIRST+$LAST))/2 ))

#CHECKING RANDOM NUMBER IS PRESENT OR NOT
while [ $FIRST -le $LAST ]
do
	if [ $MID -lt $number ]
	then
		FIRST=$(($MID+1))
	elif [ $MID -eq $number ]
	then
		echo "Got the number $number"
 		break
	else
		LAST=$(($MID-1))
	fi
   MID=$(( $(($FIRST+$LAST))/2 ))
done
