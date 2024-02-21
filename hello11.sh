#! /bin/bash

echo -e "Enter some character: \c"
read value

case $value in
	[a-z] )
		echo "It's a little letter: $value" ;;
	[A-Z] )
		echo "It's a big letter: $value" ;;
	[0-9] )	
		echo "It's a digit: $value" ;;
	? )
		echo "It's a special character: $value" ;;
	* )
		echo "Unknown character" ;;
esac
