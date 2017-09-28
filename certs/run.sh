#!/bin/bash
# Server Certs
./create-all.sh
rm dummy/cert.*
mv dummy/ server/
# Client1 Certs
./create-all.sh
# create pub+priv pem for curl
cat dummy/cert.crt dummy/cert.key >dummy/cert.pem
rm dummy/localhost.*
mv dummy/ client1/
# Client2 Certs
./create-all.sh
# create pub+priv pem for curl
cat dummy/cert.crt dummy/cert.key >dummy/cert.pem
rm dummy/localhost.*
mv dummy/ client2/
# CABundle Server + Client1
#cat server/CA.crt client1/CA.crt >cabundle.crt
