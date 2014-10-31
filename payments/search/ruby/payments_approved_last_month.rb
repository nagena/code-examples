require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"status" => "approved",
	"operation_type" => "regular_payment",
	"range" => "date_created",
	"begin_date" => "NOW-1MONTH",
	"end_date" => "NOW"
]

searchResult = $mp.search_payment(filters)

puts searchResult