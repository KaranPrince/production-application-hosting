#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh

header

section "Cleaning Generated Files"

rm -rf infrastructure/pki/generated/*

echo

success "Generated files removed."