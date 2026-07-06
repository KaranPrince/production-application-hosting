#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/docker.sh
source scripts/lib/verify.sh

header

section "Rebuilding Images"

compose_down

compose_rebuild

compose_up

compose_wait

verify_all

echo

success "Rebuild completed."