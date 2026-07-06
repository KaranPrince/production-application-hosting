#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/pki.sh
source scripts/lib/docker.sh

header

section "Updating Certificates"

rm -f infrastructure/pki/generated/*

generate_pki

compose_restart

echo

success "Certificates updated."