#!/bin/sh

set -e

/opt/event_service/scripts/letsencrypt_to_pkcs12.sh

/etc/init.d/event_service start

