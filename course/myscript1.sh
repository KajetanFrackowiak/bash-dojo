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

if command -v "$command" &>/dev/null; then #&> Redirects both stdout and stder. /dev/null is a special device fileon Unix-like that discards all data written to it
	version="$("$command" --version)"
	echo "htop version: $version"
else
	echo "$command is not available"
	sudo apt update && sydo apt install -y $command # -y flag stands for "yes"
fi



