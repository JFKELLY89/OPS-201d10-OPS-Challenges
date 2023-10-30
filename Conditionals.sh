#!/bin/bash
# Script Name:              Conditionals
# Author Name:              John Kelly
# Date of Latest Review     10/30/2023
# Purpose                   Conditionals OPS Challenge 

# Define Arrays

 # Array for just current subdirectories
 current_directory=$(find . -maxdepth 1 -type d -name '[!.]*' -exec basename {} \;) 
 echo $current_directory


# Define Function
 #Function that is going to check if a folder or file is present in the current directory

 folder_checker() {
    search_folder="$1"

    for folder in "${current_directory[@]}"; do
        if [ "$folder" == "$search_folder" ]; then
            return 0
            echo "The subdirectory already exists!"
        fi
    done
    return 1
    }

# Main

 while true; do
    #Ask the user for input of item to look for a folder in the current directory
    read -p "Enter directory name to check the current directory: (Type 'done' to exit) " folder_to_check

    if [ "$folder_to_check" == "done" ]; then
        break
    fi
    if folder_checker $folder_to_check; then
        echo "The '$folder_to_check' subdirectory already exists in this directory"
    else
        read -p "$folder_to_check folder is not in this directory, do you want to add it?: (yes/no)" add_to_list
        if [ "$add_to_list" == "yes" ]; then
            mkdir $folder_to_check
            current_directory+=($folder_to_check)
            echo "$folder_to_check added to the current directory"

        else
            echo "$folder_to_check was not added to the list"
        fi
    fi
 done
 # Ask the use if they are ready to see their completed grocery list
 read -p "Are you ready to see all subdirectories? (yes/no) :" show_list
 if [ "$show_list" == "yes" ]; then
    echo "All folders in your current directory:"
    echo "${current_directory[*]}"
 else
    echo "Ok, you can check your subdirectories another time!"
 fi

# End