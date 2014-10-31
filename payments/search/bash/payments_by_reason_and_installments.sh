curl -X GET -G \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search" \
-d "access_token=$ACCESS_TOKEN" \
-d "payment_type=credit_card" \
-d "operation_type=regular_payment" \
-d "installments=12" \
-d "reason=Your-item-title"