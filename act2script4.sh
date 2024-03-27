#!/bin/bash

#Define a function
generate_report(){
	read -p "Enter the name of the report: " reportUsage
	touch /home/mbobdas/$reportUsage
	echo "------------------ VM Usage Report ------------" > /home/mbobdas/$reportUsage
	echo " " >> /home/mbobdas/$reportUsage
	echo "------ Date and Time: $(date) -------" >> /home/mbobdas/$reportUsage
	echo " " >> /home/mbobdas/$reportUsage
	echo "------------------- CPU Utilization -----------" >> /homembobdas/$reoprtUsage
	sudo top -b 1 -n 1 | grep -i "CPU" >> /home/mbobdas/$reportUsage
	echo " " >> /home/mbobdas/reportUsage
	echo "-------------------- Memory Ustilization -----------" >> /home/mbobdas/$reportUsage
	sudo free -h >> /home/mbobdas/reportUsage
	echo " " >> /home/mbobdas/$reportUsage
	echo "------------------- Disk Utilization -----------" >> /home/mbobdas/$reportUsage
	sudo df -h >> /home/mbobdas/$reportUsage
	echo " " >> /home/mbobdas/$reportUsage
	echo "------------------ End of Report --------------" >> /home/mbobdas/$reportUsage
	echo "The report is located at /home/mbobdas/$reportUsage."

}	

generate_report
