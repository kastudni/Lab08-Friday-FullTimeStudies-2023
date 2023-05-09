#!/bin/bash

#Maciej Ficek

read -p "Enter username " username

if id -u $username >/dev/null 2>&1; then
	echo "User $username exists"
else
	echo "User $username does not exist"
	exit 1
fi

read -p "Enter filename " filename

if [ -f $filename ]; then
	echo "File $filename exists"
else
	echo "File $filename does not exist"
	exit 1
fi

if [ ! -r $filename ] || [ ! -w $filename ] || [ ! -x $filename ]; then
	echo "$username does not have all permissions to $filename. Adding permissions..."
	chmod u+rwx $filename 
	echo "$username now has all permissions to $filename"
else
	echo "$username already has all permisisons to $filename"
fi
