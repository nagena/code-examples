<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("external_reference", "ext1425");
      
Hashtable searchResult = mp.searchPayment (filters);

Response.Write (searchResult);
%>