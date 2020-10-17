# x509 Creator

Need x509 certificates to create for mutual tls?

Cant be bothered copy pasting openssl commands?

This is the repo for you, `generateBaseCerts.*` will generate CA and server cert, `regenClientCert.*` will generate a client cert. Modify the `(server/client)-extern.cnf` to set the IP/host that the certs are for. Couldn't be simpler.