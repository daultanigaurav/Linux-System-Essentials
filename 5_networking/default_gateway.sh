#!/bin/bash

# Show the default gateway (route)
echo "Default Gateway:"
ip route | grep default
