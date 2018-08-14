#!/bin/sh
#
# Converts Let's Encrypt PEM files into PKCS12 for use with Event Service

NAME=event.nova-labs.org
PEM_DIR=/etc/letsencrypt/live/$NAME
EVENT_DIR=/opt/event_service

openssl pkcs12 -export -in ${PEM_DIR}/fullchain.pem -inkey ${PEM_DIR}/privkey.pem -out ${EVENT_DIR}/${NAME}.p12 -name $NAME -CAfile chain.pem -caname root -passout pass:novalabs


