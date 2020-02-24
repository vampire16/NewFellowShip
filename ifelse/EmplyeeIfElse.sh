#! /bin/bash -x
#check Employee is present or absent

#CONSTANT VARIABLES
ISPRESENT=1;

randomCheck=$((RANDOM%2))

if [ $ISPRESENT -eq $randomCheck ];
then
   echo "Employee present";
else
   echo "Employee absent";
fi
