#!/bin/bash

#CONSTANT VARIABLES
NUMBER=$1
for (( index=1; index<NUMBER; index++ ))
do
	echo -n "1/$index+"
done
echo "1/$index"
