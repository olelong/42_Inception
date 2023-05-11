# 42_Inception


This file allows us to make a link with all the other tools and to frame 
our development environment using communication tools.

## Dev Environment

This project uses Docker (docker-compose version 3.8) to manage the local development environment.

### Requirements

#### Hosts Configuration

You must have this entry in your `/etc/hosts` file:

```
127.0.0.1 olelong.42.fr
```

#### Volumes

You have to change the path of the volumes in the docker-compose file and create a folder 
data folder containing the wp_data and db_data folders.

#### .env

You need to create an .env file in srcs/ to put in and fill with your own information:

```
DOMAIN_NAME= (here olelong.42.fr)
# MYSQL SETUP
MYSQL_DATABASE_NAME=
MYSQL_ROOT=
MYSQL_ROOT_PASSWORD=
MYSQL_USER=
MYSQL_PASSWORD=
```

### Launch

Clone the repository:
```bash 
git clone git@github.com:olelong/42_Inception.git
```

Enter the folder:
```bash
cd 42_Inception
```

Then compile:

```
make
```

The project should be now successfully running.


### Stop and remove everything

```
make fclean
```

*********************************** FRENCH ********************************************

Ce fichier nous permet de faire le lien avec tous les autres outils et d'encadrer 
notre environnement de développement en utilisant des outils de communication.

## Environnement de développement

Ce projet utilise Docker (docker-compose version 3.8) pour gérer l'environnement de développement local.

### Exigences

#### Configuration des hosts 

Vous devez avoir cette ligne dans votre fichier `/etc/hosts` :

```
127.0.0.1 your_domain_name (ici olelong.42.fr)
```

#### Volumes

Vous devez changer le path des volumes dans le fichier docker-compose et créer un dossier 
data contenant les dossiers wp_data et db_data.

#### .env

Vous avez besoin de creer un .env dans srcs pour y mettre et remplir avec vos propres informations:

```
DOMAIN_NAME= (ici olelong.42.fr)
# MYSQL SETUP
MYSQL_DATABASE_NAME=
MYSQL_ROOT=
MYSQL_ROOT_PASSWORD=
MYSQL_USER=
MYSQL_PASSWORD=
```



### Pour lancer les conteneurs.

Cloner le repository:
```bash 
git clone git@github.com:olelong/42_Inception.git
```

Entrer dans le dossier:
```bash
cd 42_Inception
```

```
make
```

Le projet devrait maintenant être lancé avec succès.


### Pour arrêter et supprimer tous les conteneurs.

```
make fclean
```

