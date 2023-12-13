#! /bin/bash

# du -ah :-  list the sizes of all files and directories in the current directory and its subdirectories, including hidden files, with human-readable sizes.

# for specific directory  :-    du -ah /dir_name

# "sort" command:-  
#1. sort -n :-  sort files in numerical order from less to more
#2. sort -r :-  print the output in reverse order
#3. sort -h :-  human readeble format
#4. sort -hr :- combined together


# access the aurgument passed to shell scripting from the command line
# $0 :- script name
# $1 :- first parameter of the script
# $@ :- complete list of aurgument
# $# :- total number of parameters
# $$ :- process id of the script
# $? :- exit code of the script

#"************ do not press enter before giving the path aurgument ********************************************************************************************************************"

echo "********************************************************************************************************************************************************************************"

echo "printing the top 10 biggest files in the file system via passing the positional aurgument"

path="$1"
echo
echo
echo
echo $path
echo
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "printing the top biggest files in the given path $path"
cat /tmp/filesize.txt
echo
echo
echo "*******************************************************************************************************************************************************************************" 
