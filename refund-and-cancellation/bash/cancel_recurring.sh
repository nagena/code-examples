curl -X PUT \
-H "Content-Type: application/json" \
'https://api.mercadolibre.com/preapproval/:ID?access_token=ACCESS_TOKEN' \
-d '{"status":"cancelled"}'