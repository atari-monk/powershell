$webAppName = "WebApp"

Write-Output "$webAppName Set"

$webAppFolder = "WebApp"
$webAppPath = $mainPath+ "\" + $webAppFolder

$webAppBuildPath = "C:\kmazanek.gmail.com\Build\inventory-min-mvc-web-app\Inventory.Min.Mvc.Web.App\*"

$webAppDeletePath = $webAppPath + "\*"

$webAppExeOldName = "Inventory.Min.Mvc.Web.App.exe"
$webAppExeOldPath = $webAppPath + "\" + $webAppExeOldName
$webAppExeNewName = "$appName.Web.App.exe"
$webAppExePath = $webAppPath + "\" + $webAppExeNewName

$ngrokPath = "C:\kmazanek.gmail.com\Apps\ngrok-v3-stable-windows-amd64"
$ngrokExePath = "C:\kmazanek.gmail.com\Apps\ngrok-v3-stable-windows-amd64\ngrok.exe"

$localNgrokUrlPath = "C:\kmazanek.gmail.com\Build.Script.Custom\$appName\$appName.txt"
$cloudNgrokUrlPath = "C:\Users\ASUS\OneDrive\kmazanek.gmail.com\$appName.txt"