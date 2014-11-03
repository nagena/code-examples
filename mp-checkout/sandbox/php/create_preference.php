<?php
require_once "mercadopago.php";

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");
$preference_data = array(...);

$preference = $mp->create_preference ($preference_data);
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<?php echo $preference['response']['sandbox_init_point']; ?>">Pay</a>
	</body>
</html>