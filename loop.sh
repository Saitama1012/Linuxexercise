#!/bin/bash
m=1

echo "Enter a number: > "
read n

for variables in $(seq 1 1 $n)
do 
echo "Number: $variables"
m=$((m*variables))
done


echo "Factorial Result: $m"