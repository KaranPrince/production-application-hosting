#!/usr/bin/env bash

generate_pki() {

if [ -f "$GENERATED_DIR/pah.local.pem" ]
then

    success "Existing PKI detected."

    return

fi

info "Generating PKI..."

"$PKI_DIR/scripts/generate-pki.sh"

}

verify_pem() {

check_file "$GENERATED_DIR/pah.local.pem"

success "PEM bundle verified."

}