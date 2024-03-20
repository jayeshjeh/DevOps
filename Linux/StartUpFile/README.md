
## Configure Startup Script in Linux

### Need to place this script file in any of the below path:

*`/usr/lib/systemd/system`* OR *`/etc/systemd/system`*

### We place the Service file under */etc/systemd/system*

Copy code from **startup.sh**, provide the path of the Bash file which we need to run once the machine fires up. Provide the full path of that sh file in the **Service**.

Once all the is setup.

### Give permissions to the file

`chmod u+x <.sh file>`

### Enable the Service

` systemctl enable <service file name>.service`

 `systemctl start <service file name>.service`

 `systemctl status <service file name>.service`


**Reboot machine**

### Using this command check whether file is running or not

`ps -ef | grep startup`


### Reference: 
Description:\
             After=network.target\
             After=default.target\
             After=getty.target

Service: RemainAfterExit=yes
             
