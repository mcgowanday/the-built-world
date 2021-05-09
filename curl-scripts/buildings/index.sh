#!/bin/sh

# API="http://localhost:4741" URL_PATH="/buildings" TOKEN="899feb540a513b532722816e9947136b" sh curl-scripts/buildings/index.sh

API="http://localhost:4741"
URL_PATH="/buildings"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
