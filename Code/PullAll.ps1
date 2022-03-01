$codeFolder = "C:\kmazanek@gmail.com\Code"
$scriptFolder = "C:\kmazanek@gmail.com\Code\powershell\Code"
$projs = @(
    "app-starter"
    , "cli-framework"
    , "cli-helper"
    , "cli-reader"
    , "cli-wizard-helper"
    #, "commanddotnet"
    , "commanddotnet-examples"
    , "commanddotnet-helper"
    , "commander"
    , "crud-command-helper"
    , "datatotable"
    , "di-helper"
    , "diy-box"
    , "dotnet-examples"
    , "dotnet-extension"
    , "dotnet-tool"
    , "efcore-helper"
    , "game-data"
    #, "git-path"
    , "inventory-console-lib"
    , "inventory-consolelib-consoleapp"
    , "inventory-data"
    , "inventory-modern-consoleapp"
    , "inventory-modern-lib"
    , "inventory-wizard-lib"
    , "log-console-lib"
    , "log-console-lib-console-app"
    , "log-data"
    , "log-modern-consoleapp"
    , "log-modern-lib"
    , "log-modern-mdi-consoleapp"
    , "log-modern-wizard-consoleapp"
    , "log-wizard-lib"
    , "model-helper"
    , "pattern"
    , "powershell"
    , "scripter"
    , "timco-retail"
    , "unitycontainer-examples"
    , "wpf-helper"
)

Set-Location $codeFolder
foreach ($proj in $projs)
{
	$projPath = $codeFolder + "\" + $proj
	if(-not (Test-Path $projPath))
    {
        Write-Output "$proj - No Proj in path: $projPath"
    }
    else 
    {
        Set-Location $projPath
        $result = git pull
        Write-Output "$proj - $result"
    }
}
Set-Location $scriptFolder