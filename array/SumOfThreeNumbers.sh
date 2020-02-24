#!/bin/bash -x

#ARRAY
array=(1 -1 1 0 2 -2)
echo ${#array[@]}

for (( index1=0; index1<$((${#array[@]}-2)); index1++ ))
do
	for (( index2=$(($index1+1)); index2<$((${#array[@]}-1)); index2++ ))
	do
		for (( index3=$(($index2+1)); index3<${#array[@]}; index3++ ))
		do
			addition=$(( $(( ${array[index1]}+${array[index2]} ))+${array[index3]} ))
			if (( $addition == 0 ))
			then
				echo "( ${array[index1]} , ${array[index2]} , ${array[index3]} )"
			fi
		done
	done
done
