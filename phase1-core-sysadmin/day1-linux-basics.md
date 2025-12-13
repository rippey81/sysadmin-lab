📄 day1-linux-basics.md
markdown
Copy
Edit
# 🧠 Day 1 – Linux Basics & Core SysAdmin Tasks

> Lab OS: Ubuntu 22.04 LTS (Desktop GUI)
>  
> Objective: Practice foundational system administration skills using basic Linux terminal commands.

---

## 📌 SECTION 1: SYSTEM INFO BASICS

### 🟨 Commands
```bash
- hostnamectl
- uname -a
- uptime
- whoami
- id
```

🟩 Key Terms
- Hostname: The name of the system. Useful for identifying machines on a network.

- Uptime: Shows how long the system has been running.

- UID/GID: User ID and Group ID for the current user.

🟦 Important Files
- /etc/hostname: Stores the system hostname.

---

🌐 SECTION 2: NETWORKING BASICS

🟨 Commands
bash
Copy
Edit
- ip a
- ip r
- nmcli device status
- ping 8.8.8.8
- traceroute google.com

🟦 Important Files

- /etc/resolv.conf: Contains DNS resolver settings.

- /etc/hosts: Maps hostnames to IP addresses locally.

🟥 VM IPs (logged manually)
- Ubuntu VM IP: xxx.xxx.xxx.xxx (fill in with your VM IP)

🟧 Gotcha
- ping uses ICMP which might be blocked by some networks or firewalls.

---

📦 SECTION 3: PACKAGE MANAGEMENT (APT)

🟨 Commands
bash
Copy
Edit
- sudo apt update
- sudo apt upgrade
- sudo apt install htop

🟩 Key Concepts

- update: Refreshes package lists.

- upgrade: Installs the latest versions of installed packages.

- htop: Interactive system monitor (enhanced version of top).

🟧 Warning

- Avoid using apt full-upgrade or dist-upgrade unless you know the impact — these can remove packages.

---

👥 SECTION 4: USER MANAGEMENT

🟨 Commands
bash
Copy
Edit
- sudo adduser testuser
- sudo passwd testuser
- sudo usermod -aG sudo testuser
- sudo deluser testuser

🟩 Key Concepts

- adduser: Friendlier wrapper for creating new users.

- usermod -aG: Adds users to supplementary groups (like sudo).

🟦 Important Files

- /etc/passwd: User account info.

- /etc/shadow: Encrypted passwords.

- /etc/group: Group memberships.

--- 

📁 SECTION 5: FILE NAVIGATION & PERMISSIONS

🟨 Commands
bash
Copy
Edit
- cd /etc
- ls -l
- mkdir testdir
- touch testfile
- chmod 755 testfile
- chown testuser:testuser testfile

🟩 Key Concepts

- chmod: Change file permissions.

- chown: Change file ownership.

- umask: Default permission mask for new files.

🟧 Gotcha

- Avoid chmod 777 unless it's a throwaway test — it's a security risk.

🧠 Bonus: Bash Script — sysinfo.sh
bash
Copy
Edit
#!/bin/bash
echo "System Info Script"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "IP Address: $(hostname -I)"
echo "Disk Space:"
df -h

✅ Save as sysinfo.sh, make executable:
chmod +x sysinfo.sh

---

📓 Reflection:

This was my first real dive into Linux admin. I’ve heard these commands before, but today I finally understand what they do. I feel more comfortable in the terminal already.
