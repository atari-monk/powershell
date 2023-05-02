param(
  [int]$Number
)

$sourceFolder = "C:\atari-monk\save-game\shogun2\numbered"

if ($Number) {
  $fileName = "$Number.save"
  $sourceFile = Join-Path -Path $sourceFolder -ChildPath $fileName
  $destinationFolder = "C:\atari-monk\save-game\shogun2"
  $destinationFile = Join-Path -Path $destinationFolder -ChildPath "auto_save_legendary.Oda.save"

  if (Test-Path $sourceFile) {
    Copy-Item -Path $sourceFile -Destination $destinationFile -Force
    Write-Host "File copied to $destinationFile"
  }
  else {
    Write-Error "File $fileName not found in $sourceFolder"
  }
}
else {
  $files = Get-ChildItem $sourceFolder | Where-Object { $_.Name -like "*.save" }
  if ($files) {
    Write-Host "Files in ${sourceFolder}:"
    $files | ForEach-Object { Write-Host "  $_" }
  }
  else {
    Write-Host "No save files found in $sourceFolder"
  }
}
