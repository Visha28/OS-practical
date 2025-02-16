#!/bin/bash

# Get basic salary, HRA, and other allowances from the user
echo "Enter Basic Salary: "
read basic_salary

echo "Enter HRA (House Rent Allowance): "
read hra

echo "Enter Other Allowances: "
read other_allowances

# Calculate the Gross Salary
gross_salary=$(echo "$basic_salary + $hra + $other_allowances" | bc)

# Display the Gross Salary
echo "The Gross Salary of the employee is: $gross_salary"
