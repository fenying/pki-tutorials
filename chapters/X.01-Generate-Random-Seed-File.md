# 附录01：生成随机种子文件

OpenSSL 的 `rand` 命令可以生成指定大小的随机数据文件。

e.g.

在当前目录下生成 10240 字节（10 KiB）的随机文件，命名为 `rand.bin`

```sh
openssl rand -out ./rand.bin 10240
```
