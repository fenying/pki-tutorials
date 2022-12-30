#!/usr/bin/env sh

if [[ -z "$KEY_WIDTH" ]]; then
    KEY_WIDTH=$2
fi

if [[ -z "$KEY_WIDTH" ]]; then
    echo "WARNING: No specific key width, using P-256 instead."
    KEY_WIDTH=256
fi

if [[ "$KEY_WIDTH" = "256" ]]; then
    KEY_ALGO=prime256v1
elif [[ "$KEY_WIDTH" = "384" ]]; then
    KEY_ALGO=secp384r1
elif [[ "$KEY_WIDTH" = "521" ]]; then
    KEY_ALGO=secp521r1
else
    echo "WARNING: Unsupported key width, using P-256 instead."
    KEY_ALGO=prime256v1
fi;

openssl ecparam -genkey -name $KEY_ALGO -noout -out $1
openssl ec -aes-256-cfb -in $1 -out $1
