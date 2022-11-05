$webAppName = "WebApp"

Write-Output "$webAppName Set"

$webAppFolder = "WebApp"
$webAppPath = $mainPath+ "\" + $webAppFolder

$webAppBuildPath = "C:\atari-monk\Build\inventory-min-mvc-web-app\Inventory.Min.Mvc.Web.App\*"

$webAppDeletePath = $webAppPath + "\*"

$webAppExeOldName = "Inventory.Min.Mvc.Web.App.exe"
$webAppExeOldPath = $webAppPath + "\" + $webAppExeOldName
$webAppExeNewName = "$appName.Web.App.exe"
$webAppExePath = $webAppPath + "\" + $webAppExeNewName

$ngrokPath = "C:\atari-monk\Apps\ngrok-v3-stable-windows-amd64"
$ngrokExePath = "C:\atari-monk\Apps\ngrok-v3-stable-windows-amd64\ngrok.exe"

$localNgrokUrlPath = "C:\atari-monk\Build.Script.Custom\Inventory.Apps.Install\App.$appName\$appName.txt"
$cloudNgrokUrlPath = "C:\Users\ASUS\OneDrive\atari-monk\$appName.txt"