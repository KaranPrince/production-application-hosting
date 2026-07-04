.PHONY: build up down restart logs clean verify

build:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml build

up:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml up -d

down:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml down

restart:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml restart

logs:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml logs -f

verify:
	curl -k https://frontend.pah.local
	curl -k https://api.pah.local/health
	curl -k https://admin.pah.local

clean:
	docker compose -f infrastructure/edge/docker/docker-compose.yaml down -v