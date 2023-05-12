# 42_Inception

<p align="left"> *************************** ENGLISH *************************** </p>

## The Project
This project involves creating an infrastructure with different services running in separate 
Docker containers, following specific rules such as the use of Docker-compose, creating custom 
Dockerfiles, using Debian Buster, creating volumes for the WordPress database 
and site files, and establishing a docker-network for container communication.

## Dev Environment

This project uses Docker (docker-compose version 3.8) to manage the local development environment.

## How does it works :

#### Clone the repository

Clone the repository:
```bash 
git clone git@github.com:olelong/42_Inception.git
```

Enter the folder:
```bash
cd 42_Inception
```

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

Compile:

```
make
```

The project should be now successfully running.


### Stop and remove everything

```
make fclean
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

</br></br>

<p align="left"> *************************** FRANCAIS *************************** </p>

## Le Projet

Ce projet consiste à créer une infrastructure composée de différents services exécutés dans des conteneurs 
Docker distincts, en respectant des règles précises telles que l'utilisation de Docker-compose, la création 
des propres Dockerfiles, l'utilisation de Alpine Linux ou Debian Buster, la création de volumes pour la base 
de données et les fichiers du site, et la mise en place d'un docker-network pour la communication entre les conteneurs.

## Environnement de développement

Ce projet utilise Docker (docker-compose version 3.8) pour gérer l'environnement de développement local.

## Comment ça marche : 

#### Clone le repository

Cloner le repository:
```bash 
git clone git@github.com:olelong/42_Inception.git
```

Entrer dans le dossier:
```bash
cd 42_Inception
```

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

```
make
```

Le projet devrait maintenant être lancé avec succès.


### Pour arrêter et supprimer tous les conteneurs.

```
make fclean
```

## Licence

Ce projet est sous licence MIT - voir le fichier [LICENSE](LICENSE) pour plus de détails.
