Write-Output "$apiName Run"
Start-Process -FilePath $apiExePath -WorkingDirectory $apiPath -Verb RunAs