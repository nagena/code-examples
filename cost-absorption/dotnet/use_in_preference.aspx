<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");
	
	String preferenceData = "{\"items\":"+
		"[...]"+
	"},"+
	"\"differential_pricing\": {"+
		"\"id\": 12345678945632100"+
	"}";

	Hashtable preference = mp.createPreference(preferenceData);    
%>