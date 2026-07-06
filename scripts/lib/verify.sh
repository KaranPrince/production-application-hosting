#!/usr/bin/env bash

verify_url() {

local name="$1"

local url="$2"

if curl -ks "$url" >/dev/null
then

    printf " %-24s PASS\n" "$name"

else

    die "$name verification failed."

fi

}

verify_all() {

    verify_url Frontend https://frontend.pah.local

    verify_url Admin https://admin.pah.local

    verify_url API https://api.pah.local

    verify_url Health https://api.pah.local/health

    verify_url Ready https://api.pah.local/ready

    verify_url Version https://api.pah.local/version

}