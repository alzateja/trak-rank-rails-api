TOKEN="BAhJIiU5MzZjZGQ3YzU4NWU4MTkwM2ViYjQyNjAxOWMyYzk2YQY6BkVG--c6633908ce39fa422652cd9bbbe7a87ee841ae52"

ID="7"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \


echo
