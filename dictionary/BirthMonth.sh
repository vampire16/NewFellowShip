#!/bin/bash -x

#VARIABLES
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0

#MONTHS ARRAY
months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

declare -A monthDictionary

#50 INDIVIDUAL BIRTHDAYS STORED IN DICTIONARY
for (( person=1; person<=50; person++ ))
do
	randomMonth=$((RANDOM%12 + 1))

	case $randomMonth in
	1)
		((count1++))
		monthDictionary[${months[0]}]=$count1
		;;
	2)
      ((count2++))
      monthDictionary[${months[1]}]=$count2
      ;;
	3)
      ((count3++))
      monthDictionary[${months[2]}]=$count3
      ;;
	4)
      ((count4++))
      monthDictionary[${months[3]}]=$count4
      ;;
	5)
      ((count5++))
      monthDictionary[${months[4]}]=$count5
      ;;
	6)
      ((count6++))
      monthDictionary[${months[5]}]=$count6
      ;;
	7)
      ((count7++))
      monthDictionary[${months[6]}]=$count7
      ;;
	8)
      ((count8++))
      monthDictionary[${months[7]}]=$count8
      ;;
	9)
      ((count9++))
      monthDictionary[${months[8]}]=$count9
      ;;
	10)
      ((count10++))
      monthDictionary[${months[9]}]=$count10
      ;;
	11)
      ((count11++))
      monthDictionary[${months[10]}]=$count11
      ;;
	12)
      ((count12++))
      monthDictionary[${months[11]}]=$count12
   esac
done

#SEARCHING WHICH MONTH HAS MAXIMUM BIRTHDAYS
max=${monthDictionary[${months[0]}]}
for (( index=0; index<12; index++ ))
do
	temp="${monthDictionary[${months[index]}]}"
	if (( max < temp ))
	then
		max=$temp
		month=${months[index]}
	fi
done

echo "Maximum birthdays comes in $month : $max" 
