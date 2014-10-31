<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("status", "approved");
      
Hashtable searchResult = mp.searchPayment (filters, 0, 10);

Response.Write (searchResult);
%>