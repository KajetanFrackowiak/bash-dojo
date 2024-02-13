#! /bin/bash

echo "Introduce Yourself: "
read -a names
echo -e "Enter first number. Can be float or integer: \c"
read num1
echo -e "Enter second number. Can be float or integer: \c"
read num2
addition=$(echo "$num1 + $num2" | bc)
substraction=$(echo "$num1 - $num2" | bc)
multiplication=$(echo "$num1 * $num2" | bc)
division=$(echo "scale=3;$num1 / $num2" | bc)
modulo=$(echo "$num1 % $num2" | bc)
logarithm1=$(echo "scale=2;sqrt($num1)" | bc -l)
logarithm2=$(echo "scale=2;sqrt($num2)" | bc -l)
power1=$(echo "scale=2;$num1^$num1" | bc)
power2=$(echo "scale=2;$num2^$num2" | bc)

echo "It's your results ${names[0]} ${names[1]}"
echo "$num1 + $num2 = $addition"
echo "$num1 - $num2 = $substraction"
echo "$num1 * $num2 = $multiplication"
echo "$num1 / $num2 = $division"
echo "$num1 % $num2 = $modulo"
echo "log($num1) = $logarithm1"
echo "log($num2) = $logarithm2"
echo "$num1^$num1 = $power1"
echo "$num2^$num2 = $power2"

echo "Goodbye :)"
