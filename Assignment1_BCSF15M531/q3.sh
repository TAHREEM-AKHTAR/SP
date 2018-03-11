#!/bin/bash
Is_lower()
{
	var=$string
	var2=${var^^}
	echo $var2
}
Is_root()
{
	if [ $USER = "root" ]
	then
		return 0
	else 
		return 1
	fi

}
Is_user_exist()
{
	ch=`cat /etc/passwd | grep -w $user`
	if [ $? = 0 ]
	then
		status=0
	else
		status=1
	fi
	return $status

}

#main
#1

echo -n "Enter String: "
read string
Is_lower string

#2

Is_root
if [ $? = 0 ]
then 
	echo "script is executed by root"
else
	echo "script is not executed by root"
fi

#3

echo -n "Enter user: "
read user
Is_user_exist user 
if [ $status = 0 ]
then
	echo "user exists"
else
	echo "user does not exist"
fi
