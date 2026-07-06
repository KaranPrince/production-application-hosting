#!/usr/bin/env bash

set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ROOT_CA_DIR="${BASE_DIR}/root-ca"
SERVER_DIR="${BASE_DIR}/server"
CONFIG_DIR="${BASE_DIR}/config"
GENERATED_DIR="${BASE_DIR}/generated"

mkdir -p \
"${ROOT_CA_DIR}/certs" \
"${ROOT_CA_DIR}/private" \
"${SERVER_DIR}/certs" \
"${SERVER_DIR}/csr" \
"${SERVER_DIR}/private" \
"${GENERATED_DIR}"

echo "=========================================="
echo " Production Application Hosting PKI"
echo "=========================================="

#############################################
# Root CA
#############################################

if [ ! -f "${ROOT_CA_DIR}/private/rootCA.key" ]; then
    echo
    echo "[1/6] Generating Root CA Private Key..."

    openssl genrsa \
        -out "${ROOT_CA_DIR}/private/rootCA.key" \
        4096
else
    echo
    echo "[1/6] Root CA Key already exists."
fi

if [ ! -f "${ROOT_CA_DIR}/certs/rootCA.crt" ]; then

    echo
    echo "[2/6] Generating Root CA Certificate..."

    openssl req \
        -x509 \
        -new \
        -nodes \
        -key "${ROOT_CA_DIR}/private/rootCA.key" \
        -sha256 \
        -days 3650 \
        -out "${ROOT_CA_DIR}/certs/rootCA.crt"

else
    echo
    echo "[2/6] Root CA Certificate already exists."
fi

#############################################
# Server Key
#############################################

if [ ! -f "${SERVER_DIR}/private/pah.local.key" ]; then

    echo
    echo "[3/6] Generating Server Private Key..."

    openssl genrsa \
        -out "${SERVER_DIR}/private/pah.local.key" \
        2048

else
    echo
    echo "[3/6] Server Key already exists."
fi

#############################################
# CSR
#############################################

echo
echo "[4/6] Generating CSR..."

openssl req \
-new \
-key "${SERVER_DIR}/private/pah.local.key" \
-out "${SERVER_DIR}/csr/pah.local.csr" \
-config "${CONFIG_DIR}/server-openssl.cnf"

#############################################
# Certificate
#############################################

echo
echo "[5/6] Generating Server Certificate..."

openssl x509 \
-req \
-in "${SERVER_DIR}/csr/pah.local.csr" \
-CA "${ROOT_CA_DIR}/certs/rootCA.crt" \
-CAkey "${ROOT_CA_DIR}/private/rootCA.key" \
-CAcreateserial \
-out "${SERVER_DIR}/certs/pah.local.crt" \
-days 365 \
-sha256 \
-extfile "${CONFIG_DIR}/server-openssl.cnf" \
-extensions req_ext

#############################################
# PEM
#############################################

echo
echo "[6/6] Creating PEM Bundle..."

cat \
"${SERVER_DIR}/private/pah.local.key" \
"${SERVER_DIR}/certs/pah.local.crt" \
> "${GENERATED_DIR}/pah.local.pem"

echo
echo "=========================================="
echo " PKI Generation Completed Successfully"
echo "=========================================="