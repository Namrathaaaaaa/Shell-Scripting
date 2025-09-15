#!/bin/bash


<< disclaimer 
To check if a person is Loyal 
yes or no
disclaimer

read -p "Rahul turned back to see: " girl
read -p "Love Percentage: " love

if [[ $girl == "namratha" ]];
then 
	echo "Rahul is Loyal!"
elif [[ $love -ge 100 ]];
then
	echo "Rahul is loyal!"
else
	echo "Rahul is Bad Boy"
fi 


