#!/bin/bash
showAllOwner()
{

	
	echo "File name : File type :owner"
	for file in `ls ~`
	do
	r=`ls -l ~/$file | grep $1`
	if [ $? = 0 ]
	then
		echo "`file ~/$file`: $1"
	
	fi
	
	

	done

}
if [ $# = 1 ]
then
	showAllOwner $1
elif [ $# = 0 ]
then
echo "no args passed"
else
echo "too many args"
fi
