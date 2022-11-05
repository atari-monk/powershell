Write-Output "Run WebApp"

. ".\..\common\SetupMain.ps1"

. ".\..\webapp\Set.ps1"
. ".\..\webapp\RunNgrok.ps1"
. ".\..\webapp\GetNgrokUrl.ps1"
. ".\..\webapp\CopyNgrokUrl.ps1"