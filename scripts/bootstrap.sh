#!/usr/bin/env bash

set -Eeuo pipefail

################################################################################
# Production Application Hosting
# Bootstrap Script
################################################################################

source scripts/lib/common.sh
source scripts/lib/docker.sh
source scripts/lib/pki.sh
source scripts/lib/verify.sh

################################################################################
# Banner
################################################################################

banner() {

cat <<EOF

==============================================================
        Production Application Hosting
                Bootstrap
                Version ${VERSION}
==============================================================

EOF

}

################################################################################
# Prerequisites
################################################################################

check_prerequisites() {

    info "Checking prerequisites..."

    local commands=(
        docker
        openssl
        curl
        git
    )

    for cmd in "${commands[@]}"; do

        if command -v "$cmd" >/dev/null 2>&1; then
            printf "   %-18s %s\n" "$cmd" "✓"
        else
            die "$cmd is not installed."
        fi

    done

    docker compose version >/dev/null \
        || die "Docker Compose plugin not found."

    printf "   %-18s %s\n" "docker compose" "✓"

    success "Prerequisites verified."

    echo

}

################################################################################
# PKI
################################################################################

setup_pki() {

    info "Checking PKI..."

    generate_pki

    verify_pem

    success "PKI verified."

    echo

}

################################################################################
# Build
################################################################################

build_images() {

    info "Building images..."

    compose_build

    compose_wait

    success "Images ready."

    echo

}

################################################################################
# Platform
################################################################################

start_platform() {

    info "Starting platform..."

    compose_up

    success "Containers started."

    echo

}

################################################################################
# Wait
################################################################################

wait_for_platform() {

    info "Waiting for services..."

    compose_wait

    success "Platform ready."

    echo

}

################################################################################
# Verify
################################################################################

run_verification() {

    info "Running verification..."

    verify_all

    success "Verification completed."

}

################################################################################
# Summary
################################################################################

summary() {

cat <<EOF

==============================================================

Platform Summary

Docker           PASS
PKI              PASS
Containers       PASS
HTTPS            PASS

--------------------------------------------------------------

Frontend

https://frontend.pah.local

Admin

https://admin.pah.local

API

https://api.pah.local

--------------------------------------------------------------

HAProxy Dashboard

http://localhost:8404

==============================================================

Bootstrap completed successfully.

==============================================================

EOF

}

################################################################################
# Main
################################################################################

main() {

    banner

    check_prerequisites

    setup_pki

    build_images

    start_platform

    wait_for_platform

    run_verification

    summary

}

main "$@"