Set-Location -Path "C:\kmazanek@gmail.com\Code\scripter"
dotnet build
dotnet build --configuration Release
dotnet test
dotnet publish -c Release
Set-Location -Path "C:\kmazanek@gmail.com\Build.Script"
