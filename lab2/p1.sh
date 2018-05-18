#!/bin/bash
if [ $# = 0 ]
then 	
	echo "No args are given!"
elif [ $# -gt 6 ]
then 
echo "invalid np.. of args"
elif [ $# = 1 ]
then
 	declare -i s
	declare -i num
	num=$1
	s=1
	while [ $s -le 10 ]
	do
		echo "$num x $s = `expr $num \* $s`"
		s="$s + 1"
	done
elif [ $# = 3 ]
then
	exp=$2
	if [ "$exp" = "-s" ]
	then
 	declare -i s
	declare -i num
	num=$1
	s=$3
	while [ $s -le 10 ]
	do
		echo "$num x $s = `expr $num \* $s`"
		s="$s + 1"
	done
	fi
	if [ "$exp" = "-e" ]
	then
 	declare -i s
	declare -i num
	num=$1
	s=1
	declare -i e
	e=$3
	while [ $s -le $e ]
	do
		echo "$num x $s = `expr $num \* $s`"
		s="$s + 1"
	done
	fi

elif [ $# = 5 ]
then

	if [ "$2" = "-s" -a "$4" =  "-e" ]
	then
 	declare -i s
	declare -i e
	declare -i num
	num=$1
	s=$3
	e=$5
	while [ $s -le $e ]
	do
		echo "$num x $s = `expr $num \* $s`"
		s="$s + 1"
	done
	fi
elif [ $# = 6 ]
then

	if [ "$2" = "-s" -a "$4" =  "-e" -a "$6" = "-r" ]
	then
 	declare -i s
	declare -i e
	declare -i num
	num=$1
	s=$3
	e=$5
	while [ $e -ge $s ]
	do
		echo "$num x $e = `expr $num \* $e`"
		e="$e - 1"
	done
	fi
	

fi
