<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

String accessToken = mp.getAccessToken();

Response.Write(accessToken);
%>