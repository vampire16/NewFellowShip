#!/bin/bash -x

#TAKING TWO RANDOM NUMBERS
randomDice1=$((RANDOM%6 + 1));
randomDice2=$((RANDOM%6 + 1));

addition=$(($randomDice1 + $randomDice2));
echo "Addition of two random numbers is=$addition"
