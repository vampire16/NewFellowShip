#!/bin/bash -x

#USER INPUT	
read -p "enter 1)feet to inch 2)feet to meter 3)inch to feet 4)meter to feet : " choice

#CONSTANT VARIABLES
INCHINTOFEET=0.0833333334       # 1inch = 0.083333334feet
METERINTOFEET=3.2808            # 1meter = 3.2808feet
FEETINTOINCH=12                 # 1feet = 12 inch
FEETINTOMETER=0.3048            # 1feet = 0.3048meter

case $choice in
1)
	read -p "enter feet : " number
	inch=`echo "$number*$INCHINTOFEET" | bc -l`
	echo "Feet to inch  $number = $inch" ;;
2)
	read -p "enter feet : " number
	meter=`echo "$number*$METERINTOFEET" | bc -l`
	echo "Feet to meter  $number = $meter" ;;
3)
	read -p "enter inch : " number
	ft=`echo "$number*$FEETINTOINCH" | bc -l`
	echo "Inch to feet  $number = $ft" ;;
4)
	read -p "enter meter : " number
	ft=`echo "$number*$FEETINTOMETER" | bc -l`
	echo "Meter to feet  $number = $ft" ;;
*)
	echo "Invalid choice"
esac
