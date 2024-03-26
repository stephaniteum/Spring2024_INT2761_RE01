#!/bin/bash

echo "Please enter your name: "
read name

#current hour

current_hour=$(date +"%H")

#Greats them appropriately based on the time of day.

if [ "$current_hour" -lt 12 ]; then
	echo "Good morning, $name!"
elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 17 ]; then
	echo "Good afternoon, $name!"
else
        echo "Good evening, $name!"

fi	
    	
