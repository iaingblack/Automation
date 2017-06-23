Write-Host "Stopping Containers"
docker ps -a -q | %{docker stop $_}
Write-Host "Removing Containers"
docker ps -a -q | %{docker rm -f $_}
Write-Host "Deleting Images"
docker images --filter dangling=true -q | %{docker rmi -f $_}