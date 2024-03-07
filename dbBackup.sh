#!/bin/bash

#Welcome Message
echo "Welcome to the MySQL DB Backup Script v1.0"
sleep 1
echo "This script will back up a MySQL DB of your choice"
sleep 1
echo "----------------Gathering Details---------------"
sleep 1

#Gather Backup Details
read -p "Enter teh name of the MySQL DB that should be backed up: " dbBackup
sleep 1
read -p "Enter the absolut path where you'd like to save your back up file: " absoPath
sleep 1
read -p "Enter the desired name of the backup file (without the extension): "backupFile
sleep 1

#Create the final backup location and file name
finalBackup="$absoPath/$backupFile-$(date +%Y-%m-%d_%H-%M-%S).sql"

#Prompt the user for the username and the passord to MySQL
read -p "Enter the username for MySQL: " usrName
sleep 1
read -s -p "Enter the password for MySQL: " psswd

#Commence DB Backup
sudo mysqldump -u $usrName -p$psswd $dbBackup > $finalBackup

#Validation and Error Check
if [ $? = 0];then 
       	echo "Backup was succesful. Your backup file is located here $finalBackup"
else 	
   echo "An error occorred during the backup. Try Again,"

fi	
