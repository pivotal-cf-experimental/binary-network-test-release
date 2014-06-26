#!/bin/bash

set -e -x

SERVER=${1}
PORT=${2:-8080}
DURATION=${3:-60}

while true; do
  curl http://${SERVER}:${PORT}

  echo "Waiting $DURATION seconds to curl $SERVER:$PORT again"
  sleep ${DURATION}
done
