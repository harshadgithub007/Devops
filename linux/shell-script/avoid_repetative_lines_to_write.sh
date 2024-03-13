#! /usr/bin/bash

: '
to avoid same lines to write multiple times we can use "functions":-

function_name()
{
command 1
command 2
}
---------------------------------------->
now whereever we want to use those above wrriten commands or steatments just use the function name
'
clear
echo "--------------------------------------"
echo "--------WELCOME TO CALCULATOR --------"
echo "--------------------------------------"
echo "choose the following option to perform that calculation"
echo "*******************************************************"
echo "1.Addition"
echo "2.Substraction"
echo "3.Multiplication"
echo "4.Division"
echo "*******************************************************"

read_input()
{
	read -p "enter the first number:-"  num1
	read -p "enter the second number:-" num2
}

read -p "enter the option to perform" option

case $option in
	1)
		read_input
		echo "the calculation is:- $(( num1 + num2 ))"
		;;
	2)
		read_input
		echo "the calculation is:- $(( num1 - num2 ))"
		;;	
	3)
		read_input
		echo "the calculation is:- $(( num1 * num2 ))"
		;;
	4)
		read_input
		echo "the calculation is:- $(( num1 / num2 ))"
		;;
	*)
		echo "entered the wrong option"
esac




