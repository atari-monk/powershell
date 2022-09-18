Write-Output "Run New Api And WebApp"

. ".\SetupMain.ps1"

. ".\SetupApi.ps1"
. ".\SetupWebApp.ps1"

. ".\api\Run.ps1"
. ".\webapp\Run.ps1"
. ".\webapp\RunNgrok.ps1"
. ".\webapp\GetNgrokUrl.ps1"
. ".\webapp\CopyNgrokUrl.ps1"