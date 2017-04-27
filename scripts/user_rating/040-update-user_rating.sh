curl --include --request PATCH http://localhost:4741//user_ratings/2 \
  --header "Content-Type: application/json" \
  --data '{
    "user_rating": {
      "ratings": "5",
      "comment": "Pretty Good",
      "status": "In Progress"
    }
}'
