curl -X GET -G \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search"
-d "access_token=$ACCESS_TOKEN" \
-d "payment_type=credit_card" \
-d "operation_type=regular_payment" \
-d "range=date_created" \
-d "begin_date=2014-10-21T00:00:00Z" \
-d "end_date=2014-10-25T24:00:00Z"