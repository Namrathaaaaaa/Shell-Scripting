#!/bin/bash 


<< comment 
This is my attempt 
to create a 5 textfiles
using a shell 
comment

create_file(){
        for ((num=1;num<=5;num++));
        do
                touch "file$num.txt"
        done
}


create_file