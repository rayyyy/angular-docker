# docker Makefile

all: rm build up ps

build:
	docker-compose build --no-cache

up:
	docker-compose up -d --build

exec:
	docker-compose exec web_dev bash

ps:
	docker ps -a && echo "\n"
	docker-compose ps

rm:
	docker-compose stop
	docker-compose rm -f
