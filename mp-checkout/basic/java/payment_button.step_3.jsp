<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

	String preferenceData = "{'items':"+
			"[{"+
				"'title':'Multicolor kite',"+
				"'quantity':1,"+
				"'currency_id':'USD',"+ // Available currencies at: https://api.mercadolibre.com/currencies
				"'unit_price':10.0"+
			"}]"+
		"}";

	JSONObject preference = mp.createPreference(preferenceData);

	String initPoint = preference.getJSONObject("response").getString("init_point");
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<%= initPoint %>">Pay</a>
	</body>
</html>
