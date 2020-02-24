#!/bin/bash -x

#USER INPUT
read -p " enter number " num

#CONSTANT VARIABLES
count=0

#FUNCTION TO FIND PRIME FACTORES 
function primeFactors(){
	num=$1
	while [ $(($num%2)) -eq 0 ]
	do
		echo "2 "
		num=$(($num/2))
	done

	temp=$(echo "sqrt($num)" | bc ) 
	for (( index=3; index<= $temp; index=$index+2 ))
	do
		while [ $(($num%$index)) -eq 0 ]
		do
			echo "$index "
			num=$(($num/$index))
		done
	done

	if [ $num -gt 2 ]
	then
		PrimeFactoresNumber[((count++))]=$num
	fi

	echo -n ${PrimeFactoresNumber[@]}
}

echo "$( primeFactors $num )"
