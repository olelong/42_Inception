#!/bin/sh

mysql -e "CREATE DATABASE wp;"
mysql -e " USE wp;"
mysql -e "CREATE_TABLE wordpress;"

mysql -e "CREATE USER 'root'@'localhost' IDENTIFIED BY 'pass';"
mysql -e "GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';"


mysql -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';"
mysql -e "GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';"

MYSQL_SCRIPT
