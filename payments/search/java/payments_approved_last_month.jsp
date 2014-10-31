<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	Map<String, Object> filters = new HashMap<String, Object> ();

	filters.put("status", "approved");
	filters.put("operation_type", "regular_payment");
	filters.put("range", "date_created");
	filters.put("begin_date", "NOW-1MONTH");
	filters.put("end_date", "NOW");

	JSONObject searchResult = mp.searchPayment (filters);

	JSONArray results = searchResult.getJSONObject("response").getJSONArray("results");
%>
<%=results%>