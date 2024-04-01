#!/bin/bash

echo "Write path to script:"
read -r dir

if [ $# -ne 1 ]; then
	echo "This script requires exactly one directory path passed to it."
	echo "Please try again."
	exit 1
fi

lines=$(ls -lh $dir | wc -l)
# `ls -lh` ) shows the contents in a long format with human-readable file sizes
# pipes (`|`) to `wc -l` )which counts the number of lines) and stores the result in the var `lines`

echo "You have $(($lines-1)) objects in the $dir directory."

echo "How many lines do you want to see?"
read -r amountOfLines
head -n $amountOfLines $dir"/*
