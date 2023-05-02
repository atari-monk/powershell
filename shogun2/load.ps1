# Set the source and destination paths
$sourcePath = "C:\atari-monk\save-game\shogun2"
$destinationPath = "C:\Users\atari\AppData\Roaming\The Creative Assembly\Shogun2\save_games"

# Set the name of the file to copy
$fileName = "auto_save_legendary.Oda.save"

# Combine the paths and file name to get the full source and destination paths
$sourceFile = Join-Path $sourcePath $fileName
$destinationFile = Join-Path $destinationPath $fileName

# Check if the source file exists
if (Test-Path $sourceFile) {
    # Copy the file to the destination
    Copy-Item $sourceFile $destinationFile -Force
    Write-Output "File copied successfully."
} else {
    Write-Error "Source file not found."
}
