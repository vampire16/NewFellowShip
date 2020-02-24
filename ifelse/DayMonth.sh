#!/bin/bash -x

#TAKING INPUT FROM COMMAND-LINE $1-DAY, $2-MONTH
if [ $2 -eq 3 -a $1 -ge 20 -a $1 -le 31 ]
then echo "true"
fi
if [ $2 -eq 4 -a $1 -ge 1 -a $1 -le 30 ]
then echo "true"
fi
if [ $2 -eq 5 -a $1 -ge 1 -a $1 -le 31 ]
then echo "true"
fi
if [ $2 -eq 6 -a $1 -le 20 -a $1 -ge 1 ]
then echo "true"
else echo "false"
fi
