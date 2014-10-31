curl -X GET \
-H "accept: application/json" \
"https://api.mercadolibre.com/collections/search?access_token=$ACCESS_TOKEN&payment_type=credit_card&operation_type=regular_payment&installments=12&reason=Your-item-title"