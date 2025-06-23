#!/bin/bash

# Run traceroute to a given domain
read -p "Enter domain/IP to traceroute: " target
traceroute "$target"
