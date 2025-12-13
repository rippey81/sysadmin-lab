# Day 6 – Introduction to Regular Expressions

## 🧠 Summary

Today I began learning about regular expressions (regex), a critical skill for any systems administrator. Regex helps automate text processing, search logs, extract data, and validate input.

I practiced using regex with:
- `grep`, `sed`, and `awk` in Linux
- `-match`, `Select-String`, and `$matches[]` in PowerShell

## 🔧 Key Regex Syntax

| Pattern        | Meaning                        |
|----------------|--------------------------------|
| `.`            | Any character (single)         |
| `*`            | 0 or more of previous character|
| `+`            | 1 or more                      |
| `?`            | 0 or 1                         |
| `[abc]`        | Match any of a, b, or c        |
| `[^abc]`       | Match anything but a, b, or c  |
| `[0-9]`        | Match any digit                |
| `^`            | Start of line                  |
| `$`            | End of line                    |
| `()`           | Group expressions              |

## 🖥️ Linux Practice

```bash
# Find IPs
grep -E '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' /var/log/syslog

# Replace text in a file
sed 's/ERROR/WARNING/g' logfile.txt

# Extract usernames from auth log
awk '/session opened/ {print $NF}' /var/log/auth.log
```

---

## 🖥️ PowerShell Practice
```powershell

# Regex match
"test@example.com" -match '\w+@\w+\.\w+'

# Use Select-String to find errors
Get-Content .\system.log | Select-String -Pattern "error"
```

---

✅ Takeaways
- Regex is powerful but takes practice

- Essential for scripting, parsing logs, automation


Next up: deeper dive into practical uses & custom regex tools
