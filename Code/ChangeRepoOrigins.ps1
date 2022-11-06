#ChangeRepoOrigins
#Change origins on repos from the list if they are not like expected
$root = "C:\atari-monk"
$code = $root + "\Code"
$script = $code + "\powershell\Code"
$projs = @(
    "app-starter"
    "canvas"
    "cli-framework"
    "cli-helper"
    "cli-reader"
    "cli-wizard-helper"
    "commanddotnet-examples"
    "commanddotnet-helper"
    "commander"
    "config-wrapper"
    "console-tables-wrapper"
    "cpp-kinematics"
    "crud-command-helper"
    "datatotable"
    "di-helper"
    "diy-box"
    "diy-box-cli-app"
    "diy-box-modern-cli-app"
    "docker-api"
    "dockerize-web-app"
    "dotnet-examples"
    "dotnet-extension"
    "dotnet-tool"
    "editor-wpf-app"
    "efcore-helper"
    "game-data"
    "git-path"
    "html-code-gen"
    "inventory-console-lib"
    "inventory-consolelib-consoleapp"
    "inventory-data"
    "inventory-min-api"
    "inventory-min-cli-app"
    "inventory-min-data"
    "inventory-min-lib"
    "inventory-min-mvc-web-app"
    "inventory-min-table"
    "inventory-modern-consoleapp"
    "inventory-modern-lib"
    "inventory-table"
    "inventory-wizard-lib"
    "javascript-game-beginner"
    "javascript-game-prototype"
    "learn-html"
    "log-console-lib"
    "log-console-lib-console-app"
    "log-data"
    "log-min-cli-app"
    "log-min-data"
    "log-min-lib"
    "log-min-table"
    "log-modern-consoleapp"
    "log-modern-lib"
    "log-modern-mdi-consoleapp"
    "log-modern-wizard-consoleapp"
    "log-table"
    "log-wizard-lib"
    "microservices"
    "model-helper"
    "modern-cli-app-template"
    "net-templates"
    "pattern"
    "pool-game"
    "powershell"
    "python-beginner-tutorial"
    "refactor-app"
    "rest-api-tutorial"
    "scripter"
    "serilog-wrapper"
    "shape-model"
    "sim-core"
    "socket-io-qs"
    "sql"
    "tech-wiki"
    "timco-retail"
    "timco-suggestion-site-app"
    "unitycontainer-examples"
    "vector-lib"
    "vs-freeglut"
    "wpf-helper"
    "xml-generator"
    "xunit-helper"
)
$urlStart = "https://github.com/atari-monk/"
$urlEnd = ".git"
Set-Location $code
foreach ($proj in $projs)#[0])
{
	$projPath = $code + "\" + $proj
	if(-not (Test-Path $projPath))
    {
        Write-Output "No Proj: $projPath"
    }
    else 
    {
        $expectedOrigin = $urlStart + $proj + $urlEnd
        #Write-Output "Expected:$expectedOrigin" 
        Set-Location $projPath
        $actualOrigin = git remote -v
        $actualOrigin = $actualOrigin[0]
        $actualOrigin = $actualOrigin.Remove(0,7)
        $actualOrigin = $actualOrigin -replace ".{8}$"
        #Write-Output "  Actual:$actualOrigin"
        if(-not ($actualOrigin.Equals($expectedOrigin)))
        {
            git remote set-url origin $expectedOrigin
            $newOrigin = git remote -v
            Write-Output "$proj - origin changed to: $newOrigin"
        }
        else 
        {
            Write-Output "$proj - origin ok: $actualOrigin" 
        }
    }
}
Set-Location $script