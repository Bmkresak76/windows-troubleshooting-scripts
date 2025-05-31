# Clear-TempFiles.ps1
# PowerShell script to clear temporary files from the system

Write-Host "Clearing temporary files..." -ForegroundColor Yellow

# Get Temp path
$TempPath = [System.IO.Path]::GetTempPath()

# Delete temp files
Get-ChildItem -Path $TempPath -Recurse -Force -ErrorAction SilentlyContinue |
    Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

Write-Host "Temporary files cleared successfully!" -ForegroundColor Green
