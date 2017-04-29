#!/bin/bash

ID=1 OLDPW="123" NEWPW="1234"

TOKEN="BAhJIiU5MzZjZGQ3YzU4NWU4MTkwM2ViYjQyNjAxOWMyYzk2YQY6BkVG--c6633908ce39fa422652cd9bbbe7a87ee841ae52"

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
