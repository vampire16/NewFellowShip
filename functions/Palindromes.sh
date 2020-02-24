#!/bin/bash -x

#USER INPUT
read -p "Enter number : " num

#CONSTANTS VARIABLES
REVERSE=0

#FUNCTION TO CHECK NUMBER IS PALINDROME OR NOT
function palindromeCheck(){
	number=$1
	while [ $number -ne 0 ]
	do
		digit=$(($number%10)) 
		REVERSE=$(( $(($REVERSE*10))+$digit ))
		number=$(($number/10))
	done
	if [ $num -eq $REVERSE ]
	then
		echo "Number is palindrome"
	else
		echo "Number is not palindrome"
	fi
}

#CALLING FUNCTION
result="$( palindromeCheck $num )"
echo "$result" 
