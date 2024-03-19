[Unit]
Description=Start services

[Service]
ExecStart= /bin/bash /root/scripts/startup.sh


[Install]
WantedBy=default.target


##Configs can be added as needed.
