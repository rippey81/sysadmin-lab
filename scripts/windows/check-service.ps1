$service = Read-Host "Enter a Windows service name"

if (Get-Service -Name $service -ErrorAction SilentlyContinue) {
    Write-Host "✅ Service '$service' exists."
} else {
    Write-Host "❌ Service '$service' not found."
}
