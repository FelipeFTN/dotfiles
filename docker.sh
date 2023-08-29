# Add docker to user group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
