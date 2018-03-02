#!/bin/bash
if [ $# -eq 2 ]
then
	echo "Addition: $1 + $2"
	echo `expr $1 + $2 `
	echo "Subtraction: $1 - $2"
	echo `expr $1 - $2 `
	echo "Multiplication: $1 * $2"
	echo `expr $1 \* $2 `
	echo "mod:"
	echo `expr $1 % $2 `
	if [ $2 -ne 0 ]
	then
	echo "Division: "
	echo `expr $1 / $2 `
	else
	echo "Not Possible"
fi
else
	echo "enter two num:"
 	read $v1 $v2
	echo "Addition: $v1 + $v2"
	echo `expr $v1 + $v2 `
	echo "Subtraction: $v1 - $v2"
	echo `expr $v1 - $v2 `
	echo "Multiplication: $v1 * $v2"
	echo `expr $v1 \* $v2 `
	echo "mod:"
	echo `expr $v1 % $v2 `
	if [ $v2 -ne 0 ]
	then
	echo "Division: "
	echo `expr $v1 / $v2 `
	else
	echo "Not Possible"
fi


fi
