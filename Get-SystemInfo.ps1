# Get-SystemInfo.ps1
# PowerShell script to gather basic system information

Write-Host "Gathering System Information..." -ForegroundColor Green

Get-ComputerInfo | Select-Object CsName, WindowsProductName, OsArchitecture, WindowsVersion, OsBuildNumber, BiosManufacturer, BiosVersion, CsManufacturer, CsModel

Write-Host "System information gathered successfully!" -ForegroundColor Green
