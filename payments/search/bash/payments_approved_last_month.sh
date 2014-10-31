curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search?access_token=$ACCESS_TOKEN&status=approved&operation_type=regular_payment&range=date_created&begin_date=NOW-1MONTH&end_date=NOW"