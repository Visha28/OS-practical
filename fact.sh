#!/bin/bash

# Function to calculate factorial
factorial() {
    num=$1
    fact=1
    for (( i=1; i<=num; i++ ))
    do
        fact=$((fact * i))
    done
    echo "The factorial of $num is $fact"
}

# Read input from the user
read -p "Enter a number: " number

# Call the factorial function
factorial $number
