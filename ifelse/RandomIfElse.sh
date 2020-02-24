#!/bin/bash -x

#5 RANDOM NUMBERS WHICH SHOULD BE 3 DIGIT NUMBER
random1=$((RANDOM%900 +100))
echo $random1
random2=$((RANDOM%900 +100))
echo $random2
random3=$((RANDOM%900 +100))
echo $random3
random4=$((RANDOM%900 +100))
echo $random4
random5=$((RANDOM%900 +100))
echo $random5

if [ $random1 -lt $random2 -a $random1 -lt $random3 -a $random1 -lt $random4 -a $random1 -lt $random5 ]
then
	 min=$random1
fi
if [ $random2 -lt $random1 -a $random2 -lt $random3 -a $random2 -lt $random4 -a $random2 -lt $random5 ]
then
         min=$random2
fi
if [ $random3 -lt $random2 -a $random3 -lt $random1 -a $random3 -lt $random4 -a $random3 -lt $random5 ]
then
         min=$random3
fi
if [ $random4 -lt $random2 -a $random4 -lt $random3 -a $random4 -lt $random1 -a $random4 -lt $random5 ]
then
         min=$random4
fi
if [ $random5 -lt $random2 -a $random5 -lt $random3 -a $random5 -lt $random4 -a $random5 -lt $random1 ]
then
         min=$random5
fi


if [ $random1 -gt $random2 -a $random1 -gt $random3 -a $random1 -gt $random4 -a $random1 -gt $random5 ]
then
         max=$random1
fi
if [ $random2 -gt $random1 -a $random2 -gt $random3 -a $random2 -gt $random4 -a $random2 -gt $random5 ]
then
         max=$random2
fi
if [ $random3 -gt $random2 -a $random3 -gt $random1 -a $random3 -gt $random4 -a $random3 -gt $random5 ]
then
         max=$random3
fi
if [ $random4 -gt $random2 -a $random4 -gt $random3 -a $random4 -gt $random1 -a $random4 -gt $random5 ]
then
         max=$random4
fi
if [ $random5 -gt $random2 -a $random5 -gt $random3 -a $random5 -gt $random4 -a $random5 -gt $random1 ]
then 
         max=$random5
fi

echo "Minimum: $min" 
echo "Maximum: $max"
