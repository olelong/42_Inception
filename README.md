# 42_Inception


This file allows us to make a link with all the other tools and to frame 
our development environment using communication tools.

## Dev Environment

This project uses Docker (docker-compose version 3.8) to manage the local development environment.

### Requirements

#### Hosts Configuration

You must have this entry in your `/etc/hosts` file:

#### Volumes
You have to change the path of the volumes in the docker-compose file and create a folder 
data folder containing the wp_data and db_data folders.

```
127.0.0.1 olelong.42.fr
```

### Launch

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

#### Volumes

Vous devez changer le path des volumes dans le fichier docker-compose et créer un dossier 
data contenant les dossiers wp_data et db_data.

```
127.0.0.1 olelong.42.fr
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

