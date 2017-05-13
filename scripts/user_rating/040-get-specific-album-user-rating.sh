TOKEN="BAhJIiU0Mjc3ZWIzZmJjY2FlZDNlZjM4ZmU3ZTMyYmQ1Y2MzNgY6BkVG--6956b21fd92c0b1e516b64cd98af13bcbbe3779e"

ALBUMID="5"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_ratings/by_album/"
curl "${API}${URL_PATH}/${ALBUMID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --include \
  --request GET \


echo
