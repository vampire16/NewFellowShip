#!/bin/bash -x
# 1ft=12 int then 42in=?ft
# 1 inch=0.0833333334 ft

read -p "Enter number to convert inch to feet : " num
feet=`echo "$num*0.083333334" | bc -l`;           
echo "Feet=$feet"
