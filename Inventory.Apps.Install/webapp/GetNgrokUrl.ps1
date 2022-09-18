Write-Output "$webAppName Get Ngrok Url"
$get = "https://api.ngrok.com/tunnels"
$apikey = '2EwNxI1f4qRIzb1bO9jk3boJRwu_4Qv4skNLpoSgsW4rDXRgD'
$auth = "Bearer $apikey"
$result = Invoke-WebRequest $get -Headers @{'Authorization' = $auth; 'Ngrok-Version' = '2'}
$out = $result.Content | Out-String | ConvertFrom-Json 
foreach ($tunnel in $out.tunnels) {
    if ( $tunnel.forwards_to -match ".*$webAppLocalhost.*" ) {
		$text = $tunnel.forwards_to + "->" + $tunnel.public_url
        write-host $text
		Out-File -FilePath .\Stuff.txt -InputObject $text
    }   
}