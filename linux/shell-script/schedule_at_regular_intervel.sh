#! /usr/bin/bash

# program to write the shell sript to run at the regular interval

# using the crontab

# min hr day_of_month month day_of_week command

# * ----> every

# eg:-   30 08 10 06 * ------>   on 10th june at 08.30 min 

# crontab commands:-  1. crontab -l -----> to see any crontab in the system
#		      2. crontab -e -----> to make the crontab

# write the shell script and then apply the crontab to that shell script

# use command to activate shell script ---> crontab -e

# * * * * * /full/path/script_name > /dev/null -------> /dev/null is optional to send any error or output of the script to send and cannot be shown to the screen thats why


