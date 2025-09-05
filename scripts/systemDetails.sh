#!/bin/bash

# System Health Check Script

echo "======================================"
echo "      SYSTEM HEALTH CHECK REPORT      "
echo "======================================"
echo

# Uptime
echo "---- System Uptime ----"
uptime -p
echo

# Current Date and Time
echo "---- Date & Time ----"
date
echo

# Hostname and OS Info
echo "---- Hostname & OS ----"
echo "Hostname: $(hostname)"
echo "OS: $(lsb_release -d | cut -f2-)"
echo

# CPU Load
echo "---- CPU Load ----"
echo "Load Average (1, 5, 15 min): $(cat /proc/loadavg | awk '{print $1, $2, $3}')"
echo

# Memory Usage
echo "---- Memory Usage ----"
free -h
echo

# Disk Usage
echo "---- Disk Usage ----"
df -h --total | grep total
echo

# Network Information
echo "---- Network Information ----"
ip -4 addr show | grep inet
echo

# Last Reboot
echo "---- Last Reboot ----"
who -b
echo

echo "======================================"
echo "      END OF HEALTH CHECK REPORT      "
echo "======================================