<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

mp.sandboxMode(true);
...
%>