#! /bin/bash

echo $0 $1 $2 $3 ' > echo $0 $1 $2 $3' # $0 = script name

args=("$@")

echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo ${args[0]} ${args[1]} ${args[2]} # same as above
echo ${args[1]} ${args[2]} ${args[3]} # not sam as above
echo $@ # all args
echo $# # num of args