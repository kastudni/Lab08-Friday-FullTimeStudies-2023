#!/bin/bash

#Damian Powazka


#echo "Removing user from group"


echo "Enter username: "
read userd

if id "$userd" >/dev/null 2>&1; then

  echo "Enter group: "
  read groupd

  if groups $userd | grep $groupd >/dev/null 2>&1; then
    echo "$userd $groupd"
    gpasswd -d $userd $groupd
  else
    echo "User does not belong to this group"
  fi
else
  echo "User $userd does not exist"
fi