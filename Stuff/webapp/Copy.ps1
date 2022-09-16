Write-Output "$webAppName Copy"
Copy-Item -Path $webAppBuildPath -Destination $webAppPath -Recurse