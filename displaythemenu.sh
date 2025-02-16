#!/bin/bash

# Function to display the menu
display_menu() {
    echo "---------------------------"
    echo "1. List of Files"
    echo "2. Process Status"
    echo "3. Date"
    echo "4. Users in the system"
    echo "5. Quit"
    echo "---------------------------"
    echo "Enter your choice (1-5): "
}

# Infinite loop to keep showing the menu
while true
do
    display_menu  # Display the menu
    read choice   # Read user input

    # Execute the selected option using a case statement
    case $choice in
        1)
            echo "List of files in the current directory:"
            ls -l      # List files in the current directory with detailed info
            ;;
        2)
            echo "Process status:"
            ps         # Display the current processes
            ;;
        3)
            echo "Current Date and Time:"
            date       # Show the current date and time
            ;;
        4)
            echo "Users currently logged in:"
            who        # Show the list of logged-in users
            ;;
        5)
            echo "Exiting program."
            exit 0      # Exit the script
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
