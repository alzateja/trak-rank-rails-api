curl --include --request POST http://localhost:4741/albums \
  --header "Content-Type: application/json" \
  --data '{
    "album": {
      "ranking": "0",
      "artist": "Kendrick Lamar",
      "album": "To Pimp A Butterfly",
      "image": "http://images.genius.com/5433b7013185948f409fd123a7e5489f.1000x1000x1.jpg",
      "year": "2015"
    }
}'
