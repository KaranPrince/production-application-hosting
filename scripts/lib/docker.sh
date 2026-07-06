#!/usr/bin/env bash

compose() {

docker compose \
-f "$COMPOSE_FILE" \
"$@"

}

compose_up() {

compose up -d

}

compose_down() {

compose down

}

compose_build() {

compose build

}

compose_rebuild() {

compose build --no-cache

}

compose_restart() {

compose restart

}

compose_ps() {

compose ps

}

compose_logs() {

compose logs -f

}

compose_wait() {

sleep 3

}