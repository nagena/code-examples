<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"payment_type" => "credit_card",
	"operation_type" => "regular_payment",
	"range" => "date_created",
	"begin_date" => "2014-10-21T00:00:00Z",
	"end_date" => "2014-10-25T24:00:00Z"
);

$search_result = $mp->search_payment ($filters);

print_r ($search_result);
?>