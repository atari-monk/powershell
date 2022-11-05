#to copy, dependecies dlls, from build, to dlls folder in api proj, use when needed
$root = "C:\atari-monk"
$apiPath = $root + "\Code\inventory-min-api\Inventory.Min.Api"
$dllPath = $root + "\Code\inventory-min-api\Inventory.Min.Api\dlls"
$efPath = $root + "\Build\efcore-helper\EFCore.Helper\EFCore.Helper.dll"
$modelPath $root + "\Build\model-helper\ModelHelper\ModelHelper.dll"
$dataPath = $root + "\Build\inventory-min-data\Inventory.Min.Data\Inventory.Min.Data.dll"
if (-not (Test-Path $dllPath))
{
New-Item -Path $apiPath -Name "dlls" -ItemType "directory"
}
Copy-Item -Path $efPath -Destination $dllPath
Copy-Item -Path $modelPath -Destination $dllPath
Copy-Item -Path $dataPath -Destination $dllPath