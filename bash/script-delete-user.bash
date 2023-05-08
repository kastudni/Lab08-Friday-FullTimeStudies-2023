#!/bin/bash

# Dawid Czesak

if [ "$(id -u)" != "0" ]; then
    echo "Odpal jako root"
    exit 1
fi

read -p "Podaj nazwe uzytkownika do usuniecia: " username

if id "$username" >/dev/null 2>&1; then
    rm -rf /home/$username
    
    userdel -r $username
    
    echo "Użytkownik '$username' i bibloteka zostaly usuniete"
else
    echo "Uzytkownik '$username' nie istnieje."
fi
