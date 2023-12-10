#! /usr/bin/bash

: '
create the service/program/application to monitor disk at evrry 2 min and store the info in a log file

for creating service imp points:-

to create the service go into this file:- 

1. centos :- /etc/systemd/system
2. ubuntu :- /etc/systemd/system

create the service and paste that in above directory

vi /etc/systemd/diskmonitor.service

[Unit]
Description=monitoring service
Documentation= if want to attach some documentation with the service

[Service]
Type=simple
User=root
Group=root
TimeoutStartSec=0
Restart=on-failure
RestartSec=30s
ExecStart=path/of/the/script/of/the/service/.sh   -------> our shell script
SyslogIdentifier=Diskutilization

[Install]
WantedBy=multi-user.target
'
# check filesystem utilization at every 120 seconds 
while true
do
	date >> /var/log/diskmonitor.txt
	sudo df -h >> /var/log/diskmonitor.txt
	sleep 120
done

