Write-Output "$webAppName Create"
if (-not (Test-Path $webAppPath))
{
$null = New-Item -Path $mainPath -Name $webAppFolder -ItemType "directory"
Write-Output "Created folder in path:"
$webAppPath
}
else
{
Write-Output "Folder already exists in path:"
$webAppPath
}