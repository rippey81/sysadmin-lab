
---

### ✅ `scripts/windows/README.md`

```markdown
# 🪟 Windows PowerShell Scripts

This folder contains PowerShell scripts developed for Windows system administration tasks.

## 📁 Purpose

These scripts help automate tasks commonly performed on Windows servers and workstations, such as:

- Gathering system information
- Managing users and services
- Automating Active Directory tasks (future)

## 📂 Scripts List

- `get-system-info.ps1`: Outputs basic system info like OS version, uptime, and CPU

## 📌 Usage

To run a PowerShell script, open PowerShell and execute:

```powershell
.\scriptname.ps1

If needed, allow script execution with:

powershell

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

🧠 Notes
Tested on Windows Server 2022

Run PowerShell as Administrator when necessary
