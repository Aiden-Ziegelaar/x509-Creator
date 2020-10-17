mkdir CA
mkdir server

# 1. Generate CA's private key and self-signed certificate
openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout CA/ca-key.pem -out CA/ca-cert.pem -subj "/C=AU/ST=Western Australia/L=Perth/O=/OU=/CN=localhost/emailAddress="

echo "CAs self-signed certificate"
openssl x509 -in CA/ca-cert.pem -noout -text

# 2. Generate web server's private key and certificate signing request (CSR)
openssl req -newkey rsa:4096 -nodes -keyout server/server-key.pem -out server/server-req.pem -subj "/C=AU/ST=Western Australia/L=Perth/O=/OU=/CN=localhost/emailAddress="

# 3. Use CA's private key to sign web server's CSR and get back the signed certificate
openssl x509 -req -in server/server-req.pem -days 60 -CA CA/ca-cert.pem -CAkey CA/ca-key.pem -CAcreateserial -out server/server-cert.pem -extfile server-extern.cnf

echo "Servers signed certificate"
openssl x509 -in server/server-cert.pem -noout -text
