#!/bin/bash
if [ $# = 1 ]
then
	declare -i id
	
	for id in `pidof $1`
	do

	
	
	echo "PID: $id"
		

echo `cat /proc/$id/status | grep "Name:"`
echo `cat /proc/$id/status | grep "PPid"`
echo `cat /proc/$id/status | grep "State"` 
	done

		
else
	echo " no args"
fi

