$repoPath = "C:\kmazanek@gmail.com\Code\pattern"
$codePath = "C:\kmazanek@gmail.com\Code"
$scriptPath = "C:\kmazanek@gmail.com\Build.Script"
$proj = "pattern"
$http = "https://github.com/krzm/"
$end = ".git"
$url = $http + $proj + $end
if(-not (Test-Path $repoPath))
{
	Set-Location $codePath
	$result = git clone $url
	Write-Output "$proj - $result"
}
else
{
	Write-Output "$proj - Repo already cloned"
}
Set-Location $scriptPath