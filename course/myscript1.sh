#!/bin/bash

mynum=10
:
if [ $mynum -eq 16 ]; then
	echo "You're as old as I thougt"
elif [ $mynum -gt 18 ]; then
	echo "Since today you're adult!!!"
else
	echo "Hmm, how old are u?"
fi


if [ -f ~/myfile ]; then # is equavalent to /home/user/myfile
	echo "The file exists."
else
	echo "The file doesn't exist."
	touch ~/myfile
	echo "Since now yes"
fi

command="/usr/bin/htop"

if [ -x "$command" ]; then
	version="$("$command" --version)"
	echo "htop version: $version"
else
	echo "$command is not available"
fi
