arr=(`ls -li 'q3'`)
arr2=(`ls -li 'q4'`)
if [ $# -eq 2 ]
then
	if [ ${arr[3]} = $2 ]
	then
		cheating=0
	echo "owner: ${arr[3]}"
	echo "group: ${arr[4]}"
	echo "permission: ${arr[1]}"
	echo "filename: $1"
	echo "cheating: $cheating"
	else 
	cheating=1
	echo "owner: ${arr[3]}"
	echo "group: ${arr[4]}"
	echo "permission: ${arr[1]}"
	echo "filename: $1"
	echo "cheating: $cheating"
	fi
elif [ $# -eq 4 ]
	then
	if [ ${arr[3]} = $2 ] && [ ${arr2[3]} = $4 ]
	then
		differ=(`diff q3 q4`)
		if [ ${differ[*]} =  ]
		then 
		echo "cheating:1"
		else
			echo "owner: ${arr[3]}"
			echo "group: ${arr[4]}"
			echo "permission: ${arr[1]}"
			echo "filename: $1"
			echo "cheating: 0"

			echo "owner: ${arr2[3]}"
			echo "group: ${arr2[4]}"
			echo "permission: ${arr2[1]}"
			echo "filename: $1"
			echo "cheating: 0"
		fi
	fi
	
else
	echo "wrong no. of arguments"





fi
