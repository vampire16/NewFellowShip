#!/bin/bash -x

#USER INPUT
read -p "Enter a number" num

#VARIABLES
number1=0
number2=0
originalNumber=0
reverse=0
flag=0

#FUNCTION TO CHECK PRIME NUMBER
function prime(){
	number1=$1
	if (( number1 == 0 || number1 == 1 ))
	then
		flag=1
	fi
	for (( index=2;index<=$(($number1/2));index++ ))
	do
		if (( $(($num%$index))==0 ))
		then
			flag=1
			break
		fi
	done
	if (( flag == 0 ))
	then
		echo "Number $number1 is prime"
		result1="$( palindrome $number1 )"
		echo "$result1"
	else
		echo "Number $number1 is not prime"
	fi

}

#FUNCTION TO CHECK PLAINDROME NUMBERS
function palindrome(){
	originalNumber=$1
	number2=originalNumber
	while (( number2!=0 ))
	do
		digit=$(($number2%10))
		reverse=$(( $(($reverse*10))+digit ))
		number2=$(($number2/10))
	done
	if (( originalNumber == reverse ))
	then
		echo " and palindrome too"
	else
		echo " but not a palindrome number"
	fi

}

result="$( prime $num )"
echo $result
