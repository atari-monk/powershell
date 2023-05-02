#1. rename case dosent work so...
#Rename-Item -Path "C:\kmazanek@gmail.com\Code\Archive" -newName "archive"
#Rename-Item -Path "C:\kmazanek@gmail.com\Code\archive" -newName "Archive"
$oldName=$args[0]
$newName=$args[1]
$temp="-tempNamePart"
$tempName = $newName + $temp
$code = "C:\kmazanek@gmail.com\Code\"
$path = $code + $oldName
$pathTemp = $code + $tempName
#2. so... this step is added
Rename-Item -Path $path -newName $tempName
Rename-Item -Path $pathTemp -newName $newName
