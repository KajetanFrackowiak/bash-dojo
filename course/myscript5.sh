#!/bin/bash

myvar=1

while [ -f ~/testfile ]; do
	echo "As of $(date), the test file exists."
	exit 0
done

echo "As of $(date), the test file has gone missing."
