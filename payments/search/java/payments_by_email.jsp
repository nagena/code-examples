<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	Map<String, Object> filters = new HashMap<String, Object> ();

	filters.put("status", "approved");
	filters.put("operation_type", "regular_payment");
	filters.put("payer_email", "payer1@email.com payer2@email.com");

	JSONObject searchResult = mp.searchPayment (filters);

	JSONArray results = searchResult.getJSONObject("response").getJSONArray("results");
%>
<%=results%>