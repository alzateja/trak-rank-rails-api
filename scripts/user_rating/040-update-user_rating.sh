TOKEN="BAhJIiU4NDgyMDBkNTE4NTBjZmJjYzlmY2UyMjYxYmFmZWY2NAY6BkVG--c33b9bc2374dc2bafd1dadaf49cee49157eafe0e"
AlbumID="5"
User_ID="3"



ID="?album_id=${AlbumID}"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "user_rating": {
      "ratings": "5",
      "comment": "Can now search by ID",
      "status": "Complete"
    }
}'


echo
