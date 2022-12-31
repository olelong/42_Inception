NAME = inception

all:
	docker compose -f srcs/docker-compose.yml up --build

clean:
	docker compose -f srcs/docker-compose.yml down

fclean: clean
	-docker image rm mariadb wordpress nginx 2> /dev/null
	yes | docker system prune -f

re: fclean all

.PHONY:    all clean fclean re
