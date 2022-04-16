$projectName = "Scripter"
$versionFileName = "Version.xml"
$buildPath = "C:\kmazanek@gmail.com\Build"
$scriptPath = "C:\kmazanek@gmail.com\Build.Script"
$repoPath = "C:\kmazanek@gmail.com\Code\scripter"

Set-Location -Path $repoPath
$sh1 = git rev-parse HEAD

Set-Location -Path $buildPath
$versionFilePath = $buildPath + "\" + $versionFileName
if (-not (Test-Path $versionFilePath))
{
$hashTable = @{}
$hashTable.Add($projectName, $sh1)
}
else
{
$hashTable = Import-Clixml $versionFilePath
$hashTable[$projectName] = $sh1
}
$hashTable | Export-Clixml -Path $versionFilePath
$versionFilePathCsv = $buildPath + "\Version.csv"
$hashTable.GetEnumerator() |
Select-Object -Property @{N='Property';E={$_.Key}},
@{N='PropValue';E={$_.Value}} |
Export-Csv -NoTypeInformation -Path $versionFilePathCsv
Set-Location -Path $scriptPath
