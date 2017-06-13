#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cards/1"
WEBSITE="ww.org"
EMAIL="em@il"
PASSWORD="hehe"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
      "card": {
        "website": "'"${WEBSITE}"'",
        "email": "'"${EMAIL}"'",
        "password": "'"${PASSWORD}"'"
      }
    }'

echo
