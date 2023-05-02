#Example profile
cd "C:\kmazanek@gmail.com\Build.Script"
#Get-ChildItem
if($Host.UI.RawUI.WindowTitle -like "*administrator*")
{
	$Host.UI.RawUI.ForegroundColor = "Red"
}
function Get-LatestArticles
{
((Invoke-WebRequest -Uri 'http://howtogeek.com').Links | Where-Object class -eq "title").OuterText
}
function Kill-Excel
{
taskkill /f /im excel.exe
}