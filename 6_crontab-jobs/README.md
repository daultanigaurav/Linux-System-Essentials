# 🕒 Day 6: Crontab Jobs & Scheduling

Welcome to Day 6 of Linux System Essentials!  
Today’s focus is on **automating tasks** using `cron`, `crontab`, and simple Bash scripts.

---

## 📌 Topics Covered

- What is `cron` and `crontab`?
- Crontab syntax and format
- List, add, edit, and remove cron jobs
- Scheduling frequency examples
- Running custom scripts via cron
- System-wide cron vs user-specific cron
- Useful examples

---

## 📘 1. What is `cron`?

`cron` is a time-based job scheduler in Unix-like systems.  
It is used to run commands or scripts at scheduled times or intervals.

---

## 📘 2. Crontab Basics

### ✅ View your crontab:
```bash
crontab -l
