#!/bin/bash
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