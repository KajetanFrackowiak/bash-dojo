#! /bin/bash

# case expression in
#	pattern1 )
#		statements ;;
#	pattern2 )
#		statemets ;;
#	...
#esac

calculate_rent() {
	local name="$1"
	local vehicle="$2"
	case $vehicle in
	"car" )
		echo "$name_and_surname rent of $vehicle is 100 dollar" ;;
	"van" )
		echo "$name_and_surname rent of $vehicle is 80 dollar" ;;
	"bicycle" )
		echo "$name_and_surname rent of $vehicle is 5 dollar" ;;
	"truck" )
		echo "$name_and_surname rent of $vehicle is 150 dollar" ;;
	* )
		echo "$name_and_surname unknown vehicle" ;;
	esac
}

echo "Introduce yourself (name and surname): "
read -a names
echo -e "Enter what kind of vehicle you'd like to rent (car, van, bicycle or truck): \c"
read vehicle

name_and_surname="${names[0]} ${names[1]}"

calculate_rent "$name_and_surname" "$vehicle"

echo "See you soon :)"
