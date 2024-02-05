$clientPath = "C:\atari-monk\code\notes\editor\build\index.html"
$readerPath = "C:\atari-monk\code\notes\reader\build\index.html"
$serverPath = "C:\atari-monk\code\notes\server\build\server.js"

if (Test-Path $clientPath -PathType Leaf) {
    Start-Process $clientPath
} else {
    Write-Host "The client file does not exist: $clientPath"
}

if (Test-Path $readerPath -PathType Leaf) {
    Start-Process $readerPath
} else {
    Write-Host "The reader file does not exist: $readerPath"
}

if (Test-Path $serverPath -PathType Leaf) {
	node $serverPath | ForEach-Object {
    $_
    $host.ui.RawUI.WindowTitle = 'Notes Server'
	}
} else {
    Write-Host "The server file does not exist: $serverPath"
}