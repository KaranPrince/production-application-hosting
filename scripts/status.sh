#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/docker.sh

header

section "Containers"

compose_ps

echo

section "Docker Images"

docker images | grep pah || true

echo

section "Networks"

docker network ls | grep pah || true

echo

success "Status collected."