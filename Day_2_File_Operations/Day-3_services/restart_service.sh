#!/bin/bash

# Description: Restart a service and log the action
service_name=$1

if [ -z "$service_name" ]; then
  echo "⚠️  Usage: $0 <service-name>"
  exit 1
fi

echo "🔄 Restarting $service_name..."
sudo systemctl restart "$service_name"

if systemctl is-active --quiet "$service_name"; then
  echo "✅ $service_name restarted successfully"
else
  echo "❌ Failed to restart $service_name"
fi
