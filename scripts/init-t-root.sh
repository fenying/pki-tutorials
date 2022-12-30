#!/usr/bin/env sh

PKI_ROOT=$(cd $(dirname $0); pwd)/..

CA_ROOT_DIR=$PKI_ROOT/ca/T/Root
CA_WORK_DIR=$CA_ROOT_DIR/CA


CA_CERT_PATH=$CA_WORK_DIR/cert.pem
if [[ -f "$CA_CERT_PATH" ]]; then

    exit;
fi

CA_KEY_PATH=$CA_WORK_DIR/key.pem

mkdir -p $CA_WORK_DIR

if [[ ! -f "$CA_KEY_PATH" ]]; then

    $PKI_ROOT/scripts/gen-ec-key.sh $CA_KEY_PATH 384
fi;

cd $CA_WORK_DIR

mkdir -p crl
touch index.txt
echo 1000 > serial

openssl req -config $CA_ROOT_DIR/req.cnf \
    -key $CA_KEY_PATH \
    -new -x509 -days 10950 -sha384 -extensions v3_ca \
    -out $CA_CERT_PATH
