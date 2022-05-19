#!/bin/bash

echo "input the date : >"
read date_test

if [[ $date_test == [0-3][0-9]/[0-1][0-9]/[0-9][0-9][0-9][0-9] ]]
then 
echo "Please choose your dishes: >"
read dishes 
if [[ $dishes -eq 1 ]]    
then 
echo "Your dish is $dishes"
elif [[ $dishes -eq 2 ]]
then 
echo "Your dish is $dishes"
elif [[ $dishes -eq 3 ]]
then 
echo "Your dish is $dishes"
else
echo "Dont understand dish"
fi
else
echo "Wrong date format"
fi

