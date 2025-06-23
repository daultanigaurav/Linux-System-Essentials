#!/bin/bash

# Perform a DNS lookup for a given domain
read -p "Enter domain for DNS lookup: " domain
dig "$domain" +short

# Alternatively, use host command
echo -e "\nUsing host command:"
host "$domain"
