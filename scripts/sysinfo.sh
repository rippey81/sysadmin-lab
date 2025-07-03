#!/bin/bash

echo "====== SYSTEM INFORMATION ======"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current User: $(whoami)"
echo "User ID and Group ID: $(id)"
echo "IP Address: $(hostname -I)"
echo "Disk Usage:"
df -h

echo "====== NETWORK INFO ======"
ip a
ip r
