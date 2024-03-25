#!/bin/bash

myvar=1

while [ $myvar -le 10 ]; do
	echo $myvar
	myvar=$(( $myvar +1 )) # create new version of my var
	sleep 0.3
done
