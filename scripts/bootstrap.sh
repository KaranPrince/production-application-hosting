#!/usr/bin/env bash

set -euo pipefail

echo "===================================="
echo "Production Application Hosting"
echo "Bootstrap Script"
echo "===================================="

echo
echo "Checking Docker..."
docker version >/dev/null

echo
echo "Building images..."
docker compose \
-f infrastructure/edge/docker/docker-compose.yaml \
build

echo
echo "Starting platform..."
docker compose \
-f infrastructure/edge/docker/docker-compose.yaml \
up -d

echo
echo "Platform started successfully."

echo
docker ps

echo
echo "===================================="
echo "Access the platform:"
echo
echo "https://frontend.pah.local"
echo "https://api.pah.local"
echo "https://admin.pah.local"
echo
echo "HAProxy Dashboard:"
echo "http://localhost:8404"
echo "===================================="