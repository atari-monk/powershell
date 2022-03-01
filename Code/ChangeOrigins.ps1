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
    , "console"
    , "core"
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
$urlStart = "https://github.com/krzm/"
$urlEnd = ".git"

Set-Location $codeFolder
foreach ($proj in $projs)
{
    #Write-Output $proj
	$projPath = $codeFolder + "\" + $proj
	if(-not (Test-Path $projPath))
    {
        Write-Output "No Proj: $projPath"
    }
    else 
    {
        $originExpected = $urlStart + $proj + $urlEnd
        Set-Location $projPath
        $origin = git remote -v
        $origin = $origin[0] 
        $originUrl = $origin.substring(7, $originExpected.Length)

        if(-not ($originUrl.Equals($originExpected)))
        {
            #Write-Output "Changing: $originUrl"
            git remote set-url origin $originExpected
            $newOrigin = git remote -v
            Write-Output "$proj - changed to: $newOrigin"
        }
        else 
        {
            #Write-Output "No need to change, expected origin: $originExpected is same as acctual: $originUrl"
            Write-Output "$proj - origin ok" 
        }
    }
}
Set-Location $scriptFolder