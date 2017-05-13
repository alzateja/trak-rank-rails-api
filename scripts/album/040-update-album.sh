curl --include --request PATCH http://localhost:4741/albums/513 \
  --header "Content-Type: application/json" \
  --data '{
    "album": {
      "image": "my wifes dope image",
      "artist": "Kung-Fu Kenny"
    }
}'
