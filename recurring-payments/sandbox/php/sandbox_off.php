<?php
require_once "mercadopago.php";

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$mp->sandbox_mode(FALSE);
...
?>