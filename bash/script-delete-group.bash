#!/bin/bash

# Robert Kania

if [ $# -ne 1 ]; then
  echo "Użycie: $0 <nazwa_grupy>"
  exit 1
fi

GROUP=$1

if ! getent group $GROUP > /dev/null 2>&1; then
  echo "Grupa $GROUP nie istnieje."
  exit 1
fi

sudo groupdel $GROUP
echo "Grupa $GROUP została usunięta."
