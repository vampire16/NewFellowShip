#!/bin/bash -x

#ARRAY OF RANDOM NUMBERS
for (( i=0; i<10; i++ ))
do
	randomCheck=$((RANDOM%900 + 100))
	NumberArray[$i]=$randomCheck
done

#VARIABLES
small=${NumberArray[0]}
secondSmall=${NumberArray[0]}
large=${NumberArray[0]}
secondLarge=${NumberArray[0]}

#TO FIND SECOND LARGEST AND SMALLEST NUMBER
for (( index=0; index<10; index++ ))
do
	if [ ${NumberArray[index]} -ge $large ]
	then
		secondLarge=$large
		large=${NumberArray[index]}
	elif [ ${NumberArray[index]} -ge $secondLarge ]
	then
		secondLarge=${NumberArray[index]}
	fi

	if [ ${NumberArray[index]} -le $small ]
        then
                secondSmall=$small
                small=${NumberArray[index]}
        elif [ ${NumberArray[index]} -le $secondSmall ]
        then
                secondSmall=${NumberArray[index]}
        fi

done


echo ${NumberArray[@]}
echo "Second largest number is $secondLarge"
echo "Second smallest number is $secondSmall"
