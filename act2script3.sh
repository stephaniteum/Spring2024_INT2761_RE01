#!/bin/bash

#Define teh variable for username
read -p "Enter your username: " nme

#Evaluate and format the time
timeDate=$(date +%H)

#If/Then logic that evaluates the time

if [ $timeDate -lt 12 ] 
then
	echo "Good Morning, $nme."
elif [ $timeDate -lt 17 ] 
then
        echo "Good Afternoon, $nme."
else
       echo "Good Evening, $nme."
fi       
