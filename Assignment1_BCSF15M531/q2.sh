#!/bin/bash
file=$1
lineNo=1

eout="evenfile"
oout="oddfile"


if [ $# -eq 0 ]
then
	echo "No arguments given"
	exit 1
fi

if [ ! -f $file ]
then
	echo "$file does not exist "
	exit 2
fi

while read line
do
	isEven=$( expr $lineNo % 2 )

	if [ $isEven -eq 0 ]
	then
		echo $line >> $eout
	else
		echo $line >> $oout

	fi
	((lineNo++))

done < $file


