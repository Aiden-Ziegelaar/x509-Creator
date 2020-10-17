# x509 Creator

Need to create x509 certificates for testing mutual tls?

Cant be bothered copy pasting openssl commands?

This is the repo for you, `generateBaseCerts.*` will generate CA and server cert, `regenClientCert.*` will generate a client cert. Modify the `(server/client)-extern.cnf` to set the IP/host that the certs are for. Couldn't be simpler.
