#!/bin/bash

# Function for is loyal 

function is_loyal(){
read -p "$1 turned back to see: " girl 
read -p "Enter $1 love%: " love

if [[ $girl == "namratha" ]];
then 
	echo "$1 is loyal!"
elif [[ $love -ge 100 ]];
then 
	echo "$1 is in love and loyal!"
else
	echo "$1 is Bad"
fi 
}


is_loyal "adi"


