.PHONY: up up-all down logs ps build pull config

up:
	docker compose up -d

up-all:
	docker compose --profile cache --profile observability up -d

down:
	docker compose down

logs:
	docker compose logs -f --tail=100

ps:
	docker compose ps

build:
	docker compose build

pull:
	docker compose pull

config:
	docker compose config
