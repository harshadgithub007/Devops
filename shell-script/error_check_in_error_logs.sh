#! /usr/bin/bash

: '
 required:- 

1} grep [option] pattern [files]---------> grep -i harshad myname.txt

options:- 

-i ------> it igonores the exact case matching means small/capital latter does not matter just see the words and prints all the lines having searched word 

-C --------> capital C -----> print searched lines 

-w -------> match whole world

-o -----------> prints the actual match with the word we searched for

-n ---------------> display the line no in which our word is present which we searched for

-v ----------> ignores the word we search for prints the rest of the content
'

error_file=`cat /var/log/messages`
matched_error=`grep -i error $error_file`
echo $matched_error

if [ $? -eq 0 ]
then
	echo "found errors in OS logs: $matched_error "
#       we can send the email notifications here and also to slack,teams,,,etc
#       we can send the alert and error msg using curl command and api
else
	echo "no errors in massage logs"
fi


# $? -----> it will will give output as 0 for successful command and other error for command failure
