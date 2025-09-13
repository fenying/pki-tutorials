# OpenSSL CA/PKI Tutorials

> 点击查看[中文版](./README_zh.md)。

This is a tutorial for building a PKI (Public Key Infrastructure) based on OpenSSL, including

- Key management
- Create root CA certificates
- Create secondary CA certificates
- Issue server certificates
- etc

For DEMO, please visit [Fenying CA](https://ca.fenying.net).

> This tutorial is published on the author's personal blog, [click to view](https://fenying.net/en/book/pki-tutorials/).

## Catalog

1. RSA Keys/Certificates
    1. [Manage RSA Keys](./en/1.1.manage-rsa-keys.md)
    2. [Initialize RSA Root CA](./en/1.2.generate-rsa-ca-root.md)
    3. [Initialize RSA Intermediate CA](./en/1.3.generate-rsa-ca-intermediate.md)

2. EC Keys/Certificates
    1. [Manage EC Keys](./en/2.1.manage-ec-keys.md)
    2. [Initialize EC Root CA](./en/2.2.generate-ec-ca-root.md)
    3. [Initialize EC Intermediate CA](./en/2.3.generate-ec-ca-intermediate.md)

3. Terminal Certificates
    1. [Issue Server-side Certificates](./en/3.1.request-server-certificate.md)
    2. [Issue Client-side Certificates](./en/3.2.request-client-certificate.md)
    3. [Revoke Certificates](./en/3.3.revoke-certificate.md)

4. Cross-signing

    Unfinished.

5. Appendices

    1. [Generate random seed file](./en/x.01-generate-random-seed-file.md)

## References

- [Configuration file](https://www.ibm.com/docs/en/ztpf/1.1.0.15?topic=gssccr-configuration-file-generating-self-signed-certificates-certificate-requests)

- [CA Manuals](https://jamielinux.com/docs/openssl-certificate-authority/create-the-root-pair.html)

## LICENSE

This document is published under the CC-BY-4.0 license on [Github](https://github.com/fenying/pki-tutorials), please follow this license for redistribution.
