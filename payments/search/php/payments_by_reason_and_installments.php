<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"payment_type" => "credit_card",
	"operation_type" => "regular_payment",
	"installments" => 12,
	"reason" => "Your-item-title"
);

$search_result = $mp->search_payment ($filters);

print_r ($search_result);
?>