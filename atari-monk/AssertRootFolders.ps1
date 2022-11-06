#AssertRootFolders
#Takes array of folders and checks they are present in root folder
$root = "C:\atari-monk"
$actual = Get-ChildItem -Path $root -Directory -Force -ErrorAction SilentlyContinue | Select-Object Name
$expected = @(
    "Apps"
    , "Apps.Links"
    , "Audio"
    , "Blender"
    , "Build"
    , "Build.Script"
    , "Build.Script.Custom"
    , "Code"
    , "Db"
    , "Doc"
    , "Image"
    , "My.YT.Video" #move it
)
Function IsFolderInExpected($folder) {
    for ($j = 0; $j -lt $expected.Count; $j++) 
    {
        if ($folder.Equals($expected[$j]))
        {
            return $true
        }
    }
    return $false
}
for ($i = 0; $i -lt $actual.Count; $i++) 
{
    $folder = $actual[$i].Name
    if(IsFolderInExpected($folder))
    {
        Write-Output "$folder - ok"
    }
    else 
    {
        Write-Output "$folder - not ok"
    }
}