<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$access_token = $mp->get_access_token();

print_r ($access_token);
?>