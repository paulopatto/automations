# Remove old packages
sudo dnf remove -y docker docker-common container-selinux docker-selinux docker-engine

# The Docker community package is now called “docker-ce“. Let’s add the Docker CE repository on your machine.

## Move to common
sudo dnf -y install curl

sudo curl -o /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf -y install docker-ce	


sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo systemctl restart docker
newgrp docker

docker run -it fedora echo Hello-World
