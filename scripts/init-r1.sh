#!/usr/bin/env sh

PKI_ROOT=$(cd $(dirname $0); pwd)/..

CA_R1_DIR=$PKI_ROOT/ca/R1
CA_ROOT_DIR=$PKI_ROOT/ca/Root

if [[ -f "$CA_R1_DIR/cert.pem" ]]; then

    exit;
fi

echo 'Preparing R1 CA Directory...'

cd $CA_R1_DIR

mkdir -p certs crl csr issued_certs private
touch index.txt
echo 1000 > serial
echo 1000 > crlnumber

echo 'Generate R1 CA Certificate Sign Request...'

openssl req -config $CA_R1_DIR/openssl.cnf -new -sha384 \
      -key $CA_R1_DIR/key.pem \
      -out $CA_R1_DIR/csr.pem

cd $CA_ROOT_DIR

echo 'Signing R1 CA Certificate By Root CA...'

openssl ca -config $CA_ROOT_DIR/ca.cnf -extensions v3_intermediate_ca \
      -days 3650 -notext -md sha384 \
      -in $CA_R1_DIR/csr.pem \
      -out $CA_R1_DIR/cert.pem
