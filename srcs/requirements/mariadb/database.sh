#!/bin/bash

mysqld 2> /dev/null & sleep 5

mysql 2> /dev/null << EOF
CREATE DATABASE wp;
USE wp;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';
FLUSH PRIVILEGES;
EOF

pkill mysqld
mysqld
#mysqld_safe #--user="mysql"

#CREATE DATABASE wp;
#USE wp;
#CREATE_TABLE wordpress;
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';
#GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';
#FLUSH PRIVILEGES;
#CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';
#GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';
#FLUSH PRIVILEGES;
