NAME	= inception

# On ajoute la règle install pour éviter de rebuild les containers 
# et de réinstaller les dépendances à chaque lancement du projet.
install: # Containers construits et les dépendances logicielles installées
	docker-compose build
	docker-compose run --no-deps --rm application composer install	

start:	# Lorsque le logiciel a été lancé
	docker-compose up -d

stop:	# Lorsque le logiciel a été arrêté
	docker-compose down

.PHONY:    install start stop
