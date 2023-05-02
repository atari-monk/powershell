#kopiuje 5 losowych odcinków serialu
#todo zamiast kopiowania zrobić linku do plików albo listę odtwarzania
clear
cd $HOME/Desktop
echo 1
rmdir odcinkiX
echo 2
mkdir odcinkiX
echo 3
cd "E:\Torrents\Married With Children Complete Series H264 AAC"
echo 4
copy $(Get-ChildItem | Select -exp Name | Sort-Object {Get-Random} | Select -Last 5) $HOME/Desktop/odcinkiX  
echo 5