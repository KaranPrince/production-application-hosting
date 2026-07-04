#!/usr/bin/env bash
set -euo pipefail

echo "Generating server certificate..."

openssl req \
-new \
-key ../server/private/pah.local.key \
-out ../server/csr/pah.local.csr

openssl x509 \
-req \
-in ../server/csr/pah.local.csr \
-CA ../root-ca/certs/rootCA.crt \
-CAkey ../root-ca/private/rootCA.key \
-CAcreateserial \
-out ../server/certs/pah.local.crt \
-days 365 \
-sha256 \
-extfile ../config/server-openssl.cnf

echo "Server certificate generated."