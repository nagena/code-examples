<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");
	
	String preferenceData = "...";

	Hashtable preference = mp.createPreference(preferenceData);    
%>
	
<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<% Response.Write(preference["response"]["sandbox_init_point"]); %>">Pay</a>
	</body>
</html>