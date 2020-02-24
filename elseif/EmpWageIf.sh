#!/bin/bash -x

#CONSTANT VARIABLES
ISPARTTIME=1;
ISFULLTIME=2;
EMPRATEPERHOUR=20;

randomCheck=$((RANDOM%3));

if [ $ISFULLTIME -eq $randomCheck ]
then
	empHrs=8;
elif [ $ISPARTTIME -eq $randomCheck ]
then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(($empHrs * $EMPRATEPERHOUR));
echo  "Salary of emplyee is $salary"
