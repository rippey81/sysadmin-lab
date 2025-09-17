✅ day3-local-admin.md
markdown

# 🛠️ Day 3 – Local Admin Mastery: Linux + Windows Foundations

Today’s focus: mastering local administration tasks across both Linux and Windows Server systems. These are critical skills for any system administrator.

---

## 🔹 Linux Local Admin Tasks

### 👥 User & Group Management
```bash
sudo adduser exampleuser
sudo passwd exampleuser
sudo usermod -aG sudo exampleuser
sudo deluser exampleuser
```

🟩 Definitions:

- adduser – friendly script for adding users (uses useradd in the background)

- usermod -aG sudo user – adds the user to the sudo group for admin privileges

🟦 Important Files:

- /etc/passwd – user accounts

- /etc/shadow – encrypted passwords

- /etc/group – user group memberships

🔹 Linux Sudo Access
```bash

sudo visudo
Safely edit /etc/sudoers
```

- Prevents syntax errors from locking out sudo

🟧 Gotcha: Never manually edit /etc/sudoers with a regular text editor.

🔹 Linux Service Management (Systemd)
```bash

sudo systemctl status
sudo systemctl status ssh
sudo systemctl restart ssh
sudo systemctl enable apache2
```

🟩 Definitions:

- status – shows whether a service is running

- restart – restarts a service

- enable – enables a service to start at boot

🟦 Config Directory: /etc/systemd/system/

--- 
🪟 Windows Server Local Admin Tasks

🔐 User Account Management

From PowerShell:

```powershell

New-LocalUser -Name "TestUser" -Password (Read-Host -AsSecureString)
Add-LocalGroupMember -Group "Administrators" -Member "TestUser"
Remove-LocalUser -Name "TestUser"
```

🟩 Definitions:

- New-LocalUser – creates a local user

- Add-LocalGroupMember – adds to Admin group

- Remove-LocalUser – deletes a user

🔄 Services in Windows (PowerShell)

```powershell

Get-Service
Start-Service -Name "wuauserv"
Stop-Service -Name "wuauserv"
Restart-Service -Name "wuauserv"
```

🟩 Definitions:

- Get-Service – lists all services

- Start-Service – starts a stopped service

- Restart-Service – restarts a running service

🟦 Important Windows Logins:

- Ctrl+Alt+Del – secure login screen

- lusrmgr.msc – manage local users and groups (GUI tool)

🧠 Summary:

You now understand how to:

- Create, modify, and delete local users

- Grant administrative privileges

- Control system services

- Use both CLI and GUI tools on Linux and Windows

📘 Next Up: We'll practice configuring storage, file shares, and permissions across systems.
