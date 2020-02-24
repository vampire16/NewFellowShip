#!/bin/bash -x
#Use Random to get Dice Number between 1 to 6

#store the output in variable and print the result
randomCheck=$((RANDOM%6 + 1));
echo "Random Dice number : $randomCheck"
