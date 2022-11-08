#GetRepoUrls
#Print origin urls of repos from the repo list
$root = "C:\atari-monk"
$code = $root + "\Code"
$blender = $root + "\Blender"
$script = $code + "\powershell\Blender"
$projs = @(
    "blender-cabin"
    "blender-diy-box"
    "blender-model-lib"
    "blender-pc-tower"
    "blender-storage-rack"
)
Set-Location $blender
foreach ($proj in $projs)#[0])
{
	$projPath = $blender + "\" + $proj
	if(-not (Test-Path $projPath))
    {
        Write-Output "No Proj: $projPath"
    }
    else 
    {
        Set-Location $projPath
        $actualOrigin = git remote -v
        $actualOrigin = $actualOrigin[0]
        $actualOrigin = $actualOrigin.Remove(0,7)
        $actualOrigin = $actualOrigin -replace ".{8}$"
        Write-Output "$proj : $actualOrigin"
    }
}
Set-Location $script