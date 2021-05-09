#!/bin/bash

API="http://localhost:4741"
URL_PATH="/buildings"

# API="http://localhost:4741" URL_PATH="/buildings" ID="60870267e93c5c5a8255d8ee" TOKEN="59e56bb49f188e331921680afe0db909" NAME="Igloo" CITY="Snow Town" RATING="80" OWNER="608317dc6298e73621ecdcac" sh curl-scripts/buildings/update.sh

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
