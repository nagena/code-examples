curl -X PUT \
-H "Content-Type: application/json" \
'https://api.mercadolibre.com/collections/:ID?access_token=ACCESS_TOKEN' \
-d '{"status":"refunded"}'