<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("payment_type", "credit_card");
filters.Add("operation_type", "regular_payment");
filters.Add("range", "date_created");
filters.Add("begin_date", "2014-10-21T00:00:00Z");
filters.Add("end_date", "2014-10-25T24:00:00Z");
      
Hashtable searchResult = mp.searchPayment (filters);

Response.Write (searchResult);
%>