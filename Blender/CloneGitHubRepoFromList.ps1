#CloneGitHubRepoFromList
#Clones github repos from the provided list
$root = "C:\atari-monk"
$blender = $root + "\Blender"  
$code = $root + "\Code"
$script = $code + "\powershell\Code"
$projs = @(
    "blender-cabin"
    "blender-diy-box"
    "blender-model-lib"
    "blender-pc-tower"
    "blender-storage-rack"
)
$urlStart = "https://github.com/atari-monk/"
$urlEnd = ".git"
Set-Location $blender
foreach ($proj in $projs) {
    $projPath = $blender + "\" + $proj
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