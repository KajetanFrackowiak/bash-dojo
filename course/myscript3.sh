#!/bin/bash

dir=/notextist

if [ -d $dir ]; then
	echo $?
	echo "The directory $dir exists."
else
	echo $? # dir doesn't exist
	echo "The directory $dir do not exists."
	echo $? # echo was successful
fi

echo "The exit code for this script run is $?" # Echo in if was successful so $? will be 0

exit 99 # after echo $? will be 99 
