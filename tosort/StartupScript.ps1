#Nie do końca aktualne bo w .net.Core moduł ScheduledJob jest domyślnie wyłaczony
#https://blogs.technet.microsoft.com/heyscriptingguy/2014/05/14/use-powershell-to-create-job-that-runs-at-startup/
#1 Open the Windows PowerShell console with admin rights.
#2 Create a new job trigger and specify the type as a startup trigger.
#Specify a short random interval for the startup trigger to prevent race conditions at startup.

#$trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:01

#3 Create the new scheduled job and specify the job trigger and the full path to the startup script.

#Register-ScheduledJob -Trigger $trigger -FilePath "C:\kmazanek@gmail.com\Code\powershell\StartupScript.ps1" -Name StartupScript

#Aby sprawdzić status 

#Get-Job

#aby usunąć

#$batch = Get-Job -Name "StartupScript"
#$batch | Remove-Job

#treść:
cd "C:\kmazanek@gmail.com\Build.Script"
#Get-ChildItem