#!/bin/bash

API="http://localhost:4741"
URL_PATH="/buildings"
# API="http://localhost:4741" URL_PATH="/buildings" ID="60808ae3e26e150f9557e091" TOKEN="5ef63dc60cbc843e7e4a8a65d2585fa2" sh curl-scripts/buildings/destroy.sh

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
