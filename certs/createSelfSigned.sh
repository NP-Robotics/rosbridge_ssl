#!/usr/bin/env bash
openssl req -new -sha256 -nodes -out ./certs/server.csr -newkey rsa:2048 -keyout ./certs/server.key -config server.csr.cnf
openssl x509 -req -in ./certs/server.csr -CA ./certs/rootCA.pem -CAkey ./certs/rootCA.key -CAcreateserial -out ./certs/server.crt -days 825 -sha256 -extfile v3.ext
