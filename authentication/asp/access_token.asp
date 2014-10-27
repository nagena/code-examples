<!--#include file="lib\mercadopago.asp"-->

<%
	Dim mp
	Dim accessToken
	
	Set mp = new Mercadopago
	
	mp.construct "CLIENT_ID", "CLIENT_SECRET"

	accessToken = mp.get_access_token()

	Response.write (accessToken)
%>