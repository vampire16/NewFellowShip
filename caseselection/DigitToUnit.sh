#! /bin/bash -x

#USER INPUT
read -p "enter numbers between 1,10,100,1000 : " number

case $number in
1) echo "Unit" ;;
10) echo "Ten" ;;
100) echo "Hundred" ;;
1000) echo "Thousand" ;;
*) echo "Inavalid"
esac
