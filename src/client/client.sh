#!/bin/bash

SERVER=${1}
DURATION=${2:-60}

while true; do
  curl http://${SERVER}:8080

  echo "Waiting $DURATION to curl $SERVER again"
  sleep ${DURATION}
end
