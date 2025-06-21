# 📘 Day 3: Services & Journald Logs

Welcome to Day 3 of the **Linux System Essentials** journey!  
Today’s focus is on **managing system services** and **viewing system logs** using `systemctl` and `journalctl`.

These are essential tools for any Linux administrator or DevOps engineer who needs to monitor, troubleshoot, and control services on a Linux machine.

---

## 🔧 Tools Covered

| Command        | Purpose                                               |
|----------------|-------------------------------------------------------|
| `systemctl`    | Control and inspect system services (start/stop/status) |
| `journalctl`   | Access and filter system logs from journald           |
| `service`      | Legacy command for managing services (optional)       |

---

## 📁 Files Included

| File Name               | Description                                           |
|--------------------------|-------------------------------------------------------|
| `check_services.sh`      | Check the status of essential services                |
| `restart_service.sh`     | Restart a service and log the action                  |
| `journal_logs.sh`        | Explore recent logs, filter logs by unit or time      |

---

## 📖 Topics Covered

### ✅ Managing Services with `systemctl`

```bash
# Start, stop, restart a service
sudo systemctl start nginx
sudo systemctl stop sshd
sudo systemctl restart apache2

# Enable a service on boot
sudo systemctl enable docker

# Check the status
systemctl status cron

# List all active services
systemctl list-units --type=service --state=running

✅ Accessing Logs with journalctl

# View entire system log
journalctl

# View logs for a specific service
journalctl -u ssh

# Show only recent logs
journalctl -u nginx -n 20

# Show logs from the last boot
journalctl -b

# Follow log output in real-time (like tail -f)
journalctl -f

🚀 How to Run Scripts

cd 3_services/
chmod +x *.sh

# Check important services
./check_services.sh

# Restart a service
./restart_service.sh ssh

# View latest logs for a service
./journal_logs.sh sshd

💡 Real-World Use Cases

    Restarting failed services automatically in a deployment script

    Monitoring SSH or Docker logs for suspicious access

    Enabling auto-start for web services after reboot

System services and logs are the heartbeat of a Linux machine. Being comfortable with systemctl and journalctl empowers you to diagnose and solve problems confidently. ⚙️🔥


---

### 🔧 `check_services.sh`

```bash
#!/bin/bash

# Description: Check if critical services are running
services=("ssh" "cron" "networking" "docker")

echo "🔍 Checking status of essential services..."

for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "✅ $service is active"
    else
        echo "❌ $service is NOT running"
    fi
done