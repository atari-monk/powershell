Write-Output "$webAppName Run"
Start-Process -FilePath $webAppExePath -WorkingDirectory $webAppPath -Verb RunAs