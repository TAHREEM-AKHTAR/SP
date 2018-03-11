#!/bin/bash

file=$1

if  [ $# -eq 0 ]
then
	echo " no args given "
	exit 1
fi

if [ ! -f $file ]
then 
	echo " file does not exit "
	exit 2
fi

`sort -u $file > dup2 `
`cat dup2>$file`

