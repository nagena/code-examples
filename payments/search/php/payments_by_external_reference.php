<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$filters = array (
	"external_reference" => "ext1425"
);

$search_result = $mp->search_payment ($filters);

print_r ($search_result);
?>