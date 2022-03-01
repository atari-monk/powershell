$codeFolder = "C:\kmazanek@gmail.com\Code"
$scriptFolder = "C:\kmazanek@gmail.com\Code\powershell\Code"
$projs = @("log-wizard-lib"
, "inventory-wizard-lib")
$urlStart = "https://github.com/krzm/"
$urlEnd = ".git"

Set-Location $codeFolder
foreach ($proj in $projs)
{
	$projPath = $codeFolder + "\" + $proj
	if(-not (Test-Path $projPath))
    {
        Write-Output "Cloning:"
        $repoUrl = $urlStart + $proj + $urlEnd
        git clone $repoUrl
    }
    else 
    {
        Write-Output "Alredy exists: $projPath"
    }
}
Set-Location $scriptFolder