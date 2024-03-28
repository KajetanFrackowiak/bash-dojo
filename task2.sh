#!/bin/bash

read -p "Enter number from 1 to 20: " number

if ! [[ "$number" =~ ^(1?[1-9]|20)$ ]]; then
        echo "Entered number is incorrect."
        exit 1
fi

# Read line with number what was entered
car=$(sed -n "${number}p" lista.txt)
echo $car