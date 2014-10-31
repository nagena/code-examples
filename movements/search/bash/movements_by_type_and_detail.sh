curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/mercadopago_account/movements/search?access_token=$ACCESS_TOKEN&type=movement_type&detail=movement_detail"