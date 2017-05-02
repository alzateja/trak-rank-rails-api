#!/bin/bash

TOKEN="BAhJIiU3MmVlOGQ5NmI5YzgzM2IyYWViZjE5YWJkYzAyYjQzMwY6BkVG--bd2ac600be2277a48fd54e6f843d0f1ee3bbf057"

TEXT="2468248234"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
