# 🔐 Day 4: Users, Groups & Permissions

This module teaches how to manage users, groups, ownership, and permissions in Linux systems — essential for security and access control.

## 📚 Topics Covered

- Creating and managing users
- Managing groups and group membership
- Understanding `/etc/passwd`, `/etc/shadow`, and `/etc/group`
- File and directory ownership
- Changing permissions with `chmod`, `chown`, `chgrp`
- Symbolic vs numeric permission notation
- Using `sudo` and privilege escalation

---

## 🛠️ Key Commands

### 👤 User Management

```bash
# Add a new user
sudo useradd username

# Add user with home directory
sudo useradd -m username

# Set or change password
sudo passwd username

# Modify user
sudo usermod -aG groupname username

# Delete user
sudo userdel username
