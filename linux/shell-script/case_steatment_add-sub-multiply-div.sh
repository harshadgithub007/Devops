#! /usr/bin/bash
: '
function:-
1. A function is a block of code that perform specific task and which is reusable
2. function concept reduces the code lenght

how to write:-  function_name()
		{
			command/steatment
		}
'

clear
echo "_____________________________________"
echo "_________ calculator Menu ___________"
echo "_____________________________________"

echo "1.Addition"
echo "2.Substraction"
echo "3.Multiplication"
echo "4.Division"

# same like above 4 options in one line:-  echo -e 1.addition\n2.substraction\n3.multiplication\n4.division\n"

read -p "enter the calculation you want to perform:-  " option

case $option in
	1)
		read -p "enter the first number:-"   num1
		read -p "enter the second number:-"  num2
		result=$((num1 + num2))
		echo " the calculation of given options is:-  $result"
		;;
	2)
		read -p "enter the first value:-"  num1
		read -p "enter the second value:-"  num2
		echo "the calculation of given option is:-  $(( num1 - num2 ))"
		;;
	3)
		read -p "enter the first value:-"  num1
		read -p "enter the second value:-"  num2
		echo " the calculation of the given option is:-  $(( num1 * num2 ))"
		;;
	4)
		read -p "enter the first value:-"  num1
		read -p "enter the second value:-"  num2
		echo "the calculation of the given option is:-  $(( num1 / num2 ))"
		;;
	*)
		echo "you have selected the incorrect option"
esac
