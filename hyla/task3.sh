: '
NA DODATKOWY PUNKT Napisz skrypt, który wspomoże biednego wykładowcę w sprawdzaniu kolokwiów. 
W katalogu znajdują się 32 pliki cpp, nazywające się zgodnie ze wzorem - [nrindeksu]_z1.cpp. 
Zadanie, które będzie sprawdzane poległo na wczytaniu od użytkownika liczby <25 i wydrukowaniu jej silni. 
Biedny wykładowca chciałby aby:
Wyświetlony na górze ekranu został nr indeksu studenta bez rozszerzenia oraz numeru zadania
Poniżej wyniki wywołania sprawdzanego zadania na wartościach 5, 10 i 30
Skrypt umożliwił mu wpisanie liczby punktów za zadanie i umieszczenie jej wraz z 
SAMYM nr indeksu w pliku tekstowym lub wyświetlenie kodu zadania w razie wątpliwości
Po wpisaniu oceny powinien przejść automatycznie do następnego studenta.
'

#!/bin/bash

# Iterate through all cpp files in the directory
for file in *.cpp; do
    # Extract student index and task number from the file name
    index=$(echo "$file" | cut -d'_' -f1)
    task=$(echo "$file" | cut -d'_' -f2 | cut -d'.' -f1)

    # Display information at the top of the screen
    clear
    echo "Student Index: $index, Task Number: $task"

    # Compile and run the program
    g++ -o temp_executable "$file"
    result_5=$(./temp_executable <<< "5")
    result_10=$(./temp_executable <<< "10")
    result_30=$(./temp_executable <<< "30")

    # Display results
    echo -e "\nResult for 5: $result_5"
    echo -e "Result for 10: $result_10"
    echo -e "Result for 30: $result_30"

    # Ask for grade and save the result to a file
    read -p "Enter the points for the task (or 'code' in case of doubt): " points
    if [ "$points" == "code" ]; then
        cat "$file"
    else
        echo "$index $points" >> grades.txt
    fi

    # Wait for confirmation before moving to the next student
    read -p "Press Enter to proceed to the next student..."
done

# Remove the temporary executable file
rm temp_executable
