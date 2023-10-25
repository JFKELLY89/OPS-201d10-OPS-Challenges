#!/bin/bash
# Script Name:              Functions
# Author:                   John Kelly
# Date of Last Revision:    10/25/2023
# Purpose:                  OPS Challenge for Functios variables

# Decleration of Variables
# One equal signs means assigning a value
# Two equal signs is comparing values


# Declaration of Funcations

# Basic function that handles printing the greeting to the screen


printlogin() {
     local name1="$1"

    echo "Welcome $name1 below is the all users to login to this terminal"
   
    cat /var/log/auth.log | grep "sshd" | grep "session opened" 

    echo "This is the login history"
}

 


# Main

printlogin jase

# End