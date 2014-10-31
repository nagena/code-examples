<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"status" => "approved",
	"operation_type" => "regular_payment",
	"range" => "date_created",
	"begin_date" => "NOW-1MONTH",
	"end_date" => "NOW"
);

$search_result = $mp->search_payment ($filters);

print_r ($search_result);
?>
