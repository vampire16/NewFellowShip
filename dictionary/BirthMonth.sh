#!/bin/bash -x

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

months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

declare -A monthArray

for (( person=1; person<=50; person++ ))
do
	randomMonth=$((RANDOM%12 + 1))

	case $randomMonth in
	1)
		((count1++))
		monthArray[${month[0]}]=count1
		;;
	2)
      ((count2++))
      monthArray[${month[1]}]=count2
      ;;
	3)
      ((count3++))
      monthArray[${month[2]}]=count3
      ;;
	4)
      ((count4++))
      monthArray[${month[3]}]=count4
      ;;
	5)
      ((count5++))
      monthArray[${month[4]}]=count5
      ;;
	6)
      ((count6++))
      monthArray[${month[5]}]=count6
      ;;
	7)
      ((count7++))
      monthArray[${month[6]}]=count7
      ;;
	8)
      ((count8++))
      monthArray[${month[7]}]=count8
      ;;
	9)
      ((count9++))
      monthArray[${month[8]}]=count9
      ;;
	10)
      ((count10++))
      monthArray[${month[9]}]=count10
      ;;
	11)
      ((count11++))
      monthArray[${month[10]}]=count11
      ;;
	12)
      ((count12++))
      monthArray[${month[11]}]=count12
   esac
done
