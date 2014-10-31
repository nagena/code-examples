<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>

<%
	MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

	Map<String, Object> filters = new HashMap<String, Object> ();

	filters.put("external_reference", "ext1425");

	JSONObject searchResult = mp.searchPayment (filters);

	JSONArray results = searchResult.getJSONObject("response").getJSONArray("results");
%>
<%=results%>