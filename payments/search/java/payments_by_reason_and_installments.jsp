<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	Map<String, Object> filters = new HashMap<String, Object> ();

	filters.put("payment_type", "credit_card");
	filters.put("operation_type", "regular_payment");
	filters.put("installments", "12");
	filters.put("reason", "Your-item-title");

	JSONObject searchResult = mp.searchPayment (filters);

	JSONArray results = searchResult.getJSONObject("response").getJSONArray("results");
%>
<%=results%>