📄 day2-bash-scripting.md
markdown
Copy
Edit
# 🧠 Day 2 – Bash Scripting Essentials (SysAdmin Lab)

Welcome to Day 2 of the 60-day SysAdmin Bootcamp! Today focused on building foundational Bash scripting skills inside the Ubuntu Server/Desktop VM. These are critical for task automation, system management, and Linux fluency.

---

## 🛠️ Skills Practiced

- Creating and executing Bash scripts
- Using shebangs (`#!/bin/bash`)
- Working with variables
- Using `echo`, `date`, `hostname`, and command substitution
- Making scripts executable with `chmod`
- Basic debugging

---

## ✅ Core Script: sysinfo.sh

```bash
#!/bin/bash

echo "System Info Script"
echo "------------------"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Logged-in user: $(whoami)"
echo "IP Address: $(hostname -I)"
echo "Disk Usage:"
df -h
🔍 Command Breakdown
Command	Description
#!/bin/bash	Declares the script interpreter (Bash)
echo	Prints text to the terminal
$(...)	Command substitution — runs the command and substitutes its output
hostname	Displays the system hostname
uptime -p	Shows how long the system has been running in human-readable format
whoami	Prints current username
hostname -I	Returns all assigned IP addresses
df -h	Shows disk usage in human-readable format

🔐 Permissions
Make the script executable:

bash

chmod +x sysinfo.sh
Run the script:

bash

./sysinfo.sh
🧠 Extra Practice Scripts
Uptime & IP Address Script
bash

#!/bin/bash
echo "Your IP address is: $(hostname -I)"
echo "System uptime: $(uptime -p)"
Show Current User + Date
bash

#!/bin/bash
echo "Hello, $(whoami)! Today is $(date +%A), the current time is $(date +"%T")."
🟡 Notebook Highlights
🟨 Commands to highlight:
chmod, echo, df -h, hostname -I, uptime -p, whoami

🟦 Concepts to note in blue:

Shebang (#!/bin/bash)

Script permissions

Command substitution $(...)

🟩 Definitions to write in green:

Variable

Script

Executable file

Interpreter

🧠 Takeaway
Even the simplest script can save hours of repetitive work. Every good sysadmin builds a toolkit of custom scripts — and today you started yours.

