Remove-Partition -DriveLetter D -Confirm:$False
sleep 5
$disknumber = 1
New-Partition -DiskNumber $disknumber -Size 50GB -DriveLetter D 
write-host "Creating Drive "X" with 100 GB"
New-Partition -DiskNumber $disknumber -Size 100GB -DriveLetter X
sleep 5
write-host "Format drive D"
Format-Volume -DriveLetter D -Confirm:$False
write-host "Format drive X"
Format-Volume -DriveLetter X -Confirm:$False
Set-Volume -DriveLetter D -NewFileSystemLabel Binaries
Set-Volume -DriveLetter X -NewFileSystemLabel SWAP
