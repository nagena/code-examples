curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search?access_token=$ACCESS_TOKEN&payment_type=credit_card&operation_type=regular_payment&range=date_created&begin_date=2014-10-21T00:00:00Z&end_date=2014-10-25T24:00:00Z"