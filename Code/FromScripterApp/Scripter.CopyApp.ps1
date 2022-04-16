$buildPath1 = "C:\kmazanek@gmail.com\Build\scripter\Scripter"
$appsPath1 = "C:\kmazanek@gmail.com\Apps"
$buildPath2 = "C:\kmazanek@gmail.com\Build\scripter\Scripter\*"
$appsPath2 = "C:\kmazanek@gmail.com\Apps\Scripter"
$buildPath3 = "C:\kmazanek@gmail.com\Build\Version.csv"
Copy-Item -Path $buildPath1 -Destination $appsPath1 -Force
Copy-Item -Path $buildPath2 -Destination $appsPath2 -Recurse -Force
Copy-Item -Path $buildPath3 -Destination $appsPath1 -Force
