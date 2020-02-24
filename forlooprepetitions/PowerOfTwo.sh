#!/bin/bash -x

#CONSTANT VARIABLES
NUMBER=$1

for (( index=1; index<=$NUMBER; index++ ))
do
 	echo "$((2**$index))"
done
