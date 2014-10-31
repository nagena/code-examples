<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"status" => "approved"
);

$search_result = $mp->search_payment ($filters, 0, 10);

print_r ($search_result);
?>