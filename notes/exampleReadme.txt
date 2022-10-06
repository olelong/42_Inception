README

On peut encadrer notre environnement de développement en utilisant des outils de communication.

Le fichier README.md est classique et efficace, et un excellent liant avec tous les autres outils. Un exemple de template minimal qui permet de gérer la configuration du host et clef SSH sur un projet :

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


