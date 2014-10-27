<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");
	
	String preferenceData = "{'items':"+
		"[{"+
			"'title':'Multicolor kite',"+
			"'quantity':1,"+
			"'currency_id':'USD',"+ <%-- Available currencies at: https://api.mercadolibre.com/currencies --%>
			"'unit_price':10.0"+
		"}]"+
	"}";

	Hashtable preference = mp.createPreference(preferenceData);    
%>
	
<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<% Response.Write(preference["response"]["init_point"]); %>" name="MP-Checkout" class="blue-rn-m">Pay</a>
		<script type="text/javascript" src="https://www.mercadopago.com/org-img/jsapi/mptools/buttons/render.js"></script>
	</body>
</html>
