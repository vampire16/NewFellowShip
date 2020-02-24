#!/bin/bash -x

#CHOICE OF USER
read -p "Enter a number 1)fahrenheit to celsius 2)celsius to fehrenheit : " choice

#FUNCTION TO CONVERT FAHRENHAIT TO CELSIUS
function fahrenheitToCelsius(){
	degF=$1
	if [ $degF -lt 212 -a $degF -gt 32 ]
	then
		degC=`expr $(($degF-32))*5/9 | bc -l`
		echo "Output in celsius : $degC"
	else
		echo "Fahrenheit value should within 32F to 212F"
	fi
}

#FUNCTION TO CONVERT CELSIUS TO FAHRENHEIT
function celsiusToFahrenheit(){
   degC=$1
   if [ $degC -lt 100 -a $degC -gt 0 ]
   then
      degF=`expr $(($degC*9/5 ))+32 | bc -l`
      echo "Output in fahrenheit : $degF"
   else
      echo "Celsius value should within 0C to 100C"
   fi
}

#READING CHOICE FROM USER
case $choice in
1)
   read -p "Enter fahrenheit value : " fahren
   result=$(fahrenheitToCelsius $fahren)
   echo $result
   ;;
2)
   read -p "Enter celsius value : " celsius
   result=$(celsiusToFahrenheit $celsius)
   echo $result
   ;;
*)
	echo "Invalid choice"
esac

