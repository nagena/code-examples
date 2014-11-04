<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');

$preference_data = array(
	"items" => array(
		...
	),
	"differential_pricing": array (
		"id" => 12345678945632100
	)
);

$preference = $mp->create_preference($preference_data);
?>