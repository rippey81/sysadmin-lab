$timestamp = Get-Date -Format "yyyy-MM-dd_HHmm"
$report = "user_report_$timestamp.txt"

$users = Get-LocalUser

"Local User Report - $timestamp" | Out-File $report
"=====================================" | Out-File $report -Append

foreach ($user in $users) {
    $status = if ($user.Enabled -eq $false) { "❌ DISABLED" } else { "✅ ACTIVE" }
    "$($user.Name): $status" | Out-File $report -Append
}

Write-Host "Report saved to $report"
