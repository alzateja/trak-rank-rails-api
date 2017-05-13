TOKEN="BAhJIiU0Mjc3ZWIzZmJjY2FlZDNlZjM4ZmU3ZTMyYmQ1Y2MzNgY6BkVG--6956b21fd92c0b1e516b64cd98af13bcbbe3779e"



API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/my-ratings"
curl "${API}${URL_PATH}" \
  --header "Authorization: Token token=${TOKEN}" \
  --include \
  --request GET \


echo
