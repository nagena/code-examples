curl -X POST \
-H "accept: application/json" \
-H "content-type: application/json" \
"https://api.mercadolibre.com/checkout/preferences?access_token=$ACCESS_TOKEN" \
-d '{
	"items": [
		...
	],
	...,
	"differential_pricing": {
		"id": 12345678945632100
	}
}'