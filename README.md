# 42_Inception

Ce fichier permet de faire un lien avec tous les autres outils et d'encadrer 
notre environnement de developpement en utilisant des outils de communication..

Template qui permet de gerer la configuration du host et de la cle ssh:

## Dev Environment

This project uses Docker (docker-compose version >=3.5) to manage the local development environment.

### Requirements

#### Hosts Configuration

You must have this entry in your `/etc/hosts` file:

```
127.0.0.1 myproject.localhost
```

#### SSH key forwarding

The project uses Docker Secrets to handle the SSH key forwarding to your container (mainly used to access private repositories).

Your local SSH key must be located at `~/.ssh/id_rsa`.

### Installation

```
make install && make start
```

The project should be now successfully running.
