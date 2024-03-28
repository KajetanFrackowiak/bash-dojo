#! /bin/bash

# if [ condition ]
# then
#     statemnet
# fi

read -p "Enter number1 and number2: " number1 number2

if [ $number1 -eq $number2 ]; then
    echo "Number1 is equal to number2."
elif [ $number1 -gt $number2 ]; then
    echo "Number1 is greather than number2."
elif [ $number1 -ls $number2 ]; then
    echo "Number1 is smaller than number2."
fi

# if (($number1 > $number2 )); then == if [ $number1 -gt $number2 ]; then

read -p "Enter string1 and string2: " string1 string2

if [ $string1 == $string2 ]; then
    echo "String1 is equal to String2"
else
    echo "String1 is not equal to String2"
fi

if [[ $string1 > $string2 ]]; then
    echo "String1 is larger alphabetically than String2"
elif [[ $string1 < $string2 ]]; then
    echo "String1 is smaller alphabetically than String2"
fi
