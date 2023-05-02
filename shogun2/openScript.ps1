param (
    [Parameter(Mandatory=$true)]
    [string]$FileName
)

# Check if the file already exists
if (Test-Path $FileName) {
    # If the file exists, open it in Notepad++
    Start-Process "notepad++.exe" $FileName
} else {
    # If the file doesn't exist, create it and then open it in Notepad++
    New-Item -Path $FileName -ItemType File -Force
    Start-Process "notepad++.exe" $FileName
}
