# 🧠 Reference: Scripting & Programming Basics

This section serves as a quick-reference guide for foundational scripting and programming concepts used in system administration. It complements the hands-on work in the `/day-by-day/` folder and the `/scripts/` directory (Bash and PowerShell).

---

## 🧾 What’s Covered

- Bash scripting basics
- PowerShell scripting basics
- Variables, conditionals, and loops
- Functions and arguments
- Shebangs and script permissions
- Regular Expressions (regex)
- Debugging and testing scripts
- Programming logic fundamentals
- Command substitution and piping
- Script writing habits for sysadmins

---

## 🐚 Bash Scripting Quick Notes

### 🔹 Variables
```bash
name="Robert"
echo "Hello, $name!"
```

### 🔹 Conditionals
```bash

if [ "$name" == "Robert" ]; then
  echo "Welcome back!"
fi
```

### 🔹 Loops
```bash

for file in *.txt; do
  echo "$file"
done
```

### 🔹 Functions
```bash

greet() {
  echo "Hello, $1!"
}
greet "SysAdmin"
```

### 🔹 Script Permissions
```bash

chmod +x script.sh
./script.sh
```

---

## 💥 PowerShell Scripting Quick Notes

### 🔹 Variables
```powershell

$name = "Robert"
Write-Output "Hello, $name!"
```

### 🔹 Conditionals
```powershell

if ($name -eq "Robert") {
    Write-Output "Welcome back!"
}
```

### 🔹 Loops
```powershell

foreach ($file in Get-ChildItem *.txt) {
    Write-Output $file.Name
}
```

### 🔹 Functions
```powershell

function Greet($name) {
    "Hello, $name!"
}
Greet "SysAdmin"
```

---

## 🧩 Regular Expressions (Regex)
- Regex lets you search, validate, and manipulate text with patterns.

### 🔹 Common Symbols
. — Any single character

* (askterisk) — 0 or more of the previous element

+ (plus sign) — 1 or more of the previous element

^ — Start of line

$ — End of line

\d — Any digit

\w — Any word character

\s — Whitespace

[abc] — a, b, or c

(abc|def) — abc or def

### 🔹 Examples
- ^Admin — Lines that start with "Admin"

- \d{3}-\d{2}-\d{4} — SSN pattern

- .*\.sh — Any .sh file

🧠 Practice: Use grep -E, sed, or awk for regex in Linux; Select-String in PowerShell.

---

##⚙️ Helpful Practices
- Use set -x in Bash or Set-PSDebug -Trace 1 in PowerShell to debug.

- Comment your code.

- Test line-by-line before putting into production.

- Version-control everything (even scripts).

- Parameterize scripts for reusability.

- Learn both Bash and PowerShell—many environments are hybrid.


##⚙️ Helpful Practices — Explained
🔍 set -x (Bash) / Set-PSDebug -Trace 1 (PowerShell) — Enable Script Debugging


- These commands turn on debug tracing, which shows each command and its arguments as they are executed.


Why it matters: When your script isn’t working, you need to see what it’s doing line-by-line—these tools help you spot logic or syntax errors.


Use case:

In Bash:
```bash
set -x  # Turns on debug mode
your_command
set +x  # Turns off debug mode
```

In PowerShell:

```powershell
Set-PSDebug -Trace 1
# Your commands
Set-PSDebug -Off
```

💬 Comment Your Code

- Use # in Bash and # or <# #> in PowerShell to write comments.


Why it matters: Comments explain why you’re doing something, not just what you’re doing—crucial when revisiting or handing off your scripts.

- Helps others (or future you) understand the logic behind a command, parameter, or block.


🧪 Test Line-by-Line Before Putting Into Production

- Run individual commands or small script blocks manually in the terminal before putting them into a full script.


Why it matters: Catching a mistake in a 1-line command is easier than debugging a 50-line script.

- Great especially when dealing with file paths, loops, and system-altering commands (like deletions or user modifications).


🔁 Version-Control Everything (Even Scripts)

- Use Git to track changes to your scripts.


Why it matters:

- You’ll be able to revert to previous working versions.

- Helps in debugging, collaborating, or understanding what changed and when.


Git is a must-know tool for sysadmins working with infrastructure-as-code, automation, and team environments.


🧩 Parameterize Scripts for Reusability

Instead of hardcoding values, use variables or parameters ($1, $2 in Bash; param() block in PowerShell).


Why it matters:

- Makes scripts flexible and easier to reuse for different inputs or environments.

Example:
# Bash

```bash
echo "Hello, $1!"
# Usage: ./hello.sh Robert
```

# PowerShell
```powershell
param(
  [string]$Name
)
Write-Host "Hello, $Name!"
```

🌐 Learn Both Bash and PowerShell

- Many real-world environments are hybrid:

- Linux-based servers = Bash scripting.

- Windows environments = PowerShell scripting.


Why it matters: Knowing both expands your job opportunities and makes you more versatile.

- Also helps with automation tools like Ansible (mostly Linux) and Windows Admin Center/DSC (Windows).

---

## 🚀 Coming Soon
- Git automation in scripts

- Python scripting for sysadmins

- Task scheduling (cron / Task Scheduler)

- Error handling & logging

Scripting design patterns

📓 This reference will expand as I progress through the bootcamp and master scripting fundamentals across multiple platforms.
