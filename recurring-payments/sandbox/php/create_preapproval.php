<?php
require_once "mercadopago.php";

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");
$preapproval_data = array(...);

$preapproval = $mp->create_preapproval_payment ($preapproval_data);
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
	</head>
	<body>
		<a href="<?php echo $preapproval['response']['sandbox_init_point']; ?>">Subscribe</a>
	</body>
</html>