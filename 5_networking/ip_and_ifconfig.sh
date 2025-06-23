#!/bin/bash

# Display IP addresses using ip command
echo "IP addresses (ip a):"
ip a

# Display IP using ifconfig (legacy tool, may not be installed by default)
echo -e "\nIP addresses (ifconfig):"
ifconfig
