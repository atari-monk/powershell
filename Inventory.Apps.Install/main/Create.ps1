Write-Output "$mainName Create"
if (-not (Test-Path $mainPath))
{
$null = New-Item -Path $rootPath -Name $mainFolder -ItemType "directory"
Write-Output "Created folder in path:"
$mainPath
}
else
{
Write-Output "Folder already exists in path:"
$mainPath
}