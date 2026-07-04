#!/usr/bin/env bash
set -euo pipefail

echo "Generating Root CA..."

mkdir -p ../root-ca/private ../root-ca/certs

openssl genrsa -out ../root-ca/private/rootCA.key 4096

openssl req \
-x509 \
-new \
-nodes \
-key ../root-ca/private/rootCA.key \
-sha256 \
-days 3650 \
-out ../root-ca/certs/rootCA.crt

echo "Root CA generated successfully."