#!/bin/bash -x

#VARIABLE
tempNumber=0
index=0
index1=0
index2=0

#ARRAY OF RANDOM NUMBER
for (( index=0; index<10; index++ ))
do
	randomCheck=$((RANDOM%900 +100))
	NumberArray[index]=$randomCheck
done
echo ${NumberArray[@]}

#FUNCTION TO SORT ARRAY
function sort(){
	NumberArray=("$@")
	for (( index1=0; index1<${#NumberArray[@]}; index1++ ))
	do
		for (( index2=0; index2<${#NumberArray[@]}-1-$index1; index2++ ))
		do
			num=$(($index2+1))
			if [ ${NumberArray[index2]} -gt ${NumberArray[num]} ]
			then
				tempNumber=${NumberArray[index2]}
				NumberArray[index2]=${NumberArray[num]}
				NumberArray[num]=$tempNumber
			fi
		done
	done
	echo ${NumberArray[@]}
}

sort "${NumberArray[@]}"
echo "Second smallest number is ${NumberArray[1]}"
secondLargeIndex=${#Numberarray[@]}-2
echo "Second largest number is ${NumberArray[secondLargeIndex]}"
