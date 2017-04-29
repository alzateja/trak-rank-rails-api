ID="500"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/albums"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \


echo
