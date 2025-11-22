# 📚 Resources – Hybrid SysAdmin Bootcamp

This document lists the primary books, tools, documentation, and learning resources I’m using throughout the 60-Day Hybrid SysAdmin Bootcamp.

---

## 📘 Books

### Systems & OS

- **The Linux Command Line** – William Shotts  
- **Windows Server 2019 & PowerShell All-In-One** – Sara Perrott et al.  
- **Learn Windows PowerShell in a Month of Lunches** – Don Jones & Jeff Hicks  

### Scripting & Automation

- **Mastering Regular Expressions** – Jeffrey Friedl  
- PowerShell and Bash scripting sections from the above titles  

### Cloud & Azure

- **Microsoft Azure Administrator (AZ-104) Exam Guides**  
- **Microsoft Azure for Dummies**  

### Networking & Security

- CompTIA **Network+** and **Security+** study guides  
- General networking/security references as needed

---

## 🌐 Official Documentation & Learning Portals

### Microsoft Learn

- Azure Administrator learning paths (AZ-104)
- Windows Server / Hybrid (AZ-800 / AZ-801)
- Azure AD Connect, Entra ID, Intune, Azure Arc, Backup, and ASR

> I use Microsoft Learn both for conceptual reading and hands-on labs.

---

## 🔧 Tools & Platforms

### Virtualization & Lab

- **VirtualBox** – local hypervisor for:
  - Windows Server 2019/2022
  - Ubuntu Server / Desktop
  - Kali Linux
  - pfSense firewall
- **Hyper-V** – for Windows-based virtualization labs

### Operating Systems

- **Windows Server 2019 / 2022**
- **Windows 10/11** (client)
- **Ubuntu Server / Desktop**
- **Kali Linux**
- **pfSense** (firewall & router)

### Cloud

- **Microsoft Azure**
  - Azure Portal
  - Azure CLI
  - Azure Cloud Shell
  - Azure Storage Explorer

### Tools

- **PowerShell 7**
- **Git & GitHub**
- **Visual Studio Code**
- SSH clients (e.g., OpenSSH, PuTTY if needed)
- Browser-based tools for diagrams (Excalidraw, draw.io) – optional

---

## 🧪 Lab Types & Scenarios

- On-prem labs:
  - Windows Server + AD DS + DNS + DHCP
  - File servers & NTFS
  - Hyper-V VM environments
  - Linux services & CLI tasks
  - pfSense firewall & basic routing

- Azure labs:
  - VNets, NSGs, subnets
  - Azure VM deployment (Windows & Linux)
  - Storage accounts, blobs, files
  - Azure AD (Entra ID) & RBAC
  - Monitoring and automation

- Hybrid labs:
  - Azure AD Connect
  - Hybrid Join scenarios
  - Intune device management
  - Azure File Sync & Azure Arc
  - Backup & DR with Azure Backup and ASR

---

## 📂 GitHub Repositories

- **Hybrid SysAdmin Bootcamp (this repo):**  
  `https://github.com/rippey81/hybrid-sysadmin-bootcamp`

- **Azure VHD Migration Lab:**  
  `https://github.com/rippey81/sysadmin-cloud-vhd-migration`

Additional repositories will be added as new labs and dedicated projects are created.

---

## 🔁 How I Use These Resources

1. **Read just enough** to understand the concept.  
2. **Lab it out** in VirtualBox, Hyper-V, or Azure.  
3. **Break something on purpose** if possible.  
4. **Fix it and document the troubleshooting**.  
5. **Commit notes, configs, and scripts to GitHub**.  

This loop builds real, durable skills and a public record of growth.
