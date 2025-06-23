#!/bin/bash

# Ping a domain to test connectivity
read -p "Enter domain or IP to ping: " target
ping -c 4 "$target"
