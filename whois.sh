#!/bin/bash
# Script Name:              WhoIs
# Author Name:              John Kelly
# Date of Latest Review     11/8/2023
# Purpose                   WhoIs OPS Challenge


# Define Variables/Arrays


# Define Functions
# Create a function that runs Whois, Dig, Host, and nslookup.
domain_checker() {
    for domain in "${user_input_domain[@]}"; do
        whois "$domain" >> "$user_input_domain".txt
        dig "$domain" >> "$user_input_domain".txt
        host "$domain" >> "$user_input_domain".txt
        nslookup "$domain" >> "$user_input_domain".txt
    done
}

# Main
# Have user type in a domain, then display information about the typed domain
read -p "Enter Domain: " user_input_domain
domain_checker



# End
