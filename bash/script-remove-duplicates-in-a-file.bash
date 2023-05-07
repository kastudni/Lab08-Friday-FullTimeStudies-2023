#!/bin/bash

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