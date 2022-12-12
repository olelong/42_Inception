#!/bin/sh

mysql << EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';
CREATE DATABASE wp;
USE wp;
CREATE_TABLE wordpress;
GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';
FLUSH PRIVILEGES;
EOF

