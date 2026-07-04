#!/usr/bin/env bash
set -euo pipefail

openssl x509 \
-in ../server/certs/pah.local.crt \
-text \
-noout