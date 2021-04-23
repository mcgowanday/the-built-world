#!/bin/bash

# API="http://localhost:4741" URL_PATH="/buildings" TOKEN="5ef63dc60cbc843e7e4a8a65d2585fa2" NAME="Empire State Building" CITY="New York City" RATING="92" OWNER="60807ef8d8ada40de100bd63" sh curl-scripts/buildings/create.sh
# API="http://localhost:4741" URL_PATH="/buildings" TOKEN="5ef63dc60cbc843e7e4a8a65d2585fa2" NAME="Chrysler Building" CITY="New York City" RATING="98" OWNER="60807ef8d8ada40de100bd63" sh curl-scripts/buildings/create.sh

API="http://localhost:4741"
URL_PATH="/buildings"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
