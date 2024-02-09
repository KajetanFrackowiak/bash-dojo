#! /bin/bash

echo -e "ENter the name of the file: \c"
read file_name

if [ -f $file_name ]; then
	echo "$file_name isn't empty"
else
	echo "$file_name is empty"
fi
