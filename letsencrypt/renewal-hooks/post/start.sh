#!/bin/sh

set -e

/etc/init.d/event_service start

service apache2 start
