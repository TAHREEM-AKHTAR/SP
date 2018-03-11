#!/bin/bash
`mkdir noExtension`

for file in `ls`
do
	if [[ "$file" =~ "." ]]
then 
	extension=${file#*.}

	if [ -d $extension ]
	then
		
		`mv $file ./$extension`
	else
		
		`mkdir ./$extension`
		`mv $file ./$extension`
	fi
	else
		if [ -f $file ]
		then
			`mv $file ./$extension`
		fi
fi

done
