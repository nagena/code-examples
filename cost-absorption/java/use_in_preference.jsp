<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	String preferenceData = "{\"items\":"+
		"[...]"+
	"},"+
	"\"differential_pricing\": {"+
		"\"id\": 12345678945632100"+
	"}";

	JSONObject preference = mp.createPreference(preferenceData);
%>