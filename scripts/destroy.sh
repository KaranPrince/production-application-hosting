#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/docker.sh

header

section "Destroy Platform"

compose_down

echo

success "Platform destroyed."