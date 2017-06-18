#!/bin/bash
set -e
sh -c './wait-for-it.sh $REMOTE_ADDR:15672 -t 30'
sh -c 'python client_app.py'
exec "$@"
