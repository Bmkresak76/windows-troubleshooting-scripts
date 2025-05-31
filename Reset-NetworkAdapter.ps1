# Reset-NetworkAdapter.ps1
# PowerShell script to reset the primary network adapter

Write-Host "Resetting network adapter..." -ForegroundColor Yellow

# Get the primary network adapter (you can also modify this if you want a specific one)
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | Select-Object -First 1

if ($adapter) {
    Disable-NetAdapter -Name $adapter.Name -Confirm:$false
    Start-Sleep -Seconds 5
    Enable-NetAdapter -Name $adapter.Name -Confirm:$false
    Write-Host "Network adapter reset successfully!" -ForegroundColor Green
} else {
    Write-Host "No active network adapter found." -ForegroundColor Red
}
