#!/bin/bash -x

#CONSTANTS VARIABLES
value1=60
value2=40

meter=`echo "0.3048 * $value1 * $value2" | bc -l`      # 1 feet= 0.3048 meter

acres=`echo "$meter/4047" | bc -l`              # 1 acre = 4047 meter

echo "Area in acres=$acres"

