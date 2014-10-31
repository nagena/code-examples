<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("status", "approved");
filters.Add("operation_type", "regular_payment");
filters.Add("range", "date_created");
filters.Add("begin_date", "NOW-1MONTH");
filters.Add("end_date", "NOW");
      
Hashtable searchResult = mp.searchPayment (filters);

Response.Write (searchResult);
%>