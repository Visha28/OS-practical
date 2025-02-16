#!/bin/bash

# Function to print the day of the week based on the input number
print_day() {
    case $1 in
        1) echo "1 corresponds to Sunday." ;;
        2) echo "2 corresponds to Monday." ;;
        3) echo "3 corresponds to Tuesday." ;;
        4) echo "4 corresponds to Wednesday." ;;
        5) echo "5 corresponds to Thursday." ;;
        6) echo "6 corresponds to Friday." ;;
        7) echo "7 corresponds to Saturday." ;;
        *) echo "Error: Please enter a number between 1 and 7." ;;
    esac
}

# Read a number from the user
read -p "Enter a number (1-7): " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[1-7]$ ]]; then
    echo "Error: Please enter a valid number between 1 and 7."
    exit 1
fi

# Call the function to print the corresponding day
print_day $number
