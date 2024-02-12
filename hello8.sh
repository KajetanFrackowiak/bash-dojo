#! /bin/bash

echo -e "Enter first number: \c"
read num1
echo -e "Enter second number: \c"
read num2

echo "$num1 + $num2: " $(( num1 + num2 ))
# same as echo $(expr $num1 + $num2)
echo "$num1 - $num2: " $(( num1 - num2 ))
echo "$num1 * $num2: " $(( num1 * num2 ))
# same as echo  $(expr $sum1 \* $sum2)
echo "$num1 / $num2: " $(( num1 / num2 ))
echo "$num1 % $num2: " $(( num1 % num2 ))
