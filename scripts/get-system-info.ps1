Write-Host "===== SYSTEM INFORMATION ====="
Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host "User: $env:USERNAME"
Get-Date
Get-Uptime
Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv4"}

Write-Host "===== INSTALLED SOFTWARE ====="
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
Sort-Object DisplayName
