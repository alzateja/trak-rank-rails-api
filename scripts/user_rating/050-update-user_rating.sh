TOKEN="BAhJIiU0Mjc3ZWIzZmJjY2FlZDNlZjM4ZmU3ZTMyYmQ1Y2MzNgY6BkVG--6956b21fd92c0b1e516b64cd98af13bcbbe3779e"
ID="51"




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
