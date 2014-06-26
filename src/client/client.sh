#!/bin/bash

set -e -x

SERVER=${1}
PORT=${2:-8080}
DURATION=${3:-1}

while true; do
  curl -vvv --connect-timeout 1 http://${SERVER}:${PORT} || true

  echo "Waiting $DURATION seconds to curl $SERVER:$PORT again"
  sleep ${DURATION}
done
