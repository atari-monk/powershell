Write-Output "Run New Api And WebApp"

. ".\..\common\SetupMain.ps1"

. ".\..\common\SetupApi.ps1"
. ".\..\common\SetupWebApp.ps1"

. ".\..\api\Run.ps1"
. ".\..\webapp\Run.ps1"
. ".\..\webapp\RunNgrok.ps1"
. ".\..\webapp\GetNgrokUrl.ps1"
. ".\..\webapp\CopyNgrokUrl.ps1"