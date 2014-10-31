curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/mercadopago_account/movements/search?access_token=$ACCESS_TOKEN&user_id=user_id&range=date_created&begin_date=NOW-1MONTH&end_date=NOW"