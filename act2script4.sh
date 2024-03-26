#!/bin/bash

generate_report() {

	current_date_time=$(date +"%Y-%m-%d %H:%M:%S")


	echo "Report generate at: $current_date_time"
	sleep 1
	echo "-------------:)-----------------------"
        sleep 1

	#CPU usage details

	echo "CPU Usage:"
	top -bn1 | grep "Cpu"
         
	sleep 1
	#Memory usage details"

	echo "Memory Usage:"
	free -m

       sleep 1
	#Disk usage details

	echo "Disk Usage:"
	df -h

	echo "-------------:)---------------------"
	echo "End of Report"
} 

generate_report
