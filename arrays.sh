#!/bin/bash
# Script Name:              Arrays
# Author Name:              John Kelly
# Date of Latest Review     10/26/2023
# Purpose                   Class 04 OPS Challenge: arrays

# Define Variables


# Define Array
directory=(dir1 dir2 dir3 dir4)

# Main

mkdir ${directory[@]}

for directory in "${directory[@]}"; do
cd $directory 
touch $directory.txt
cd ..
done


# End