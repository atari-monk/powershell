Write-Output "$apiName Create"
if (-not (Test-Path $apiPath))
{
$null = New-Item -Path $mainPath -Name $apiFolder -ItemType "directory"
Write-Output "Created folder in path:"
$apiPath
}
else
{
Write-Output "Folder already exists in path:"
$apiPath
}