#! /bin/bash

echo "Enter name: "
read name
echo "Hello $name"

echo "Enter please again:"
read name
echo "Hello again $name"

echo "Enter your name, surname and age:"
read name surname age
echo "$name, $surname, $age"

read -p 'name, surname, age: ' name surname age
echo "username: $name $surname $age"

read -sp "Write your password: " password
echo "Your passoword: " $password

echo "Enter names: "
read -a names # like an array
echo "Names: ${names[0]}, ${names[1]}"

echo "Write whatever you want and I will print it: "
read
echo "Your words: $REPLY"