#!/bin/bash

echo "Please enter your first and last name: "
read first_name last_name

echo "Please enter your Student ID: "
read student_id

#check if the student ID matches 1234

if [ "$student_id" = "1234" ]; then
	echo "Welcome $first_name $last_name, welcome to your virtual machine!"
else
        echo "Error, invalid StudentID: $student_id. Please try again."
fi	
