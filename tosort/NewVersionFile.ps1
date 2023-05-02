$scriptFolder = "C:\kmazanek@gmail.com\Code\powerShell"
$repoFolder = "C:\kmazanek@gmail.com\Code\log-modern-consoleapp"
$fileName = "Version.xml"
$projName = "Log.Modern.ConsoleApp"

Set-Location -Path $repoFolder 
$sh1 = git rev-parse HEAD
$hashTable = @{}
$hashTable.Add($projName, $sh1)

Set-Location -Path $scriptFolder
$filePath =  $scriptFolder + "\" + $fileName
$hashTable | Export-Clixml -Path $filePath