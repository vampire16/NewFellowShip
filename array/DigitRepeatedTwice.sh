#!/bin/bash -x

#ARRAY OF 100 NUMBERS
for (( index=0; index<100; index++ ))
do
	array[index]=$index
done

#CHECKING SIMILAR NUMBERS LIKE 33 77
for (( index=0; index<${#array[@]}; index++ ))
do
	if (( ${array[index]}%10 == ${array[index]}/10 ))
	then
		if (( array[index] != 0 ))
		then
			echo "${array[index]}"
		fi
	fi
done
