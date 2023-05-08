#!/bin/bash

# Krzysztof Soból

echo "Enter path of the dir to clean: "
read dir_to_clean

echo "Enter age of files to delite (as a number of days): "
read age

find $dir_to_clean -type f -mtime +$age - exec rm {} \;
find $dir_to_clean -type d -mtime +$age - exec rm -r {} \;