require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"payment_type" => "credit_card",
	"operation_type" => "regular_payment",
	"range" => "date_created",
	"begin_date" => "2014-10-21T00:00:00Z",
	"end_date" => "2014-10-25T24:00:00Z"
]

searchResult = $mp.search_payment(filters)

puts searchResult