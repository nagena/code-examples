curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search" \
-d "access_token=$ACCESS_TOKEN" \
-d "status=approved" \
-d "operation_type=regular_payment" \
-d "range=date_created" \
-d "begin_date=NOW-1MONTH" \
-d "end_date=NOW"