<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"status" => "approved",
	"operation_type" => "regular_payment",
	"payer_email" => "payer1@email.com payer2@email.com"
);

$search_result = $mp->search_payment ($filters);

print_r ($search_result);
?>