#!/bin/bash -x

#RANDOM NUMBERS
random1=$(( RANDOM%90 + 10 ))
echo $random1
random2=$(( RANDOM%90 + 10 ))
echo $random2
random3=$(( RANDOM%90 + 10 ))
echo $random3
random4=$(( RANDOM%90 + 10 ))
echo $random4
random5=$(( RANDOM%90 + 10 ))
echo $random5

sum=$(( $random1+$random2+$random3+$random4+$random5 ))
echo "sum is $sum"

avg=`expr $(($sum/5)) | bc -l`   
echo "avg is $avg"


