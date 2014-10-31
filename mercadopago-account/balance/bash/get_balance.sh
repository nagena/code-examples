# Get Access token
ACCESS_TOKEN=`curl -s -X POST -H 'content-type: application/x-www-form-urlencoded' 'https://api.mercadolibre.com/oauth/token' -d 'grant_type=client_credentials' -d 'client_id=CLIENT_ID' -d 'client_secret=CLIENT_SECRET' | grep -o '"access_token":"[^"]*"' | sed -n 's/.*"access_token":"\(.*\)"/\1/p'`

curl -X GET -G \
-H "accept: application/json" \
"https://api.mercadolibre.com/users/USER_ID/mercadopago_account/balance" \
-d "access_token=$ACCESS_TOKEN" \