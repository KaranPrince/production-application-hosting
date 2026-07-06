#!/usr/bin/env bash

set -Eeuo pipefail

source scripts/lib/common.sh
source scripts/lib/verify.sh

header

section "Platform Verification"

verify_all

echo
success "Platform verification completed."