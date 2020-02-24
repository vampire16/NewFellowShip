#!/bin/bash -x

#USER INPUT
read number1
read number2
read number3

#ARITHMATIC OPERATION
value1=$(( $number1+$number2*$number3 ))
value2=$(( $number1%$number2+$number3 ))
value3=$(( $number3+$number1/$number2 ))
value4=$(( $number1*$number2+$number3 ))


if [ $value1 -lt $value2 -a $value1 -lt $value3 -a $value1 -lt $value4 ]
then echo "Min value is $value1"
elif [ $value2 -lt $value1 -a $value2 -lt $value3 -a $value2 -lt $value4 ]
then echo "Min value is $value2" 
elif [ $value3 -lt $value2 -a $value3 -lt $value1 -a $value3 -lt $value4 ]
then echo "Min value is $value3" 
elif [ $value4 -lt $value2 -a $value4 -lt $value3 -a $value4 -lt $value1 ]
then echo "Min value is $value4" 
fi

if [ $value1 -gt $value2 -a $value1 -gt $value3 -a $value1 -gt $value4 ]
then echo "Max value is $value1"
elif [ $value2 -gt $value1 -a $value2 -gt $value3 -a $value2 -gt $value4 ]
then echo "Max value is $value2" 
elif [ $value3 -gt $value2 -a $value3 -gt $value1 -a $value3 -gt $value4 ]
then echo "Max value is $value3" 
elif [ $value4 -gt $value2 -a $value4 -gt $value3 -a $value4 -gt $value1 ]
then echo "Max value is $value4" 
fi

