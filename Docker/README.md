# Docker and Docker Compose. 
----------------------------------

## Installation steps: 

## Operating System: RHEL 

 

`docker –v`

`docker compose version`

 
By using above command we can confirm whether docker has been installed or not. 

If version is not displayed follow the below steps: 


`sudo yum install -y yum-utils`

`sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo`

Setup repo.

`sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`


Above command will install both docker and docker compose. 

After running this command some downloads and installation will take place and wherever asked kindly press **Y**. 

You will see certain things while downloading. 

Now let's cheque whether it has been installed or not, simply by checking the version using below commands 

 

`docker –v`

`docker compose version`

 

It will display version of docker and docker compose. 

Now we have to start docker service in order to run any docker command. 

`sudo systemctl start docker`

Now we need to add the user to the docker group, so that we don't have to mention sudo always. 

For that we need to create the docker group. 

`sudo groupadd docker`

Now add user to the docker group.  

`sudo usermod –aG docker $USER`

Now we need to reboot the machine. 

`sudo reboot`

once machine is started run the following commands and we're good to go. 

`newgrp docker`

 
----------------------------------

# Uninstall docker and docker compose 
----------------------------------

For this just need to run the following commands. 

`sudo yum remove docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras`

Using this command we are installing the docker engine, CLI, containerd and docker compose packages. 

Now,images, containers, volumes or custom configuration files on your host aren't automatically removed so in order to remove all that run the following commands: 

`sudo rm -rf /var/lib/docker`

`sudo rm -rf /var/lib/containerd`

Successfully docker and docker compose are uninstalled. 

For more details [Visit Website](https://docs.docker.com/engine/install/rhel/ "Docker Website")
