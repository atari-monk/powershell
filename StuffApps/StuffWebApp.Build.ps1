$rootPath = "C:\kmazanek.gmail.com\Apps"
$appsFolder = "StuffApps"
$appsPath = $rootPath + "\" + $appsFolder
if (-not (Test-Path $appsPath))
{
New-Item -Path $rootPath -Name $appsFolder -ItemType "directory"
}
$apiFolder = "StuffApi"
$apiPath = $rootPath + "\" + $appsFolder + "\" + $apiFolder
if (-not (Test-Path $apiPath))
{
New-Item -Path $appsPath -Name $apiFolder -ItemType "directory"
}
$webAppFolder = "StuffWebApp"
$webAppPath = $rootPath + "\" + $appsFolder + "\" + $webAppFolder
if (-not (Test-Path $webAppPath))
{
New-Item -Path $appsPath -Name $webAppFolder -ItemType "directory"
}
$buildApiPath = "C:\kmazanek.gmail.com\Build\inventory-min-api\Inventory.Min.Api\*"
Copy-Item -Path $buildApiPath -Destination $apiPath -Recurse