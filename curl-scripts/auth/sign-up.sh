#!/bin/bash

# API="http://localhost:4741" URL_PATH="/sign-up" EMAIL="mac3@md.com" PASSWORD="mac" sh curl-scripts/auth/sign-up.sh

API="http://localhost:4741"
URL_PATH="/sign-up"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
