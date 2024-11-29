#!/bin/bash
#date:Wed Nov 27 02:40:34 PM UTC 2024
#variable as a input

#-p: Option to display a prompt message and take input from user

read -p "enter your 1st number: " Num1
read -p "enter your 2nd number: " Num2
echo "select any one operator +,-,*,/,%"
read OP
case $OP in
	"+") echo "Result of two numer" $(( Num1+Num2 ));;

	"-") echo "Result of two numer" $(( Num1-Num2 ));;

	"*") echo "Result of two numer" $(( Num1*Num2 ));;

	"/") echo "Result of two numer" $(( Num1/Num2 ));;
	
 	"%") echo "Result of two numer" $(( Num1%Num2 ));;
 	
	*) echo "invalid operator please enter right operator"
esac


