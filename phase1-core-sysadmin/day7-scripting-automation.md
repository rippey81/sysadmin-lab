# 🧪 Day 7: Automating Admin Tasks with Scripts

## 🔧 Bash Script: Disk Usage Report

This script scans all mounted partitions and reports any over 80% usage.

### Key Concepts:
- `df -h`, `awk`, `sed`, `date`
- Conditional logic in `bash`
- Writing to timestamped log files

### File:
[`scripts/linux/disk-usage-alert.sh`](../scripts/linux/disk-usage-alert.sh)

---

## ⚙️ PowerShell Script: Local User Audit

This PowerShell script pulls all local users and checks their account status.

### Key Concepts:
- `Get-LocalUser`
- PowerShell `foreach` loops
- Logging to `.txt` reports

### File:
[`scripts/windows/user-audit.ps1`](../scripts/windows/user-audit.ps1)

---

## 🧠 Reflections

- Bash `while read` loops are helpful when parsing `df` output line by line.
- Conditional logic in PowerShell is very readable once you understand the syntax.
- Logging output to timestamped files is a professional habit worth building early.
