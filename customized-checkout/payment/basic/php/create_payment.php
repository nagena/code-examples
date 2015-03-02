<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');

$payment_data = array(
	"transaction_amount" => 100,
	"reason" => "Title of what you are paying for",
	"installments" => 1,
	"payment_method_id" => "visa",
	"card" => $_POST["card"],
	"payer" => array(
		"email" => "payer@email.com"
	),
	"external_reference" => "1234"
);

$payment = $mp->post("/v1/payments", $payment_data);
