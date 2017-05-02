TOKEN="BAhJIiU4NDgyMDBkNTE4NTBjZmJjYzlmY2UyMjYxYmFmZWY2NAY6BkVG--c33b9bc2374dc2bafd1dadaf49cee49157eafe0e"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_rating": {
      "album_id": "5",
      "ratings": "2",
      "comment": "newest",
      "status": "Not Started"
    }
  }'

echo
