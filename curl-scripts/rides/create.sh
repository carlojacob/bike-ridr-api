#!/bin/bash

curl "http://localhost:4741/rides" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "ride": {
      "date": "'"${DATE}"'",
      "location": "'"${LOCATION}"'",
      "ride_time": "'"${RIDE_TIME}"'",
      "ride_distance": "'"${RIDE_DISTANCE}"'"
    }
  }'

echo
