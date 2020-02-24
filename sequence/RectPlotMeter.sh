#!/bin/bash -x
#Rectangular plot  of 60feet * 40feet in meters
# 1 feet= 0.3048 meter

#CONSTANT VARIABLES 
value1=60
value2=40

meter=`echo "0.3048 * $value1 * $value2" | bc -l`
echo "Answer=$meter"
