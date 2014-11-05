# Get Access token
ACCESS_TOKEN=`curl -s -X POST -H 'content-type: application/x-www-form-urlencoded' 'https://api.mercadolibre.com/oauth/token' -d 'grant_type=client_credentials' -d 'client_id=CLIENT_ID' -d 'client_secret=CLIENT_SECRET' | grep -o '"access_token":"[^"]*"' | sed -n 's/.*"access_token":"\(.*\)"/\1/p'`

curl -X POST \
-H "Content-Type: application/json" \
'https://api.mercadolibre.com/money_requests?access_token=$ACCESS_TOKEN' \
-d '{
    "currency_id" : "CURRENCY_ID",
    "payer_email" : "payer@email.com",
    "amount" : 2.1,
    "description" : "Description",
    "concept_type" : "off_platform"
}'