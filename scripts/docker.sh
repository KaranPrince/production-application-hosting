#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/docker.sh
source scripts/lib/pki.sh
source scripts/lib/verify.sh

header

section "Environment"

check_command docker
check_command openssl
check_command curl
check_command git

echo

section "PKI"

verify_pem

echo

section "Containers"

compose_ps

echo

section "Platform"

verify_all

echo

success "Doctor completed successfully."