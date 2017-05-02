TOKEN="BAhJIiUyZjU1ZDhkNmRhNmYzMjIwMDg5OTc4ZGE3NTQ5MGU0OAY6BkVG--67038d445c352edee0509de8af01911d136c1129"

ID="5"

TEXT="45454"



API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
    "text": "'"${TEXT}"'"
  }
}'


echo
