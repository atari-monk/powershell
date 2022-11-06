#GetRepoNames
#Gets repo folders from Code folder
$root = "C:\atari-monk"
$code = $root + "\Code"
Get-ChildItem -Path $code -Directory -Force -ErrorAction SilentlyContinue | Select-Object Name