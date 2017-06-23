sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
sudo systemctl enable docker
sudo systemctl start docker
sudo docker version
sudo docker pull centos
sudo docker pull alpine
sudo docker pull ubuntu

cat > clean.sh <<EOL
echo CONTAINERS - STOPPING
sudo docker ps -a -q | %{docker stop $_}
echo CONTAINERS - REMOVING
sudo docker ps -a -q | %{docker rm -f $_}
echo CONTAINERS - DELETING DANGLING IMAGES
sudo docker images --filter dangling=true -q | %{docker rmi -f $_}
EOL
sudo chmod +x clean.sh

echo TO RUN A CONTAINER DO SOMETHING LIKE THIS;
echo sudo docker run -i -t centos /bin/bash
echo TO CLEAN RUN .\clean.sh
echo sudo docker run -i -t centos /bin/bash