<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	/* Get your credentials at:
	* Argentina: https://www.mercadopago.com/mla/herramientas/aplicaciones
	* Brazil: https://www.mercadopago.com/mlb/ferramentas/aplicacoes
	* Mexico: https://www.mercadopago.com/mlm/herramientas/aplicaciones
	* Venezuela: https://www.mercadopago.com/mlv/herramientas/aplicaciones
	* Colombia: https://www.mercadopago.com/mco/herramientas/aplicaciones
	*/

	MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="payment_link">Pay</a>
	</body>
</html>