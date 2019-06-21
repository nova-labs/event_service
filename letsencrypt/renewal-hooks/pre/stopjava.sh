#!/bin/sh

set -e

/etc/init.d/event_service stop

service apache2 stop
