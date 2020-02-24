#!/bin/bash -x

#USER INPUT
read -p "Enter number " num

for (( num=$num ; $(($num%2))==0; num=$(($num/2)) ))
do
   echo "2 "
done

temp=$(echo "sqrt($num)" | bc ) 
for (( i=3; i<=$temp; i=$i+2 ))
do
   while [ $(($num%$i)) -eq 0 ]
   do
      echo "$i "
      num=$(($num/$i))
	done
done

if [ $num -gt 2 ]
then
   echo "$num "
fi




