#!/bin/bash -x

#CONSTANT VARIABLES
CASH=100
BET=1
GOAL=200
WON=0
NUMBEROFBETS=0

#CHECKING CASH IS LESS THAN ZERO OR GREATER THAN OUR GOAL
while [ $CASH -gt 0 -a $CASH -lt $GOAL ]
do
	NUMBEROFBETS=$(( $NUMBEROFBETS+1 ))
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		CASH=$(( $CASH+$BET ))
		WON=$(( $WON+1 ))
	else
		CASH=$(( $CASH-$BET ))
	fi
done

echo "Number of wons $WON"
echo "Number of bets $NUMBEROFBETS"

#CHECKING OUR CASH IS REACHED TILL OUR GOAL OR NOT
if [ $CASH -eq $GOAL ]
then
	echo "You won"
else
	echo "You lost"
fi
