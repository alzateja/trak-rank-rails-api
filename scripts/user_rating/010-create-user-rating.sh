TOKEN="BAhJIiU0Mjc3ZWIzZmJjY2FlZDNlZjM4ZmU3ZTMyYmQ1Y2MzNgY6BkVG--6956b21fd92c0b1e516b64cd98af13bcbbe3779e"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_rating": {
      "album_id": "78",
      "ratings": "2",
      "comment": "newest",
      "status": "Not Started"
    }
  }'

echo
