#!/bin/bash

OLDPW="123"
NEWPW="1234"
TOKEN="BAhJIiVmZTU1MWY1MjVkNjM5ZTg5YmM5MmMxOTRjNWRkNDcyZQY6BkVG--2e796140892d7d1455fb15b5351c07332343abe1"
ID="37"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
