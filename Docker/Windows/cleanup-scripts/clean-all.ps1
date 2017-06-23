cls
Write-Host "================================================================================"
Write-Host "SHOWING EXISTING CONTAINERS AND IMAGES"
Write-Host "--------------------------------------"
docker ps -a
docker images
Write-Host "______________________________________"
Write-Host "Stopping Containers"
docker ps -a -q | %{docker stop $_}
Write-Host "Removing Containers"
docker ps -a -q | %{docker rm -f $_}
Write-Host "Deleting Images"
docker images --filter dangling=true -q | %{docker rmi -f $_}
Write-Host "_______________________________________"
Write-Host "SHOWING REMAINING CONTAINERS AND IMAGES"
Write-Host "--------------------------------------"
docker ps -a
docker images
Write-Host "================================================================================"