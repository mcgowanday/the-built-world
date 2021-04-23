#!/bin/sh

# API="http://localhost:4741" URL_PATH="/buildings" TOKEN="5ef63dc60cbc843e7e4a8a65d2585fa2" sh curl-scripts/buildings/index.sh

API="http://localhost:4741"
URL_PATH="/buildings"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
