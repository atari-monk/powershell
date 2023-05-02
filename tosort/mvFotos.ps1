#kopiowanie fotek z "C:\Users\Krzysztof Mazanek\Desktop\fotki\" 
#do "C:\Users\Krzysztof Mazanek\Pictures\fotki komórka"
#kopiowanie wszystkich jpg z folderu nieposortowane do folderu fotki
$sourcePath="C:\Users\Krzysztof Mazanek\Desktop\fotki\*"
$targetPath="C:\Users\Krzysztof Mazanek\Pictures\fotkiTel"
Move-Item -Path $sourcePath -Destination $targetPath -WhatIf
Move-Item -Path $sourcePath -Destination $targetPath