#!/bin/bash

ID=1 OLDPW="TestPassword" NEWPW="NewPassword" TOKEN="BAhJIiU4M2ZiMzU0NTJiY2VmNTg1OTZhNTRlOTgzNWZmMjk4NAY6BkVG--1f17f54b1eea34b75da58b0267990e62e86d9548"

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
