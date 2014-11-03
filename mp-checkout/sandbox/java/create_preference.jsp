<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	String preferenceData = "...";

	JSONObject preference = mp.createPreference(preferenceData);

	String sandboxInitPoint = preference.getJSONObject("response").getString("sandbox_init_point");
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<%= sandboxInitPoint %>">Pay</a>
	</body>
</html>