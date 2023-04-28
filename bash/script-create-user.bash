#!/bin/bash

# Studnicka Katarzyna

echo "Enter username: "
read username

if id "$username" >/dev/null 2>&1; then
   echo "User $username already exists"
else
   useradd -m "$username"
   echo "User $username created successfully"
fi
