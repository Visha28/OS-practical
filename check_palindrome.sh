#!/bin/bash

# Function to check if a number is a palindrome
is_palindrome() {
    local num=$1
    local reversed=0
    local original_num=$num

    # Reverse the number
    while [ $num -gt 0 ]; do
        local digit=$((num % 10))
        reversed=$((reversed * 10 + digit))
        num=$((num / 10))
    done

    # Check if the original number and reversed number are the same
    if [ "$original_num" -eq "$reversed" ]; then
        echo "$original_num is a palindrome."
    else
        echo "$original_num is not a palindrome."
    fi
}

# Read a number from the user
read -p "Enter a number: " number

# Check if the input is a valid number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter a valid integer."
    exit 1
fi

# Call the function to check if the number is a palindrome
is_palindrome $number
