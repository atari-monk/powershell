$webAppName = "WebApp"

Write-Output "$webAppName Set"

$webAppFolder = "WebApp"
$webAppPath = $mainPath+ "\" + $webAppFolder

$webAppBuildPath = "C:\kmazanek.gmail.com\Build\inventory-min-mvc-web-app\Inventory.Min.Mvc.Web.App\*"

$webAppDeletePath = $webAppPath + "\*"

$webAppExeOldName = "Inventory.Min.Mvc.Web.App.exe"
$webAppExeOldPath = $webAppPath + "\" + $webAppExeOldName
$webAppExeNewName = "Stuff.Web.App.exe"
$webAppExePath = $webAppPath + "\" + $webAppExeNewName