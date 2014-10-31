curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search" \
-d "access_token=$ACCESS_TOKEN" \
-d "operation_type=regular_payment" \
-d "payer_email=payer1@email.com%20payer2@email.com"