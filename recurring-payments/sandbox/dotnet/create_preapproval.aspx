<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");
	
	String preapprovalData = "...";

	Hashtable preapproval = mp.createPreference(preapprovalData);    
%>
	
<!DOCTYPE html>
<html>
	<head>
		<title>Subscribe</title>
	</head>
	<body>
		<a href="<% Response.Write(preapproval["response"]["sandbox_init_point"]); %>">Subscribe</a>
	</body>
</html>