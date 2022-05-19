#!/bin/bash

echo -n "Enter number 1 : >"
read n1

echo -n "Enter number 2 : >"
read n2

echo -n "Choose your function (cong/tru/nhan/chia) : >"
read test

if [[ "$test" == "cong" ]]
then 
echo $[n1+n2]
elif [[ "$test" = "tru" ]]
then
echo $[n1-n2]
elif [[ "$test" == "nhan" ]]
then
echo $[n1*n2]
else 
echo $[n1/n2]
fi
