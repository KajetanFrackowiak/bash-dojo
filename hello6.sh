#! /bin/bash

echo -e "Enter you age: \c"
read age

if [ "$age" -gt 18 -a "$age" -lt 30 ]; then  # -a = and flag
# same as: [[ "$age" -gt 18 && "age" -lt 30 ]]; then
# same as: [ "age" -gt 18 ] && [ "age" -lt 30 ]; then
	echo "Age is valid"
else
	echo "Age isn't valid"
fi
