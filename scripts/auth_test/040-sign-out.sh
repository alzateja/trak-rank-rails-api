#!/bin/bash
ID="37"
TOKEN="BAhJIiVmZTU1MWY1MjVkNjM5ZTg5YmM5MmMxOTRjNWRkNDcyZQY6BkVG--2e796140892d7d1455fb15b5351c07332343abe1"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
