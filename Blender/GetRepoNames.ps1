#GetRepoNames
#Gets repo folders from Code folder
$root = "C:\atari-monk"
$blender = $root + "\Blender"
Get-ChildItem -Path $blender -Directory -Force -ErrorAction SilentlyContinue | Select-Object Name