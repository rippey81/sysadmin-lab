# 🧑‍💻 Day 4 – Users, Groups, and Permissions in Linux

**Date:** July 10, 2025  
**Focus Area:** User & group management, file permissions, and security principles in Linux.

---

## 📝 What I Learned

### 👥 Linux User & Group Management

- `useradd`, `usermod`, and `userdel` are used to manage users.
- `groupadd`, `groupmod`, and `groupdel` are used to manage groups.
- Every user has a **UID** and every group has a **GID**.
- You can assign users to **multiple groups** for permission control.

### 🧾 Commands Practiced

```bash
# Create a new user
sudo useradd -m johndoe

# Set a password for the user
sudo passwd johndoe

# Create a new group
sudo groupadd developers

# Add user to a group
sudo usermod -aG developers johndoe

# Show user group membership
groups johndoe
```

🔒 File Permissions
Linux Permissions Breakdown:

Each file has owner, group, and others permission categories.

- r = read (4)

- w = write (2)

- x = execute (1)

Example:
diff

```bash

-rwxr-xr--  1 robert developers 1234 Jul 10 14:35 script.sh
```

- Owner: robert → read/write/execute

- Group: developers → read/execute

- Others: → read only

🛠 Permission Commands
```bash

# Change ownership
sudo chown robert:developers script.sh

# Change permissions using symbolic mode
chmod u+x script.sh   # Add execute to user
chmod g-w script.sh   # Remove write from group

# Change permissions using numeric mode
chmod 755 script.sh   # rwxr-xr-x
chmod 644 file.txt    # rw-r--r--
```

---

🪟 Windows User & Group Management

Learned how to manage users via:

- Local Users and Groups (lusrmgr.msc)

- Computer Management > Local Users and Groups

Understood NTFS permissions:

- Permissions include: Full Control, Modify, Read & Execute, Read, Write

- Permissions can be set per user or group

- NTFS allows explicit deny, inheritance, and auditing

- File shares are controlled by combining Share permissions and NTFS permissions:

- Most restrictive permission wins.

🧩 Example Concepts:

- A user may have Full Control via group membership but Deny applied individually will override it.

- Used icacls command line tool to inspect/set permissions:

```cmd

icacls "C:\TestFolder"
icacls "C:\TestFolder" /grant johndoe:(M)
```

- Understood how Active Directory (AD) is used in enterprises to centralize user/group management.

- Saw how Group Policy Objects (GPOs) apply system-wide security and user access policies.

🔐 Key Takeaways

- Both Linux and Windows enforce the principle of least privilege.

- Groups make permissions scalable — whether on Ubuntu or Windows Server.

- The tools differ, but the goal is the same: control who can access what, and how.

- File ownership and permission troubleshooting is a critical daily task in sysadmin work.



🔐 Key Takeaways

- Principle of least privilege is essential: users should only have access to what they need.

- Using groups simplifies permission management for teams.

- chmod, chown, and chgrp are vital tools in a sysadmin's toolkit.

- Both Linux and Windows enforce the principle of least privilege.

- Groups make permissions scalable — whether on Ubuntu or Windows Server.

- The tools differ, but the goal is the same: control who can access what, and how.

- File ownership and permission troubleshooting is a critical daily task in sysadmin work.

📌 What I Practiced Today

- Created new users and groups on my Ubuntu VM

- Assigned users to multiple groups

- Modified file permissions and ownership

- Used ls -l, id, getent, whoami, and sudo to observe system behavior

- Broke down chmod numeric values and practiced converting between symbolic and numeric modes

🧠 Reflection

Today was eye-opening. I now see how important it is to understand both Linux and Windows environments, especially since most real-world sysadmin jobs are hybrid. Managing users and file security isn't just routine — it's how systems stay protected and efficient.

I’m more confident now setting up users, securing files, and knowing how to troubleshoot access issues.

