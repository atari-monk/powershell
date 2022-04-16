$path = "C:\kmazanek@gmail.com\Build\scripter"
if (-not (Test-Path $path))
{
New-Item -Path "C:\kmazanek@gmail.com\Build" -Name "scripter" -ItemType "directory"
}
$path = "C:\kmazanek@gmail.com\Build\scripter\Scripter"
if (-not (Test-Path $path))
{
New-Item -Path "C:\kmazanek@gmail.com\Build\scripter" -Name "Scripter" -ItemType "directory"
}
else
{
Remove-Item "C:\kmazanek@gmail.com\Build\scripter\Scripter\*" -Recurse
}
Copy-Item -Path "C:\kmazanek@gmail.com\Code\scripter\Scripter\bin\Release\net6.0\publish\*" -Destination "C:\kmazanek@gmail.com\Build\scripter\Scripter" -Recurse
