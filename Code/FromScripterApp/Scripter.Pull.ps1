$repoPath = "C:\kmazanek@gmail.com\Code\scripter"
$scriptPath = "C:\kmazanek@gmail.com\Build.Script"
$proj = "scripter"
if(-not (Test-Path $repoPath))
{
    Write-Output "No path: $repoPath"
}
else
{
   Set-Location $repoPath
   $result = git pull
   Write-Output "$proj - $result"
}
Set-Location $scriptPath
