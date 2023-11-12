#!/bin/sh

cd /var/lib/postgresql/certs

# private key and certificate from it
openssl req -new -text -newkey rsa:8192 -passout pass:$POSTGRES_PASSWORD -subj /CN=localhost -out server.req -keyout privkey.pem
# self signed root certificate
openssl rsa -in privkey.pem -passin pass:$POSTGRES_PASSWORD -out server.key
# derived certificate
openssl req -x509 -in server.req -text -key server.key -out server.crt

# change permissions to the root certificate for postgres
chmod 600 server.key
chown postgres:postgres server.key
