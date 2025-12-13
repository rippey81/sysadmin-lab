# ⚙️ Day 5 – Shell Scripting (Linux) & PowerShell (Windows)

**Date:** July 11, 2025  
**Focus Area:** Automating sysadmin tasks with Bash and PowerShell

---

## 🐧 Bash Scripting (Linux)

- Created `.sh` files with shebang line `#!/bin/bash`
- Wrote basic conditionals using `if`, `elif`, and `else`
- Used `read` for user input and `id` to validate users
- Created an interactive script to check if a Linux user exists

```bash
#!/bin/bash
echo "Enter a username to check:"
read user

if id "$user" &>/dev/null; then
  echo "✅ User '$user' exists."
else
  echo "❌ User '$user' does not exist."
fi
```

---

🪟 PowerShell Scripting (Windows)

- Learned how .ps1 files are used for automation

- Wrote a PowerShell script to check for a Windows service

- Learned that PowerShell returns objects, not just strings

```powershell

$service = Read-Host "Enter a Windows service name"

if (Get-Service -Name $service -ErrorAction SilentlyContinue) {
    Write-Host "✅ Service '$service' exists."
} else {
    Write-Host "❌ Service '$service' not found."
}
```


🧠 Reflection:

Today I crossed a threshold: no longer just a user — now a builder of tools.

- The ability to write bash and PowerShell scripts unlocks efficiency, deeper system control, and real job-ready value.
- Whether checking users, restarting services, or automating updates — I'm no longer doing things manually. I command systems.
- Scripting transforms you from operator to orchestrator.
  
Today I learned how to build small tools that reduce repetitive work and show I'm thinking like a true sysadmin.
