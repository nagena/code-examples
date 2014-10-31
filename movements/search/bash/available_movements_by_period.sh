curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/mercadopago_account/movements/search?access_token=$ACCESS_TOKEN&status=available&range=date_created&begin_date=2012-10-21T00:00:00Z&end_date=2012-10-25T24:00:00Z"