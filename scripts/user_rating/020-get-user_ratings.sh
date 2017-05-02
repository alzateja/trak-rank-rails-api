
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings"
curl "${API}${URL_PATH}" \
  --include \
  --request GET


echo
