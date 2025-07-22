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

### 🔹 Conditionals
bash

if [ "$name" == "Robert" ]; then
  echo "Welcome back!"
fi

### 🔹 Loops
bash

for file in *.txt; do
  echo "$file"
done

### 🔹 Functions
bash

greet() {
  echo "Hello, $1!"
}
greet "SysAdmin"

### 🔹 Script Permissions
bash

chmod +x script.sh
./script.sh

## 💥 PowerShell Scripting Quick Notes

### 🔹 Variables
powershell

$name = "Robert"
Write-Output "Hello, $name!"

### 🔹 Conditionals
powershell

if ($name -eq "Robert") {
    Write-Output "Welcome back!"
}

### 🔹 Loops
powershell

foreach ($file in Get-ChildItem *.txt) {
    Write-Output $file.Name
}

### 🔹 Functions
powershell

function Greet($name) {
    "Hello, $name!"
}
Greet "SysAdmin"

## 🧩 Regular Expressions (Regex)
Regex lets you search, validate, and manipulate text with patterns.

### 🔹 Common Symbols
. — Any single character

* — 0 or more of the previous element

+ — 1 or more of the previous element

^ — Start of line

$ — End of line

\d — Any digit

\w — Any word character

\s — Whitespace

[abc] — a, b, or c

(abc|def) — abc or def

### 🔹 Examples
^Admin — Lines that start with "Admin"

\d{3}-\d{2}-\d{4} — SSN pattern

.*\.sh — Any .sh file

🧠 Practice: Use grep -E, sed, or awk for regex in Linux; Select-String in PowerShell.


##⚙️ Helpful Practices
- Use set -x in Bash or Set-PSDebug -Trace 1 in PowerShell to debug.

- Comment your code.

- Test line-by-line before putting into production.

- Version-control everything (even scripts).

- Parameterize scripts for reusability.

- Learn both Bash and PowerShell—many environments are hybrid.


## 🚀 Coming Soon
Git automation in scripts

Python scripting for sysadmins

Task scheduling (cron / Task Scheduler)

Error handling & logging

Scripting design patterns

📓 This reference will expand as I progress through the bootcamp and master scripting fundamentals across multiple platforms.
