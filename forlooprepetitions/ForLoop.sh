#!/bin/bash -x 

for file in `ls *.txt`;
do
	foldername=`echo $file | awk -F. '{print $1}'`;
	if [ -d $foldername ];
	then
	  rm -R $foldername;
	fi
	mkdir $foldername;
	cp $file $foldername;
	rm $file;
done
