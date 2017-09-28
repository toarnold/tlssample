#!/bin/bash
curl -vvv --cacert certs/server/CA.crt https://localhost:444
echo "--------------------------------------------"
curl -vvv --cacert certs/server/CA.crt --cert certs/client1/cert.pem https://localhost:444
echo
echo "--------------------------------------------"
curl -vvv --cacert certs/server/CA.crt --cert certs/client2/cert.pem https://localhost:444
