#Just doing this so I can run it from a shortcut. If all files are in same path as clean.ps1 then it will find them.
#Copy the vlean.bat file to desktop and amend to find this file and run as administator to get it to clean containers
$folder = Split-Path -Path $MyInvocation.MyCommand.Path
Write-Host "Stopping Containers"
$script = $folder + "\stop-all-containers.ps1"
& $script 
Write-Host "Removing Containers"
$script = $folder + "\remove-all-containers.ps1"
& $script 
Write-Host "Deleting Images"
$script = $folder + "\remove-dangling-images.ps1"
& $script 
