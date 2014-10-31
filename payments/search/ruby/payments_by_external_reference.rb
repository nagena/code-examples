require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"external_reference" => "ext1425"
]

searchResult = $mp.search_payment(filters)

puts searchResult