#!/bin/bash 

<<comment 
This is to take input from user
create user
comment

read -p "Enter username: " username

echo "you entered $username"

sudo useradd -m $username

echo "User Added"




