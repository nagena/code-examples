require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"status" => "approved"
]

searchResult = $mp.search_payment(filters)

puts searchResult