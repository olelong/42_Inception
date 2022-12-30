#!/bin/bash

mysqld & sleep 5

mysql << EOF
CREATE DATABASE wp;
USE wp;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wp.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
CREATE USER 'user'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wp.* TO 'user'@'%';
FLUSH PRIVILEGES;
EOF

pkill mysqld
mysqld

# Lancer mysqld et on redirige stderr vers un fichier null
# ce qui permet de ne pas afficher les erreurs.
# Le "&" permet de mettre mysqld en arriere plan.
# Le sleep 5 est au premier plan et bloque le reste pour
# laisser le temps a mysqld de bien s'initialiser.

# Ensuite il rentre dans le mysql.

# Le pkill, permet de kill tous les processus lancé par la 
# commande en argument donc ici mysqld.
# Car il faut quitter et relancer mysqld pour que nos
# changements soient pris en compte.

# On relance en premier plan mysqld.
