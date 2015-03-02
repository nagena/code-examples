require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')

paymentData = Hash[
		"transaction_amount" => 100,
		"reason" => "Title of what you are paying for",
		"installments" => 1,
		"payment_method_id" => "visa",
		"card" => ":CARD",
		"payer" => Array[
			"email" => "payer@email.com"
		],
		"external_reference" => "1234"
	]

payment = $mp.post("/v1/payments", paymentData);

puts payment
