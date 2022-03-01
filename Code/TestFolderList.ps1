$code = "C:\kmazanek@gmail.com\Code\"
$table = @(
"powershell", "scripter", "log-console-lib-console-app",
"log-console-lib", "log-wizard-lib", "log-modern-wizard-consoleapp",
"diy-box", "app-starter", "cli-framework",
"cli-wizard-helper", "inventory-modern-consoleapp", "inventory-modern-lib",
"inventory-data", "log-modern-lib", "cli-reader",
"commanddotnet-helper", "crud-command-helper", "datatotable",
"di-helper", "dotnet-extension", "log-modern-consoleapp",
"log-data", "timco-retail", "commander",
"game-data", "inventory-consolelib-consoleapp", "inventory-console-lib",
"inventory-wizard-lib", "dotnet-tool", "log-modern-mdi-consoleapp",
"cli-helper", "wpf-helper", "pattern",
"dotnet-examples", "unitycontainer-examples", "commanddotnet-examples",
"model-helper", "efcore-helper", "git-path")

Write-Host "Error:"
foreach ($item in $table)
{
  $path = $code + $item
  if((Test-Path $path))
  {
	#Write-Host $path - "Ok"
  }
  else
  {
	Write-Host $item
  }
}
Write-Host "Ok:"
foreach ($item in $table)
{
  $path = $code + $item
  if((Test-Path $path))
  {
	Write-Host $item
  }
  else
  {
	#Write-Host $path - "Error"
  }
}