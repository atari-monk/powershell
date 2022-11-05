$folders = Get-ChildItem -Path "C:\kmazanek@gmail.com" -Directory -Force -ErrorAction SilentlyContinue | Select-Object Name

$foldersOk = @(
    "Apps"
    , "Audio"
    , "Blender"
    , "Build"
    , "Build.Script"
    , "Code"
    , "DBBackup"
    , "Image"
    , "Other"
    , "Video"
)

# for ($i = 0; $i -lt $folders.Count; $i++) 
# {
#     $name = $folders[$i].Name
#     for ($j = 0; $j -lt $foldersOk.Count; $j++) 
#     {
#         $nameOk = $foldersOk[$j]
#         if($name.Equals($nameOk))
#         {
#             Write-Output "$name - ok"
#         }
#         else 
#         {
#             Write-Output "$name - not ok"
#         }
#     }
# }

Function IsNameOk($name) {
    for ($j = 0; $j -lt $foldersOk.Count; $j++) 
    {
        $nameOk = $foldersOk[$j]
        if($name.Equals($nameOk))
        {
            return $true
        }
    }
    return $false
}

# IsNameOk("Apps")
# IsNameOk("Software")
# IsNameOk("Docs")
# IsNameOk("Code")

for ($i = 0; $i -lt $folders.Count; $i++) 
{
    $name = $folders[$i].Name
    if(IsNameOk($name))
    {
        Write-Output "$name - ok"
    }
    else 
    {
        Write-Output "$name - not ok"
    }
}