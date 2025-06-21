#!/bin/bash

# Description: View recent logs of a service using journalctl
service_name=$1

if [ -z "$service_name" ]; then
  echo "⚠️  Usage: $0 <service-name>"
  exit 1
fi

echo "📜 Showing last 20 logs for $service_name"
journalctl -u "$service_name" -n 20 --no-pager
