#! /bin/bash

echo -e "Enter the name of the file: \c"
# \c = intepret the next character literally, even if it might have special meaning inside the strig
read file_name

if [ -e $file_name ]; then
	# -e = checks if any type of file exists
	echo "File with name '$file_name' was found :)"
	if [ -s $file_name ]; then
	# even it dir is empty, still will be shown that file isn't empty
		echo "The file isn't empty"
	else
		echo "The file is empty"
	fi
else
	echo "File with name '$file_name' wasn't found :("
fi

if [ -d $file_name ]; then
	# -d = checks if the file is a directory (block special file)
	echo "Directory with name '$file_name' was found :)"
else
	echo "Directory with name '$file_name' wasn't found :("
fi

if [ -r $file_name ]; then
	echo "The file has read permission"
fi
if [ -w $file_name ]; then
	echo "The file has write permission"
fi
if [ -x $file_name ]; then
	echo "The file has execution permission"
fi
