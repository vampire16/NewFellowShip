#!/bin/bash -x
#Write a program that takes a date as input and prints the day of the week that date falls on

#COMMAND-LINE INPUT $1,$2,$3
date=$1
month=$2
year=$3


yo=$(($year-(14-$month)/12))
x=$(($yo+$yo/4-$yo/100+$yo/400))
mo=$(($month+12*((14-$month)/12)-2))
dO=$((($date+$x+31*($mo/12))%7))

case "$dO" in

0) echo "SUNDAY" ;;
1) echo "MONDAY" ;;
2) echo "TUESDAY" ;;
3) echo"WEDNESDAY" ;;
4) echo "THURSDAY" ;;
5) echo "FRIDAY" ;;
*) echo "SATURDAY" 
esac


