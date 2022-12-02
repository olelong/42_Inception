#!/bin/sh

#<<MYSQL_SCRIPT
#CREATE DATABASE wp;
#mysql -e "CREATE DATABASE wp;"
#mysql -e " USE wp;"
#mysql -e "CREATE_TABLE wordpress;"
#mysql -e "CREATE USER 'root'@'localhost' IDENTIFIED BY 'pass';"
#mysql -e "GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';"
# To ask root password
#mysql -uroot -p'pass' -e "GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';"
#mysql -e "FLUSH PRIVILEGES;"
#mysql -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';"
#mysql -e "GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';"
#mysql -e "FLUSH PRIVILEGES;"
#MYSQL_SCRIPT

mysql << EOF
CREATE DATABASE wp;
USE wp;
CREATE_TABLE wordpress;
CREATE USER 'root'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON wp TO 'root'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON 'wp' TO 'user'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "MySQL user"
echo "Username:   root"


