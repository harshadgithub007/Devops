#! /usr/bin/bash

# program for the for loop shell scripting

#!/bin/bash

# Program for a for loop in shell scripting

for folder in $(find -type d)
do
    echo "The directory is $folder"
    
    # Use "$folder" to check within the specific folder obtained in the loop
    if [ -d "$folder/test" ]
    then
        echo "The 'test' folder is present in $folder"
        echo "Removing the 'test' folder"
        rm -rf "$folder/test"
    else
        echo "The 'test' folder does not exist in $folder"
    fi
done

