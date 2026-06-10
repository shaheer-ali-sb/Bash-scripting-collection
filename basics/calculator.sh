#!/bin/bash
# ============================================================
# Script  : simple-calculator.sh
# Purpose : Accepts two numbers and performs basic arithmetic operations
# Usage   : ./simple-calculator.sh
# Author  : Shaheer Ali S B
# ============================================================
choices="y"
while [ "$choices" == "y" ]; do
clear 
read -p "enter your first number:" num1
read -p "enter your second number:" num2

echo "choose an option:"
echo "1. +"
echo "2. -"
echo "3. *"
echo "4./"
read -p "enter your choice[1-4]:" choice

case $choice in
1)
   res=$((num1+num2))
   echo $res
   ;;
2)
  res=$((num1-num2))
  echo $res
  ;;

3)
 res=$((num1*num2))
 echo $res
 ;;

4)
 res=$((num1/num2))
 echo $res
 ;;

*)
 echo "invalid input"
esac

read -p "do you want to continue? (y/n)" choices

done
