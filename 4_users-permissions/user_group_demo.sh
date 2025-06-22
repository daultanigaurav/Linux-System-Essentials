#!/bin/bash

# Check for sudo
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root or use sudo."
  exit 1
fi

echo "🔧 Creating users: alice and bob..."
useradd -m alice
useradd -m bob

echo "👥 Creating group: devs..."
groupadd devs

echo "➕ Adding users to group devs..."
usermod -aG devs alice
usermod -aG devs bob

echo "📁 Creating file: project.txt..."
touch /home/alice/project.txt
chown alice:devs /home/alice/project.txt
chmod 640 /home/alice/project.txt

echo "✅ Setup complete!"
echo "File '/home/alice/project.txt' is owned by alice and group devs with 640 permissions."
