curl --include --request POST http://localhost:4741/user_ratings\
  --header "Content-Type: application/json" \
  --data '{
    "user_rating": {
      "user_id": "1",
      "album_id": "500",
      "ratings": "0",
      "comment": "",
      "status": "Not Started"
    }
}'
