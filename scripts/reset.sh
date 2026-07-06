#!/usr/bin/env bash

set -Eeuo pipefail

./scripts/destroy.sh

echo

./scripts/bootstrap.sh