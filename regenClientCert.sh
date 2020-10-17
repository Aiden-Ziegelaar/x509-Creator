mkdir client

openssl req -newkey rsa:4096 -nodes -keyout client/client-key.pem -out client/client-req.pem -subj "/C=AU/ST=Western Australia/L=Perth/O=/OU=/CN=localhost/emailAddress="

openssl x509 -req -in client/client-req.pem -days 60 -CA CA/ca-cert.pem -CAkey CA/ca-key.pem -CAcreateserial -out client/client-cert.pem -extfile client-extern.cnf

echo "Clients signed certificate"
openssl x509 -in client/client-cert.pem -noout -text