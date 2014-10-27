<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
	</head>
	<body>
		<a href="subscription_link">Subscribe</a>
	</body>
</html>