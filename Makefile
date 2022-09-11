NAME    	= inception

# On ajoute la règle install pour éviter de rebuild les containers et de réinstaller les 
# dépendances à chaque lancement du projet
install: # Containers construits et les dépendances logicielles installées
	docker-compose build
	#docker-compose run --no-deps --rm application composer install	

start:	# Lorsque le logiciel a été lancé
	docker-compose up -d

stop:	# Lorsque le logiciel a été arrêté
	docker-compose down

# Exécuter seul run " --no-deps "
# Un container temporaire " --rm "
# Basé sur un service l´arrêt " application "
# Pour installer les dépendances PHP sur le système de fichiers " composer install "
#
# Utiliser un fichier Readme.md pour faire un lien avec tous les autres outils,
# on peut y mettre toutes les configurations nécessaires pour l´environnement
# et tous les besoins systèmes pour lancer notre porgramme.
#
#
#
#



.PHONY:    install start stop
