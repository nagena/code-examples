<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	Map<String, Object> filters = new HashMap<String, Object> ();

	filters.put("status", "approved");

	JSONObject searchResult = mp.searchPayment (filters, 0, 10);

	JSONArray results = searchResult.getJSONObject("response").getJSONArray("results");
%>
<%=results%>