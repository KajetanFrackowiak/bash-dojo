#! /bin/bash

os=('ubuntu' 'debian' 'kali')
os[3]='macOS'

echo "These are all the systems in my array: ${os[@]}"
# echo "This is the first system in my array: ${os[0]}"
echo "These are all the indexes in my array: ${!os[@]}"
echo "This is length of the array: ${#os[@]}"

os[10]='windows'
echo "These are all the systems in my array: ${os[@]}"
echo "These are all the indexes in my array: ${!os[@]}"
echo "This is length of the array: ${#os[@]}"
os[1]='fedora'

unset os[2]
echo "These are all the systems in my array: ${os[@]}"

string=somesomesome
echo "${string[@]}, and length of it is: ${!string[@]}, and it's that indexes: ${#string[@]}"
echo "As you can see, the length of it is one, though it is a string with many characters."

echo "That string's element under 0 index: '${string[0]}', and under index is nothing '${string[1]}'"
