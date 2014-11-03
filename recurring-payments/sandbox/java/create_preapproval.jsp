<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	String preapprovalData = "...";

	JSONObject preapproval = mp.createPreference(preapprovalData);

	String sandboxInitPoint = preapproval.getJSONObject("response").getString("sandbox_init_point");
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
	</head>
	<body>
		<a href="<%= sandboxInitPoint %>">Subscribe</a>
	</body>
</html>