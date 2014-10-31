<?php
require_once ('mercadopago.php');

$mp = new MP('CLIENT_ID', 'CLIENT_SECRET');

$preapproval_data = array(
	"payer_email" => "my_customer@my_site.com",
	"back_url" => "http://www.my_site.com",
	"reason" => "Monthly subscription to premium package",
	"external_reference" => "OP-1234",
	"auto_recurring" => array(
		"frequency" => 1,
		"frequency_type" => "months",
		"transaction_amount" => 60,
		"currency_id" => "CURRENCY_ID",
		"start_date" => "2014-12-10T14:58:11.778-03:00",
		"end_date" => "2015-06-10T14:58:11.778-03:00"
	)
);

$preapproval = $mp->create_preapproval_payment($preapproval_data);
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
	</head>
	<body>
		<a href="<?php echo $preapproval['response']['init_point']; ?>" name="MP-Checkout" class="blue-rn-m">Subscribe</a>
		<script type="text/javascript" src="https://www.mercadopago.com/org-img/jsapi/mptools/buttons/render.js"></script>
	</body>
</html>