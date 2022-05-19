#!/bin/bash
n1=0
n2=0

echo "input number 1: >"
read n1

echo "input number 2: >"
read n2

echo "sum : $[n1+n2]"
echo "subtraction: $[n1-n2]"
echo "multiplication: $[n1*n2]"
echo "Division : $[n1/n2]"
echo "remainder: $[n1%n2]"