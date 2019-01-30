#!/bin/bash

curl "http://localhost:4741/rides" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
