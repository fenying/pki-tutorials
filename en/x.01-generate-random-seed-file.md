# Appendix: Generate Random Seed File

The sub-command `rand` of OpenSSL can generate a random data file of a specified size.

For example, to generate a 10 KiB random file named `rand.bin` in the current directory:

```sh
openssl rand -out ./rand.bin 10240
```

Now, you have a 10 KiB random seed file.
