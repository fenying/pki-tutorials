# OpenSSL CA/PKI 操作教程

这是一份基于 OpenSSL 的 PKI（Public Key Infrastructure）建设教程，包括但不限于：

- 密钥管理
- 建立根 CA
- 建立二级 CA
- 签发终端证书
- 吊销证书
- 交叉签名
- ……

具体效果可以参考 [Fenying CA](https://ca.fenying.net)。

> 本教程发布于作者的个人博客，[点击查看](https://fenying.net/book/pki-tutorials/)。

## 目录

1. RSA 证书
    1. [RSA 密钥管理](./zh/1.1.manage-rsa-keys.md)
    2. [生成 RSA CA 根证书](./zh/1.2.generate-rsa-ca-root.md)
    3. [生成 RSA CA 中间证书](./zh/1.3.generate-rsa-ca-intermediate.md)

2. EC 证书
    1. [EC 密钥管理](./zh/2.1.manage-ec-keys.md)
    2. [生成 EC CA 根证书](./zh/2.2.generate-ec-ca-root.md)
    3. [生成 EC CA 中间证书](./zh/2.3.generate-ec-ca-intermediate.md)

3. 终端证书管理
    1. [签发服务端证书](./zh/3.1.request-server-certificate.md)
    2. [签发客户端证书](./zh/3.2.request-client-certificate.md)
    3. [吊销证书](./zh/3.3.revoke-certificate.md)

4. 交叉签名

    未完待续。

5. 附录

    1. [生成随机种子文件](./zh/x.01-generate-random-seed-file.md)
    2. [参考文献](./zh/x.02-rererences.md)

## LICENSE

本文档采用 CC-BY-4.0 协议公开发表于 Github，转载请遵循该协议。
