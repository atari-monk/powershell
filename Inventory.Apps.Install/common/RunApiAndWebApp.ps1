Write-Output "Run Api And WebApp"

. ".\..\common\SetupMain.ps1"

. ".\..\api\Set.ps1"
. ".\..\api\Run.ps1"

. ".\..\webapp\Set.ps1"
. ".\..\webapp\Run.ps1"
. ".\..\webapp\RunNgrok.ps1"
. ".\..\webapp\GetNgrokUrl.ps1"
. ".\..\webapp\CopyNgrokUrl.ps1"