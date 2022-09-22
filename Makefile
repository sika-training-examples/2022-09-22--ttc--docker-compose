build:
	docker compose build

push:
	docker compose push

up:
	docker compose up -d --remove-orphans --no-build

.PHONY: test
test:
	docker compose run test

down:
	docker compose down --remove-orphans

use-dev:
	echo "COMPOSE_FILE=docker-compose.yml:docker-compose.dev.yml" >> .env

use-traefik-int:
	echo "COMPOSE_FILE=docker-compose.yml:docker-compose.prod.yml:docker-compose.traefik-int.yml" >> .env

use-traefik-ext:
	echo "COMPOSE_FILE=docker-compose.yml:docker-compose.prod.yml:docker-compose.traefik-ext.yml" >> .env

use-test:
	echo "COMPOSE_FILE=docker-compose.yml:docker-compose.prod.yml:docker-compose.test.yml" >> .env
