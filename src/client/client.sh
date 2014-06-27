#!/bin/bash

set -e -x

SERVER=${1}
PORT=${2:-8080}
TIMEOUT=${3:-2}
DURATION=${4:-1}

while true; do
  curl -vvv --connect-timeout ${TIMEOUT} http://${SERVER}:${PORT} &

  echo "Waiting $DURATION seconds to curl $SERVER:$PORT again"
  sleep ${DURATION}
done
