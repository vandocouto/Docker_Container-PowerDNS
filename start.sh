#!/bin/bash


sleep 30
# MySQL
echo "show databases" | mysql -h 192.168.0.2 | grep -i powerdns
if [ $? -ne 0 ]; then 
	mysql -u root -h mysql -e "CREATE DATABASE powerdns"
	mysql -u root -h mysql -e "GRANT ALL privileges ON powerdns.* TO powerdns@'192.168.0.3' identified by 'powerdns'"
	mysql -u root -h mysql powerdns < pdns.sql
fi

/etc/init.d/pdns start
rm -rf /run/httpd/* /tmp/httpd*
exec /usr/sbin/apachectl -DFOREGROUND

