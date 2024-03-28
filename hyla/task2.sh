# Napisz skrypt, który sprawdzi, czy podano do niego dokładnie jeden argument 
# oraz czy jest to plik, a następnie wyszuka w tym pliku wszystkie wystąpienia ciągu “s[5cyfr]”

#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Enter exactly one argument (path to the file)."
    exit 1;
fi

if [ ! -f "$1" ]; then
    echo "The spiecified argument is not a file."
    exit 1;
fi

# Search for all occurrences of "s[5digits]" in the file
grep -oE 's[0-9]{5}' "$1"

exit 0