Write-Output "$webAppName Run Ngrok"
Start-Process -FilePath $ngrokExePath -WorkingDirectory $ngrokPath -Verb RunAs -ArgumentList "http $webAppLocalhost"