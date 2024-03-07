#!/bini/bash

#Welcome the user to the Question Script
echo "Welcome to the Questionnaire v1.0"
sleep 1
echo "Create by $(whoami) on $(date)"
sleep 1
echo "You will be prompted to answer several question."
sleep 1
echo "Let's begin"
sleep 1
echo " --------------------Start Questions---------------"
sleep 1

#Question 1
read -p "What is your favorite color? " color

#Question 2
read -p "What is your favorite activity " activity

#Question 3
read -p "What is your favorite pizza topping? " pizza
sleep 1

echo "--------------End of Questions--------------"
sleep 1
echo "-------------Formulating Results----------"
sleep 3

#Generate Results that use basic logic
if [ $color = "Blue" ]
then
        echo "your favorite color is $color. Did you know that $coloris the most popular color in the world!"
elif [ $color = "pink" ] 
then
        echo "Your favorite color is $color. Did you know that $color is the second most popular color in the world!"
elif [ $color = "Green" ]
then
       echo "Your favorite color is $color. Did you know that $color is made by mixing blue and yellow :-)  !"
else 
       	echo "Your favorite color is $color. Nice!!"


if [ $activity = "reading" ]
then
        echo "$activity will keep your memory active"
elif [ $activity = "sleeping" ]
then
        echo "Did you know $activity will shutdown your memory"
elif [ $activity = "I don' know"]
then 	
	echo " $activity isn't a nice to respond you have to know your favorite activity" 
fi
sleep

if [ $pizza = "orange"]
then	
	echo "$pizza is also my favorite flavour"

fi
sleep 1

echo "----------Thanks for answering---------"
