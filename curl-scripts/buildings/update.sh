#!/bin/bash

API="http://localhost:4741"
URL_PATH="/buildings"

# API="http://localhost:4741" URL_PATH="/buildings" ID="6081de7170a6df2087fa6ae0" TOKEN="5ef63dc60cbc843e7e4a8a65d2585fa2" NAME="Chrysler Building" CITY="New York City" RATING="97" OWNER="60807ef8d8ada40de100bd63" sh curl-scripts/buildings/update.sh

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "building": {
      "name": "'"${NAME}"'",
      "city": "'"${CITY}"'",
      "rating": "'"${RATING}"'",
      "owner": "'"${OWNER}"'"
    }
  }'

echo
