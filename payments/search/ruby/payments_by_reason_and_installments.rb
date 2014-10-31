require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"payment_type" => "credit_card",
	"operation_type" => "regular_payment",
	"installments" => 12,
	"reason" => "Your-item-title"
]

searchResult = $mp.search_payment(filters)

puts searchResult