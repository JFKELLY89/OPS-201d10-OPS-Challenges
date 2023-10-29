#!/bin/bash
# Script Name:              Loops
# Author Name:              John Kelly
# Date of Latest Review     10/27/2023
# Purpose                   Loops Ops Challenge

# Define Variable

# FOR Loop
# Basic Syntax

while true; do
    echo "List of running proccesses"
    ps aux | awk '{print $2, $11}' | column -t
    read -p "Enter PID of process you want to kill (or 'q' to quit): " pid
    if [ "$pid" == "q" ]; then
        break
    fi

    if [[ "$pid" =~ ^[0-9]+$ ]]; then
      kill "$pid"
     echo "$pid Process Killed"
    else
      echo "Invalid PID. Please enter a numberic PID."
    fi
done
# For loops you want to do an action for each item on a list

# Main

# End