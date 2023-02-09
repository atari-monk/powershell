#CloneGitHubReposFromList
#Clones github repos from the provided list
$root = "C:\atari-monk"
$code = $root + "\Code"
$script = $code + "\powershell\Code"
#get repo list from scripter js snipet
$projs = @(
"blender-models"
"cpp-glut"
"html-notes"
"html-tutorial"
"js-game-beginner"
"js-pong"
"js-pong-page"
"js-web-tutorial"
"js-notes"
"js-course"
"microservices"
"net-billiards"
"net-cli"
"net-diy-box"
"net-inventory"
"net-inventory-min"
"net-log"
"net-log-min"
"net-my-libs"
"net-sim"
"net-web-tutorial"
"powershell"
"py-beginner-tutorial"
"socket-io-qs"
"sql"
"timco-retail"
"timco-suggestion"
)
$urlStart = "https://github.com/atari-monk/"
$urlEnd = ".git"
Set-Location $code
foreach ($proj in $projs) {
    $projPath = $code + "\" + $proj
    if (-not (Test-Path $projPath)) {
        Write-Output "Cloning:"
        $repoUrl = $urlStart + $proj + $urlEnd
        git clone $repoUrl
    }
    else {
        Write-Output "Alredy exists: $projPath"
    }
}
Set-Location $script