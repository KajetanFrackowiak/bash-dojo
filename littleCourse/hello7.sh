#!/bin/bash

prompt="Enter your age (between 1 and 100): "  # Consistent spacing and colon
invalid_age_message="Invalid age. Please enter a number between 1 and 100."
underage_message="Unfortunately, you're underage."
approved_message="You're approved!"

while true; do
    echo -e "$prompt\c"  # Display the prompt

    read age

       age_int=${age%%.*}  # Extract the integer part of the age

        # Combine conditions for clarity and efficiency
        if (( age_int < 1 || age_int > 100 )); then
            echo -e "$invalid_age_message"
        elif (( age_int < 18 )); then
            echo -e "$underage_message"
        else
            echo -e "$approved_message"
            break  # Exit the loop upon valid age
        fi

done

