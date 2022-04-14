$codeFolder = "C:\kmazanek@gmail.com\Code"
$scriptFolder = "C:\kmazanek@gmail.com\Build.Script"
$proj = "app-starter"

Set-Location $codeFolder
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
Set-Location $scriptFolder