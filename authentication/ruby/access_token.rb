require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')

$accessToken = $mp.getAccessToken()

puts (accessToken)