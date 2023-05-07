#!/bin/bash

<<<<<<< HEAD
#Filip Bednarczyk


read -p "Enter filename: " filename

if [ ! -f "$filename" ]; then
    echo "$filename is not a file"
    exit 1
fi


temp_file=$(mktemp)


sort -u "$filename" > "$temp_file"


mv "$temp_file" "$filename"

echo "Duplicates removed from $filename"
=======
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "$1 is not a file"
    exit 1
fi

temp_file=$(mktemp)

sort -u "$1" > "$temp_file"

mv "$temp_file" "$1"

echo "Duplicates removed from $1"
>>>>>>> 019e276ea15607d51b697b8c5ce0c6d5b873a48c
