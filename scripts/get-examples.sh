#!/bin/bash
TOKEN="BAhJIiU3MmVlOGQ5NmI5YzgzM2IyYWViZjE5YWJkYzAyYjQzMwY6BkVG--bd2ac600be2277a48fd54e6f843d0f1ee3bbf057"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
  -data '{
    "user_rating": {
      "ratings": "1",
      "comment": "Prettywewewe Good",
      "status": "In Progress"
    }
}'

echo
