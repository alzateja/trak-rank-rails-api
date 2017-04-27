#!/bin/bash
ID=1 TOKEN="BAhJIiUxYjc0Y2IwODAyN2NkOTgxNGMxNzI0Mjg3YjljODg1ZgY6BkVG--8698476f406f5b2cd18bcf3b386ad4d249561f06"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
