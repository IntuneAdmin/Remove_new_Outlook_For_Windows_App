$packageName = "Microsoft.OutlookForWindows"

# Check if the Outlook app is installed
$package = Get-AppxPackage | Where-Object { $_.Name -eq $packageName }

if ($package -ne $null) {
    # Outlook is installed, so remove it
    Write-Output "Microsoft Outlook for Windows is installed. Removing..."
    Get-AppxPackage $packageName | Remove-AppxPackage
    if ($?) {
        Write-Output "Microsoft Outlook for Windows has been successfully removed."
        exit 0 # Return 0 to indicate a successful remediation
    } else {
        Write-Output "Failed to remove Microsoft Outlook for Windows."
        exit 1 # Return 1 to indicate remediation failure
    }
} else {
    Write-Output "Microsoft Outlook for Windows is not installed."
    exit 0 # Return 0 to indicate no remediation needed
}
