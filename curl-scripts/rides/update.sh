#!/bin/bash

curl "http://localhost:4741/rides/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "ride": {
      "date": "'"${DATE}"'",
      "location": "'"${LOCATION}"'",
      "ride_time": "'"${RIDE_TIME}"'",
      "ride_distance": "'"${RIDE_DISTANCE}"'"
    }
  }'

echo
