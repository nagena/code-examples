<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Hashtable payment_info = mp.getPaymentInfo(Request["id"]);

if ((int)payment_info["status"] == 200) {
	Response.Write (payment_info["response"]);
}
%>