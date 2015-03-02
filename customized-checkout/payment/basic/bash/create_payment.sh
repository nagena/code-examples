curl -X POST \
	-H 'accept: application/json' \
	-H 'content-type: application/json' \
	https://api.mercadopago.com/v1/payments?access_token=your_access_token \
	-d '{
		"transaction_amount": 100,
		"reason": "Title of what you are paying for",
		"installments": 1,
		"payment_method_id": "visa",
		"card": ":card",
		"payer": {
			"email": "payer@email.com"
		},
		"external_reference": "1234"
	}'
