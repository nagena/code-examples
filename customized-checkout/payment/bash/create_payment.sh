curl -X POST \
	-H 'accept: application/json' \
	-H 'content-type: application/json' \
	https://api.mercadolibre.com/checkout/custom/create_payment?access_token=tu_access_token \
	-d '{
		"amount": 10,
		"reason": "Title of what you are paying for",
		"currency_id": "CURRENCY_ID",
		"installments": 3,
		"payment_method_id": "visa",
		"card_token_id": "card_token",
		"payer_email": "payer@email.com",
		"external_reference": "1234"
	}'