$code = "C:\kmazanek@gmail.com\Code\"
$hashTable = @{}
$hashTable.Add("Log.ConsoleLib.ConsoleApp", "log-console-lib-console-app")
$hashTable.Add("Log.Console.Lib", "log-console-lib")
#$hashTable.Add("log-wizard-lib", "")
$hashTable.Add("Log.Modern.Wizard.ConsoleApp", "log-modern-wizard-consoleapp")
$hashTable.Add("Inventory.Modern.ConsoleApp", "inventory-modern-consoleapp")
$hashTable.Add("Inventory.Modern.Lib", "inventory-modern-lib")
$hashTable.Add("Inventory.Data", "inventory-data")
$hashTable.Add("Log.Modern.Lib", "log-modern-lib")
$hashTable.Add("Log.Modern.ConsoleApp", "log-modern-consoleapp")
$hashTable.Add("Log.Data", "log-data")
$hashTable.Add("TimCoRetailManager", "timco-retail")
$hashTable.Add("GameData", "game-data")
$hashTable.Add("Inventory.ConsoleLib.ConsoleApp", "inventory-consolelib-consoleapp")
$hashTable.Add("Inventory.Console.Lib", "inventory-console-lib")
#$hashTable.Add("", "inventory-wizard-lib")
$hashTable.Add("Log.Modern.MDI.ConsoleApp", "log-modern-mdi-consoleapp")
$hashTable.Add("UnityContainer.Examples", "unitycontainer-examples")
$hashTable.Add("ModelHelper", "model-helper")
$hashTable.Add("EFCoreHelper", "efcore-helper")
$hashTable.Add("GitPath", "git-path")
foreach ($oldName in $hashTable.keys)
{
  $oldPath = $code + $oldName
  Write-Host $oldPath
  if((Test-Path $oldPath))
  {
	Write-Host $oldName
	$newName = $hashTable[$oldName]
	$scriptPath = "$PSScriptRoot\RenameFolders.ps1" 
	$argumentList = $oldName + " " + $newName
	$invoke = "& `"$scriptPath`" $argumentList"
	Write-Host $invoke
	Invoke-Expression $invoke
	$newPath = $code + $newName
	if((Test-Path $newPath))
	{
		Write-Host $newPath
	}
	else
	{
		Write-Host "Error-no new path"
	}
  }
  else
  {
	  Write-Host "Error-no path"
  }
}