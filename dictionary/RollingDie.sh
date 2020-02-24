#!/bin/bash -x

#VARIABLES
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

declare -A  rollDice

while ((1))
do
	randomDice=$((RANDOM%6 +1))
	case $randomDice in
	1)
		((count1++))
		rollDie[1]=$count1
		;;
	2)
      ((count2++))
      rollDie[2]=$count2
      ;;
	3)
      ((count3++))
      rollDie[3]=$count3
      ;;
	4)
      ((count4++))
      rollDie[4]=$count4
      ;;
	5)
      ((count5++))
      rollDie[5]=$count5
      ;;
	6)
      ((count6++))
      rollDie[6]=$count6
      ;;
	esac
	if (( $count1==10 || $count2==10 || $count3==10 || $count4==10 || $count5==10 || $count6==10 ))
	then 
		break
	fi
done

#PRINTING DICTIONARY
for (( index=1;index<=${#rollDie[@]};index++ ))
do
	echo "$index : ${rollDie[$index]}"
done

#FINDING NUMBER REACHED MINIMUM TIMES AND MAXIMUM TIMES
min=${rollDie[1]}
max=${rollDie[1]}

for (( index=1; index<=${#rollDie[@]}; index++ ))
do
	if (( max < ${rollDie[index]} ))
	then
		max=${rollDie[index]}
		maxIndex=$index
	fi

	if (( min > ${rollDie[index]} ))
	then
		min=${rollDie[index]}
		minIndex=$index
	fi
done

echo "$maxIndex : $max"
echo "$minIndex : $min"
