#ChangeRepoOrigins
#Change origins on repos from the list if they are not like expected
$root = "C:\atari-monk"
$blender = $root + "\Blender"
$code = $root + "\Code"
$script = $code + "\powershell\Blender"
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
        Write-Output "No Proj: $projPath"
    }
    else {
        $expectedOrigin = $urlStart + $proj + $urlEnd
        #Write-Output "Expected:$expectedOrigin" 
        Set-Location $projPath
        $actualOrigin = git remote -v
        $actualOrigin = $actualOrigin[0]
        $actualOrigin = $actualOrigin.Remove(0,7)
        $actualOrigin = $actualOrigin -replace ".{8}$"
        #Write-Output "  Actual:$actualOrigin"
        if (-not ($actualOrigin.Equals($expectedOrigin))) {
            git remote set-url origin $expectedOrigin
            $newOrigin = git remote -v
            Write-Output "$proj - origin changed to: $newOrigin"
        }
        else {
            Write-Output "$proj - origin ok: $actualOrigin" 
        }
    }
}
Set-Location $script