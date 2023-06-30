# Podman and Podman Compose
---------------------------

## Installation steps 
## OS: RHEL



`sudo yum install podman --allowerasing`

This will allow to remove conflicting packages and continue installation. There are other options as well to install with options like skip and know best regarding packages.  

Now to install podman compose first we need to install **python3-pip**. 


`sudo dnf install python3-pip`
 

Now using pip3 we will install podman compose. 

`pip3 install --user podman-compose`

Now check the status of podman. 


`sudo systemctl status podman.socket`

Now in order to start the podman service.

`sudo systemctl start podman.socket`
 
