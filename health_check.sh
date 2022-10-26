#!/bin/bash

URL="http://localhost:5000/health"

# store the whole response with the status at the and
HTTP_RESPONSE=$(curl --silent --write-out "HTTPSTATUS:%{http_code}" -X GET $URL)

# extract the body
HTTP_BODY=$(echo $HTTP_RESPONSE | sed -e 's/HTTPSTATUS\:.*//g')

# extract the status
HTTP_STATUS=$(echo $HTTP_RESPONSE | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')

# example using the status

if [ ! $HTTP_BODY == "ok"  ]; then
  echo "Error [HTTP body: $HTTP_BODY]"
  echo "[HTTP status: $HTTP_STATUS]"
  exit 1
fi
echo "STATUS: $HTTP_STATUS"
echo "HEALTH CHECK OK"
exit 0