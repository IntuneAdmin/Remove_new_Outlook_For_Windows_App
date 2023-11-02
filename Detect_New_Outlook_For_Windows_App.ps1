$packageName = "Microsoft.OutlookForWindows"

# Check if the Outlook app is installed
$package = Get-AppxPackage | Where-Object { $_.Name -eq $packageName }

if ($package -ne $null) {
    Write-Output "Microsoft Outlook for Windows is installed."
    exit 1 # Return 0 to indicate a successful detection
} else {
    Write-Output "Microsoft Outlook for Windows is not installed."
    exit 0 # Return 1 to indicate detection failure
}
