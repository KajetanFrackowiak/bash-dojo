#!/bin/bash

while [ -f ~/testfile ]; do
	echo "As of $(date), the test file exists."
	sleep 3
done

echo "As od $(date), the test file has gone missing."

