#!/bin/bash -x

#USER INPUT
read -p "enter range ( start-End ) : " Start End

#CONSTANT VARIABLES
flag=0

for (( number=$Start; number<=$End; number++ ))
do
	if [ $number -eq 0 -o $number -eq 1 ]
	then 
   		flag=1
	fi
	for (( index=2; index<=$(($number/2)); index++ ))
	do
        	flag=0
        	mod=$(($number%$index))
        	if [ $mod -eq 0 ]
        	then
                	flag=1
                	break
        	fi
	done
	if [ $flag -eq 0 ]
	then echo $number
	fi
done

